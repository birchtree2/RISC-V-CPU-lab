# Lab4 实验报告

## CPU数据通路和控制器的实现

### 关键代码分析

控制器的关键是，根据输入的指令生成控制信号。每种控制信号的含义和设置如下:

- `ALUSrc_B`: ALU的第二个操作数来源 
  - 0:寄存器 (R型ALU指令，如`add`)
  - 1: 立即数 (I型ALU指令，如`addi`)(和`lw,sw,jalr`,因为这些指令的寻址方法是寄存器+立即数,需要调用ALU计算地址)
- `MemtoReg`: 写回寄存器的数据选择控制 
  - 00:ALU结果 (所有ALU指令`add`/`addi`)等
  - 01:内存数据 (`sw`)
  - 10:PC+4 (`jal`) 
  - 11: 本实验中暂时不需要设置,下一部分中`lui`需要用到，表示把立即数写入寄存器
- `Jump`: 跳转控制 0:无跳转 1:jal 
- `Branch`: beq分支控制 0:不跳转 1:执行跳转
- `RegWrite`: 寄存器写使能 
  - 0:禁止写入 
  - 1:允许写入 (所有ALU指令`add`/`addi`等,`lw`,以及下一部分中添加的`lui,jalr`)
- `MemRW`: 存储器读写使能 0:不允许写 1:允许写(只有`sw`需要设为1)
- `ALU_Control`: ALU控制 指令扩展，具体值取决于ALU操作类型
- `CPU_MIO`: 本实验中不需要设置




```verilog
SCPU_ctrl.v:
reg [1:0]ALUop;
`define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW, Branch ,Jump,ALUop, ImmSel}
parameter addr = 2'b00,subeq = 2'b01,alu = 2'b10,alui = 2'b11;
  always @*begin
      case(OPcode)
      5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,1'b0,2'b00,alu,3'b000}; end //ALU R
      5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,1'b0,2'b00,addr,3'b000}; end //load I
      5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,1'b0,2'b00,addr,3'b001}; end //store S
      5'b11000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b1,2'b00,subeq,3'b010}; end //beq SB
      5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,1'b0,2'b01,addr,3'b011}; end //jal UJ
      5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,1'b0,2'b00,alui,3'b000}; end //ALU+imm I
      endcase
  end

wire [3:0]Fun;//记得定义Fun
assign Fun = {Fun3,Fun7};
always @* begin
    case(ALUop)
        addr: ALU_Control = 4'b0010; // add计算地址
        subeq: ALU_Control = 4'b0110; // sub比较条件
        alu: begin // ALU无立即数
            case(Fun)
                4'b0000: ALU_Control = 4'b0010 ; //add
                // ...
        end
        alui: begin // ALUi有立即数
            case(Fun3) // 因为有些的Fun7是n.a(0/1)所以只用Fun3,个别指令如sra和srl需要Fun7
        end
    endcase
end
```

### 数据通路实现

实例化`ImmGen,Regfile,Reg32(PC),ALU` 几个子模块。注意ALU要根据ALUSrc进行判断，Regfile要取出指令中对应位置的寄存器编号

```verilog
ImmGen imm(
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    .Imm_out(Imm_out)
);
Regfile Reg(
    .clk(clk),
    .rst(rst),
    .Rs1_addr(inst_field[19:15]),//从指令中取rs1编号
    .Rs2_addr(inst_field[24:20]),//rs2
    .Wt_addr(inst_field[11:7]),//rd
    .Wt_data(Wt_data),
    .RegWrite(RegWrite),//module输入
    .Rs1_data(Rs1_data),
    .Rs2_data(Rs2_data),
    `RegFile_Regs_Arguments//调试用
);
 ALU ALU(
    .A(Rs1_data),
     .B(ALUSrc_B==1?Imm_out:Rs2_data),//注意根据ALUSrc,选择是用立即数还是第二个寄存器
    .control(ALU_Control),
    .C(ALU_out),
    .zero(ALU_zero)
  );
```



<img src="https://xuan-insr.github.io/assets/1654671880110-a3a3e4f1-ba35-4a91-810e-895996d1025c.png" alt="image.png" style="zoom:50%;" />

PC跳转的实现：

 直接利用verilog的`assign` （对应图中上方绿色部分的2个加法器)，利用if语句实现不同情况的跳转

```verilog
wire [31:0] PC_next;//PC+4 下一条指令
wire [31:0] PC_add_imm;//beq/jal 跳转
assign PC_next=PC_out+4;
assign PC_add_imm=PC_out+Imm_out;
always @(*) begin
    if(Jump!=2'b0) begin
        if(Jump==2'b01) PC_in=PC_add_imm;//jal
        if(Jump==2'b10) PC_in=ALU_out;//jalr
    end
    else if(BranchN) PC_in=rs1_rs2_eq?PC_next:PC_add_imm;//bne 注意此时Branch也为1 
    else if(Branch) PC_in=rs1_rs2_eq?PC_add_imm:PC_next;//beq 
    else PC_in=PC_next;
 end
```

写入寄存器组的数据(对应图中最右侧的MUX)

```verilog
reg [31:0] Wt_data;//选择写入regfile的值
wire [31:0] Rs1_data,Rs2_data;//reg file的输出
assign rs1_rs2_eq = (Rs1_data==Rs2_data);//beq
always @ (*) begin
    case(MemtoReg)
        2'b00: Wt_data = ALU_out;
        2'b01: Wt_data = Data_in;
        2'b10: Wt_data = PC_next;
        2'b11: Wt_data = Imm_out;//lui rd=imm
    endcase
end
```




## CPU指令扩展

### 关键代码分析

#### 控制信号扩展：
- `MemtoReg` 增加信号 11:立即数(lui)
- `ImmSel`需要变成3位以支持`lui`指令的立即数生成 000:s 001:sw 010:beq 011:jal 100:lui
- `Jump` 需要变成2位以支持`jalr`指令的跳转 00:无跳转 01:jal 10:jalr
- 增加`BranchN`信号，用于支持`bne`指令的跳转 在Branch=1时,BranchN=0则执行beq,=1则执行bne
- `ALU_Control`需要变成4位，同时修改ALU的代码，以支持`sltu`,`sll`,`srl`,`sra`



对应的指令decode代码增加
- 对于jalr:  MemtoReg=10(因为要把原来的PC+4写入rd)  JUMP=1, Regwrite=1
- 对于lui:  MemtoReg=11(因为要立即数写入rd),Regwrite=1 

```verilog
//SCPU_ctrl.v:
//在OPcode的case里面增加:
5'b11001: begin `CPU_ctrl_signals={1'b1,2'b10,1'b1,1'b0,1'b0,2'b10,addr,3'b000}; end //jalr I
// MemtoReg=10(因为要写入PC+4) RegWrite=1  JUMP=1  ALUSrc_B=1,因为PC=reg+imm
5'b01101: begin `CPU_ctrl_signals={1'b0,2'b11,1'b1,1'b0,1'b0,2'b00,addr,3'b100}; end //lui U

//在ALU_Control的case(Fun3)里面增加:
3'b101: ALU_Control = Fun7?4'b1001:4'b0101 ; //srai/srli
```

#### DataPath扩展
- 需要在计算PC时增加对branchN的判断
- 需要修改写入寄存器的Mux

```verilog
//DataPath.v
always @ (*) begin
    case(MemtoReg)
      2'b00: Wt_data = ALU_out;
      2'b01: Wt_data = Data_in;
      2'b10: Wt_data = PC_next;
      2'b11: Wt_data = Imm_out;//lui rd=imm
    endcase
  end
always @(*) begin
    if(Jump!=2'b0) begin
        if(Jump==2'b01) PC_in=PC_add_imm;//jal
        if(Jump==2'b10) PC_in=ALU_out;//jalr
    end
    else if(BranchN) PC_in=rs1_rs2_eq?PC_next:PC_add_imm;//bne 注意此时Branch也为1 
    else if(Branch) PC_in=rs1_rs2_eq?PC_add_imm:PC_next;//beq 
    else PC_in=PC_next;
end
```

#### ALU和ImmGen

对于ALU 需要增加:
- 区分有符号和无符号的比较,`slt`是有符号的，但是在verilog中输入的`wire`A,B默认是无符号的,需要使用`$signed(A)<$signed(B)`进行有符号数比较。同理`sltu` 是无符号的,所以不要加`$signed `
- 区分逻辑右移和算术右移：`sra`是算术右移，补得是符号位。故需要先判断A的最高位，如果是1，需要先取反，然后逻辑右移，再取反回来，这样右边补的就是1了

```verilog
4'b0111: C= ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
//slt有符号比较  $signed
4'b1000: C=A<<B[4:0];//sll 无符号左移
4'b1001: begin//sra 有符号右移 
if(A[31]==1'b0) C=A>>B[4:0];
else C=~((~A)>>B[4:0]);//先把A取反 做逻辑右移  再取反回来，右边补的就变成了1
end
4'b1010: C=(A<B)?32'b1:32'b0;//sltu 无符号比较
```

ImmGen需要加入U型指令的立即数
```verilog
3'b100:Imm_out = {inst_field[31:12],12'b0}; //lui(u)
```
### 仿真结果分析

以前几条指令为例

```assembly
PC	Machine Code	Basic Code	Original Code
0x0	0x00007293	andi x5 x0 0	andi x5, x0, 0x0 # x5 = 0x0000_0000
0x4	0x00007313	andi x6 x0 0	andi x6, x0, 0x0 # x6 = 0x0000_0000
0x8	0x88888137	lui x2 559240	lui x2, 0x88888 # x2 = 0x8888_8000
0xc	0x00832183	lw x3 8(x6)	lw x3, 0x8(x6) # x3 = 0x8000_0000
0x10	0x0032A223	sw x3 4(x5)	sw x3, 0x4(x5) # mem[1] = 0x8000_0000
0x14	0x00402083	lw x1 4(x0)	lw x1, 0x4(x0) # x1 = 0x8000_0000
0x18	0x01C02383	lw x7 28(x0)	lw x7, 0x1c(x0) # x7 = 0x8000_0000
0x1c	0x00338A63	beq x7 x3 20	beq x7, x3, cmd_add # jump to cmd_add
```

![image-20240508170357050](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240508170357050.png)

图中PC为0,4,8...每次+4

前两行都是andi, OPCode=00100, 有立即数所以ALUSrc_B=1,MemtoReg=00,ALU_Control=0对应AND运算。

第三行是lui, OPCode=01101, 加载立即数，所以ALUSrc_B=1, MemtoReg=11, ALU_Control设置为任意值都可（因为不经过ALU）

第四行是lw, OPCode=00000, lw从内存读取数据到寄存器，因此ALUSrc_B=0, MemtoReg=01, MemRW=1,ALU_Control=2对应ADD运算(因为要计算地址reg+imm)

第五行是sw, OPCode=10100, sw将数据从寄存器写入内存，所以ALUSrc_B=0, RegWrite=0，MemRW=0, ALU_Control对应ADD

第6,7行lw同上。

第八行是beq, OPCode=11000, beq比较并进行跳转，所以ALUSrc_B=0, MemRW=0，Branch=1, ALU_Control=6对应比较操作。

### 上板测试结果

运行完所有指令，回到初始PC=0时的结果：

![image-20240429132636386](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240429132636386.png)

可以看到每个寄存器设置的值都与test.S中的相同

## CPU指令中断

### 关键代码分析

对控制器模块,添加

- 输入：将实验文档中的`Fun_ecall,Fun_mret`合并，添加输入`syscall`将`inst_in[31:20]`作为中断类型传入
- 输出: 直接用一个2位的输出`[1:0] inttype` 代表解析操作码得到的3种中断类型  01:ill 10:ecall 11:mret

中断的OPcode是`5'b11100`,由此可以添加译码模块:

```verilog
5'b11100: begin//system call
        case(syscall)
          //ecall: PPT第19页
          12'h000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b0,2'b00,2'b00,3'b000,2'b10,1'b0}; end
          //mret 
          12'h302: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b0,2'b00,2'b00,3'b000,2'b11,1'b0}; end
          default: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b0,2'b00,2'b00,3'b000,2'b01,1'b0}; end
        endcase
      end
```

然后在其他指令的译码部分，要把`default:`的部分改成illegal inst异常的控制信号，代表非法指令. 以条件分支指令为例:

```verilog
case (Fun3) 
          3'b000: begin  //beq 
            `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b1,2'b00,subeq,3'b010,2'b00,1'b0};
          end 
          3'b001: begin //bne
            `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b1,2'b00,subeq,3'b010,2'b00,1'b1};
          end 
          default: begin  //ill_inst  如bge触发非法指令
            `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b0,2'b00,2'b00,3'b000,2'b01,1'b0}; 
          end
        endcase 
```

在Datapath中，要添加寄存器`mepc`，用于记录触发中断后要返回的位置。可以直接把PC写成verilog中的`reg`类型，而不是调用`Reg32`模块。注意外部中断是电平信号，只响应一次，所以要在always块中写`posedge INT0`。 

同时，为了在一次中断的处理中不被再次打断，要增加一个`int_en`寄存器。在处理器复位后和正常运行时,`int_en=1`,表示可以触发中断。触发中断进入中断处理阶段后，要把`int_en=0`. 调用`mret`指令返回正常运行时,要把`int_en`重新置1。

```verilog
always @(posedge clk or posedge rst or posedge INT0) begin
    if(rst) begin
      mepc<=0;PC_out<=0;int_en<=1;//CPU复位时，MEPC=PC=0x0
    end
    else if(INT0&&int_en) begin//外部中断，mepc=PC+4 PC=0xC
      mepc<=PC_next;PC_out<=32'h0000000C;int_en<=0;
    end
    else if(inttype==2'b01&&int_en) begin //ill
      PC_out<=32'h00000004; mepc<=PC_next; int_en<=0;
    end
    else if(inttype==2'b10&&int_en) begin //ecall
      PC_out<=32'h00000008; mepc<=PC_next; int_en<=0;
    end
    else if(inttype==2'b11&&!int_en) begin //mret
      PC_out<=mepc; int_en<=1;
    end
```



### 仿真结果分析

非法指令异常:

1. PC=44时，执行`   bge  x5, x6, main   `触发illegal instruction中断.  mepc=48
2. 根据ARM固定中断向量PC跳转到4,接着读取PC=4的指令`jal x0,ill_init`
3. PC跳转到ill_init，执行2条指令 x15=1,x15=2

```asm
ill_init: 
    addi x15, x13, 0x1      # x15 = 0x0000_0001 
    addi x15, x15, 0x1      # x15 = 0x0000_0002
    mret 
```

4. 执行mret, 回到触发中断的指令(PC=44)的下一条指令,PC=48

![image-20240508114829602](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240508114829602.png)



外部触发中断:

```verilog
reg clk,rst,INT0;//模拟外部中断
    socTest uut(.clk(clk), .rst(rst),.INT0(INT0));
    reg [31:0] cnt;
    always begin
        cnt=cnt+1;
        clk=~clk;
        INT0=(cnt==32'd30)?1'b1:1'b0;
        #10;
    end
```



在testbench里面，手动设置INT0=1. 此时PC从84跳到12(0C).  接着跳到`int_init`. x16=0x6666666. 最后mret,返回下一条指令(PC=88)

```asm
int_init: 
    lui  x16, 0x66666        
    addi x16, x16, 0x666    # x16 = 0x6666_6666
    mret
```



![image-20240508115539311](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240508115539311.png)



ecall:

PC=116时指令`ecall`.  根据中断向量，PC跳到8，接着跳到eca_init,x17=0x88888002,最后返回PC=120

```asm
eca_init: 
    addi x17, x5, 0x1       # x17 = 0x8000_0001
    addi x17, x17,0x1       # x17 = 0x8888_8002
    mret
```



![image-20240508120011966](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240508120011966.png)

### 上板测试结果

#### 非法指令异常

PC=0x2c,触发ill_instruction异常

![image-20240509195257284](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509195257284.png)

PC跳转到0x4，MEPC=0x30

![image-20240509195321433](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509195321433.png)

跳到异常处理指令

![image-20240509195847513](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509195847513.png)

结束，返回原来的下一条指令`PC=0x30`  同时可以看到`a5=0x02`

![image-20240509200007640](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509200007640.png)

#### ecall

PC=74，调用ecall指令`inst:0x73`

![image-20240509201150535](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509201150535.png)

![image-20240509201217159](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509201217159.png)

跳到PC=8,接着跳到指令

![image-20240509201244452](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509201244452.png)

最后返回mepc中存储的值`0x78`  同时可以看到a7=0x80000002

![image-20240509201331613](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509201331613.png)

#### 外部中断

接着PC=0xc0时，将SW设为1，触发外部中断INT0,跳到0x0c

![image-20240509200117599](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509200117599.png)

返回c4  同时可以看到x16=0x66666666

![image-20240509200920907](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240509200920907.png)

## 思考题



> 指令扩展时控制器用二级译码设计存在什么问题？ 

- 需要2个译码阶段，导致指令执行的延迟增加。
- 二级译码可能需要更多的硬件资源，如额外的逻辑门和电路，这可能会增加CPU的面积和功耗。

> 设计bne指令需要增加控制信号吗？如果想要支持 bge, bgeu, blt, bltu指令又应该怎么设计？ 

​      增加一个`BranchN`控制信号，=1时代表是`bne`

​		如果要支持更多指令，可以把`Branch`信号设置为多位的，如000表示beq,001表示bne,010表示blt.  然后根据不同的指令设置ALU的操作码.

> 如果新增auipc指令，数据通路应该怎么拓展？控制器需要增加什么控制信号

`auipc  rd,imm`  代表`rd=PC+imm`

数据通路：在ALU的输入A前面增加一个MUX，将PC和寄存器组的输出连过去，使得PC能被加入ALU

控制信号: 增加信号`ALUSrcA`, 代表ALU的输入A  选择的是寄存器组还是PC寄存器.  在auipc指令执行时,ALUSrc_A=ALUSrc_B=1, RegWrite=1

```verilog
 ALU ALU(
     .A(ALUSrc_A==1?PC_out:Rs1_data),
     .B(ALUSrc_B==1?Imm_out:Rs2_data),//注意根据ALUSrc,选择是用立即数还是第二个寄存器
    .control(ALU_Control),
    .C(ALU_out),
    .zero(ALU_zero)
  );
```

