# Lab5实验报告

## 流水线CPU搭建

流水线CPU可以分为5个模块:

1. **IF, Inst Fetch**，从内存中获取指令
2. **ID, Inst Decode**，读取寄存器、指令译码
3. **EX, Execute**，计算操作结果和/或地址
4. **MEM, Memory**，内存存取
5. **WB, Write Back**，将结果写回寄存器的话）

为了避免structure hazard, 需要在各模块间加入寄存器组存储PC值，控制信号，寄存器等。但在本次实验中，因为只是采用stall机制处理冒险，而不是forwarding, 所以只有ID阶段需要存储全部32个通用寄存器的值。

### IF模块

输入:PCSrc控制信号和PC_in

输出: 接下来要执行的指令地址PC_out

根据PCSrc信号，选择对应的PC输出值。如果PCSrc=1就输出PC_in(代表跳转指令)，否则就输出PC+4

```verilog
always @(posedge clk_IF or posedge rst_IF) begin
    if(rst_IF) begin
      PC_out_IF <= 32'b0;
    end else if(en_IF) begin
      PC_out_IF <= PCSrc?PC_in_IF:PC_out_IF+4;
    end
  end
```

两个模块间需要寄存器组存储相关信号的值。这些模块的输入输出模式比较固定。即当`en`为1时把输入写入寄存器，`rst=1`时清零。可以总结为如下模板:

```verilog
module XX_reg_YY(
	input clk,
    input rst,
    input en
    input signal_in,//并行输入
    output reg signal_out//设置为reg类型
)
    always @(posedge clk or posedge rst) begin
        if(rst) signal_out<=0;
        else if(en) signal_out<=signal_in;
    end
endmodule
```

比如IF_reg_ID模块如下（其他模块的代码略）

```verilog
module IF_reg_ID(
  input clk_IFID,
  input rst_IFID,
  input en_IFID,
  input [31:0]PC_in_IFID,
  input [31:0]inst_in_IFID,
  output reg [31:0]PC_out_IFID,
  output reg [31:0]inst_out_IFID
);
  always @(posedge clk_IFID or posedge rst_IFID) begin
    if (rst_IFID) begin
      PC_out_IFID<=32'b0;
      inst_out_IFID<=32'b0;
    end
    else if (en_IFID) begin
       PC_out_IFID<=PC_in_IFID;
       inst_out_IFID<=inst_in_IFID;
    end
  end
endmodule
```

在SOC系统的顶层模块，我们将CPU中引出的PC_out接到ROM上，进而获得指令地址返回给CPU

### ID模块

输入: 从ID模块输入的指令`Inst_in`   从WB模块输入的写回信号egWrite_in_ID和Wt_data_ID

输出: 向EX输出相关控制信号(如Branch,BranchN,ALUop等)，rs1和rs2两个操作数的值

对于输入的指令`Inst_in`，我们调用Lab4中已经编写好的SCPU_ctrl模块，得到相关的控制信号并输出给EX。同时调用Lab4中的ImmGen模块，生成指令中的立即数并输出给EX

同时我们还需要调用Lab4中的寄存器组。它有2个作用

- 首先，要根据当前指令Rs1_addr和Rs2_addr 将对应的值Rs1_out,Rs2_out取出, 并输出到EX模块  用于ALU计算
- 其次，要根据WB模块的输出，将值写回寄存器。因此RegWrite_in_ID和Wt_data_ID是从WB模块接回来的。用于在下一个周期更新寄存器的值。

寄存器堆的Double Bump机制：前半个时钟写，后半个 时钟读:   但是我们regfile里面写的是clk的上升沿更新，所以要把寄存器堆的clk取反

```verilog
wire [2:0] ImmSel;//链接SCPU_ctrl和Immsel
  wire tmp_cpu_mio;
assign Rd_addr_out_ID=Inst_in_ID[11:7];//输出寄存器rd
  SCPU_ctrl u1(
      .OPcode(Inst_in_ID[6:2]),//将ID中获得的指令Inst_in接入
    .Fun3(Inst_in_ID[14:12]),
    .Fun7(Inst_in_ID[30]),
    .MIO_ready(1'b0),
    .ImmSel(ImmSel),
      .ALUSrc_B(ALUSrc_B_ID),//输出相关的控制信号到EX
    .MemtoReg(MemtoReg_ID),
    .Jump(Jump_ID),
    .Branch(Branch_ID),
    .BranchN(BranchN_ID),
    .RegWrite(RegWrite_out_ID),
    .MemRW(MemRW_ID),
    .ALU_Control(ALU_control_ID),
    .CPU_MIO(tmp_cpu_mio)
  );
  
  Regfile   u2(
      .clk(~clk_ID),//注意需要取反，表示下降沿更新，原因已经解释过
    .rst(rst_ID),
      .RegWrite(RegWrite_in_ID),//RegWrite和Wt_data是从WB模块接回来的
      .Rs1_addr(Inst_in_ID[19:15]),//根据指令输入
    .Rs2_addr(Inst_in_ID[24:20]),
    .Wt_addr(Rd_addr_ID),
    .Wt_data(Wt_data_ID),
    .Rs1_data(Rs1_out_ID),
    .Rs2_data(Rs2_out_ID),
    `RegFile_Regs_Arguments//VGA显示用
  );
  ImmGen u3(
    .ImmSel(ImmSel),
    .inst_field(Inst_in_ID),
    .Imm_out(Imm_out_ID)
  );
```



### EX模块



这一部分类似Lab4中DataPath的部分

- 调用ALU进行操作数的计算 （对应Lab4数据通路左下角的ALU

- 进行新PC的计算。其中一个是正常的下一条指令+4，一个是PC+imm,用于`beq,jal`指令 （对应Lab4数据通路右上方的2个加法器

    这里不需要显式调用加法模块，只需要用assign语句即可

```verilog
  assign PC4_out_EX = PC_in_EX + 4;//下一条指令
  assign PC_out_EX = PC_in_EX + Imm_in_EX;//跳转指令
  assign Rs2_out_EX = Rs2_in_EX;
  
ALU u1(//调用ALU
    .A(Rs1_in_EX),
    .B(ALUSrc_B_in_EX ? Imm_in_EX : Rs2_in_EX),//根据ALUSrc_B选择立即数还是寄存器输入
    .control(ALU_control_in_EX),
    .C(ALU_out_EX),//!is reg
    .zero(zero_out_EX)
  );
```



### MEM模块



```verilog
module Pipeline_Mem(zero_in_Mem, Branch_in_Mem, BranchN_in_Mem, 
  Jump_in_Mem, PCSrc);
  input zero_in_Mem;
  input Branch_in_Mem;
  input BranchN_in_Mem;
  input [1:0 ]Jump_in_Mem;//Jump[1] is jalr, Jump[0] is jal
  output PCSrc;
  assign PCSrc=(Branch_in_Mem & zero_in_Mem) | (BranchN_in_Mem & ~zero_in_Mem) | (Jump_in_Mem!=2'b00);
endmodule
```

根据ALU输出结果和控制信号，判断分支和跳转是否发生，生成PCSrc选择控制PC值 

由于采用的是lab4-3的控制模块，这里的Jump是2位的

RAM放在顶层模块中，这里不显示

### WB模块

```verilog
module Pipeline_WB(PC4_in_WB, ALU_in_WB, DMem_data_WB, 
  MemtoReg_in_WB, Data_out_WB);

  input [31:0]PC4_in_WB;
  input [31:0]ALU_in_WB;
  input [31:0]DMem_data_WB;
  input [1:0]MemtoReg_in_WB;
  output [31:0]Data_out_WB;
  assign Data_out_WB = (MemtoReg_in_WB==2'b00) ? ALU_in_WB : ((MemtoReg_in_WB==2'b01) ? DMem_data_WB : PC4_in_WB);
  //不考虑lui指令
endmodule
```

本质是一个mux.

- 当MemtoReg信号为0时将ALU结果写回（对应算术指令)
- 当MemtoReg信号为1时将内存输出写回(对应load)
- 当MemtoReg信号为2时将PC+4写回（对应jal)

## 采用Stall机制处理冒险

### 修改寄存器模块

为了实现流水线stall, 需要修改IF/ID和ID/EX模块，分别传入两个信号NOP_IFID和NOP_IDEX. 当NOP_IFID=1时代表在IF/ID之间插入一个nop指令。因此PC输出要变成0，指令输出要变成00000013(对应`addi x0,x0,0`) , 同时增加一个输出信号`valid_IFID`用于调试

```verilog
always @(posedge clk_IFID or posedge rst_IFID) begin//IF_reg_ID模块
    if (rst_IFID) begin
      PC_out_IFID<=32'b0;
      inst_out_IFID<=32'b0;
      valid_IFID<=0;
    end
    else if(NOP_IFID) begin//插入nop情况
        PC_out_IFID<=32'h00000000;//PC=0,stall
        inst_out_IFID<=32'h00000013;//nop
        valid_IFID<=0;//valid=0
    end 
    else if(en_IFID) begin//正常情况
        PC_out_IFID<=PC_in_IFID;
        inst_out_IFID<=inst_in_IFID;
        valid_IFID<=1;
      end
  end
```

对于`IF_reg_ID`模块也同理，但输出的控制信号也要修改为0:

```verilog
if(NOP_IDEX) begin
    // If NOP, set output registers to 0
    PC_out_IDEX <= 32'h00000000;
    valid_out_IDEX <= 0;
    Rd_addr_out_IDEX <= 5'b0;
    Rs1_out_IDEX <= 32'b0;
    Rs2_out_IDEX <= 32'b0;
    Imm_out_IDEX <= 32'b0;
    ALUSrc_B_out_IDEX <= 1'b0;
    ALU_control_out_IDEX <= 4'b0010;//add?
    Branch_out_IDEX <= 1'b0;
    BranchN_out_IDEX <= 1'b0;
    MemRW_out_IDEX <= 1'b0;
    Jump_out_IDEX <= 2'b0;
    MemtoReg_out_IDEX <= 2'b0;
    RegWrite_out_IDEX <= 1'b0;
end
```

### Stall模块

接着，需要添加stall模块。该模块接受各个阶段(ID,EX,Mem)的寄存器地址和控制信号。首先，需要根据不同阶段的rd,rs1,rs2地址判断是否存在数据冒险。 然后还要根据各阶段的Branch等控制信号判断是否存在控制冒险。因为控制冒险分跳转/不跳转有2种情况，所以还要接入PCSrc. s 输出是IF,IF/ID,ID/EX的使能信号和nop控制信号

```verilog
module stall(
input rst_stall, //复位
input RegWrite_out_IDEX, //执行阶段寄存器写控制
input [4:0]Rd_addr_out_IDEX, //执行阶段寄存器写地址
input RegWrite_out_EXMem, //访存阶段寄存器写控制
input [4:0]Rd_addr_out_EXMem, //访存阶段寄存器写地址
input [4:0]Rs1_addr_ID, //译码阶段寄存器读地址1
input [4:0]Rs2_addr_ID, //译码阶段寄存器读地址2
input Rs1_used, //Rs1被使用
input Rs2_used, //Rs2被使用
input Branch_ID, //译码阶段beq
input BranchN_ID, //译码阶段bne
input Jump_ID, //译码阶段jal
input Branch_out_IDEX, //执行阶段beq
input BranchN_out_IDEX, //执行阶段bne
input Jump_out_IDEX, //执行阶段jal
input Branch_out_EXMem, //访存阶段beq
input BranchN_out_EXMem, //访存阶段bne
input Jump_out_EXMem, //访存阶段jal
input PCSrc,//用于跳或不跳的条件判断
output en_IF, //流水线寄存器的使能及NOP信号
output en_IFID,
output NOP_IFID,
output NOP_IDEX
    );
```



#### Data Hazard

```verilog
assign data_stall =
        (RegWrite_out_EXMem && Rs1_used && (Rs1_addr_ID == Rd_addr_out_EXMem) && (Rs1_addr_ID!=0))||
        (RegWrite_out_EXMem && Rs2_used && (Rs2_addr_ID == Rd_addr_out_EXMem) && (Rs2_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs1_used && (Rs1_addr_ID == Rd_addr_out_IDEX) && (Rs1_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs2_used && (Rs2_addr_ID == Rd_addr_out_IDEX) && (Rs2_addr_ID!=0));
```

当data_stall=1时，en_IF=0, en_IFID=0, (避免后面的指令进来)  然后NOP_IDEX=1。这是因为：

触发冒险的指令现在已经完成了ID阶段，即将进入EX阶段。

1. 如果是上上条指令和当前指令出现数据冒险，即MEM阶段的指令Rd和当前ID阶段输出的rs1或rs2相同(对应上面代码前2行)。那现在ID阶段的指令就不能在下一个周期进入EX阶段。所以NOP_IDEX=1, 插入1个nop, 。

2. 如果上一条指令和当前指令出现数据冒险，EX阶段的指令Rd和当前ID阶段的rs1或rs2相同(对应上面代码第3,4行的条件)，同样要stall,插入一个nop.  接着EX阶段的指令进入MEM，同情况1,又插入一个nop. 总共插入2个nop

通过分析，这样的判断能够解决数据冒险

#### Control Hazard

出现控制冒险的原因是：跳转指令执行之后，下一条指令应该等待其执行完成才知道其目标地址。但是在流水线中, 跳转指令还未完成时，下面的指令便会顺序的开始执行。因此需要把下面两条指令变成nop, 等待新的PC目标地址计算完成。

![image-20240603093352380](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\image-20240603093352380.png)

因此要在控制指令后面插入两个nop 指令。 当控制指令处于ID阶段，把下一条指令(现在还在IF) 前面插入1个nop, ，故NOP_IFID=1, 同时暂停IF,en_IF=1。 下一个周期，控制指令进入EX阶段, 那么还要插入一个nop, 故NOP_IDEX=1.  (其实NOP_IFID=1也可以)。  当控制指令进入WB阶段，根据跳转和不跳转有2种情况:

- 不跳转(PCSrc=0)，顺序执行下一条指令，把en_IF和en_IFID设为1, 下一条指令(PC+4)从IF直接进入ID阶段，正常执行 
- 跳转(PCSrc=1), 需要把新的PC值写入IF, 但此时IF里还是旧的PC+4.  因此要再stall一个周期，等新的PC值写入IF之后，再正常执行。此时要把NOP_IFID设为1.

总结上面两种情况，完整的stall模块如下

```verilog
      assign data_stall =
        (RegWrite_out_EXMem && Rs1_used && (Rs1_addr_ID == Rd_addr_out_EXMem) && (Rs1_addr_ID!=0))||
        (RegWrite_out_EXMem && Rs2_used && (Rs2_addr_ID == Rd_addr_out_EXMem) && (Rs2_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs1_used && (Rs1_addr_ID == Rd_addr_out_IDEX) && (Rs1_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs2_used && (Rs2_addr_ID == Rd_addr_out_IDEX) && (Rs2_addr_ID!=0));
      //数据冒险的判断
      //分别检测控制指令处于ID,EX,MEM阶段
      assign ctrl_ID=Branch_ID || BranchN_ID || Jump_ID;
      assign ctrl_EX=Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX;
      assign ctrl_Mem=Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem;
      assign control_stall = ctrl_ID || ctrl_EX || ctrl_Mem;
      assign en_IF = !(data_stall||ctrl_EX||ctrl_ID);
      assign en_IFID = !(data_stall||ctrl_EX||ctrl_ID);
      assign NOP_IDEX=data_stall||ctrl_EX;
      assign NOP_IFID =!data_stall&&(ctrl_ID||(ctrl_Mem&&PCSrc));//对应跳转的情况
```



## 仿真结果

### 数据冒险 

代码

```assembly
PC	Machine Code	Basic Code	Original Code
0x10	0x00802283	lw x5 8(x0)	lw x5, 0x8(x0) # x5 = 0x8000_0000
0x14	0x00128333	add x6 x5 x1	add x6, x5, x1 # x6 = 0x8000_0001
```

对应波形图

![image-20240603100357466](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\image-20240603100357466.png)

当lw在EX阶段(PC_out_EX=10),add在ID阶段(PC_out_ID=14)的时候,触发data_stall。可以看到下面的信号变成1. 然后NOP_IDEX=1，所以之后2个周期, PC_in_EX都是0(代表插入2个nop).  2个周期后data_stall解除, add指令进入EX阶段,PC=14.      一个半周期之后(因为MEM阶段占1个周期,  WB阶段寄存器组是下降沿更新，前半个时钟写，后半个时钟读), 可以看到x6= 0x8000_0001

### 数据冒险+控制冒险，不跳转

代码

```assembly
0x14	0x00128333	add x6 x5 x1	add x6, x5, x1 # x6 = 0x8000_0001
0x18	0x0020C3B3	xor x7 x1 x2	xor x7, x1, x2 # x7 = 0
0x1c	0x04628263	beq x5 x6 68	beq x5, x6, error # 不跳转
0x20	0x40708433	sub x8 x1 x7	sub x8, x1, x7 # x8 = 1
```

![image-20240603101206278](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\image-20240603101206278.png)

见图中红框的部分。  首先因为0x1c的beq指令需要读x6, 而0x14的add指令写了x6，所以出现数据冒险。因为add指令此时已经进入MEM阶段而beq还在ID阶段，所以只stall一个周期，插入一个nop(图中PC_in_EX有一个周期为0)

之后当PC_in_EX=0x1c 出现控制冒险, 需要stall 2个周期，对应ID和EX的PC出现有2个周期为0.  之后进入MEM阶段IF,ID的限制解除, PC+4=0x20 读进ID, 继续执行下一条指令sub.  x8=1

### 控制冒险，跳转

![image-20240603101206278](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\image-20240603101206278.png)

见图中黄色框的部分, 0x2c的bne指令触发控制冒险, 先stall了2个周期。但是这条指令需要跳转到test1 0x34,而不是PC+4的0x30.  故还需要再stall一个周期，把新的PC_in_IF=0x34 写入IF.  所以一共插入了3个nop.

如果不插入第三个nop的话，就会执行0x30的指令

```assembly

0x2c	0x00629463	bne x5 x6 8	bne x5, x6, test1 # jump to test1
0x30	0x03000F6F	jal x30 48	jal x30, error # x30 = pc + 4 则出错
test1:
0x34	0x00402503	lw x10 4(x0)	lw x10, 0x4(x0) # x10 = 0x8000_0001
0x38	0x0082D5B3	srl x11 x5 x8	srl x11, x5, x8 # x11 = 0x4000_0000

```



## 上板测试结果



数据冒险的例子:  ID阶段PC=1c, 此时触发数据冒险，发生data stall (对应仿真中红框部分)    接下来一个周期，EX阶段PC=0. 

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_183902.381.jpg)

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_183908.519.jpg)

接下来发生控制冒险  ID的PC=0  持续2个周期（因为不跳转)    一开始是ID=0

![VID_20240606_194247.mp4_20240607_183911.406](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_183911.406.jpg)

接下来EX的PC=0  而PC=0x20   

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_183914.063.jpg)

之后中断结束，ID阶段的PC变成下一条指令24，开始正常运行

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_185519.885.jpg)

PC=30的时候发生控制冒险(因为是跳转)，所以stall 3个周期

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_183923.925.jpg)

![VID_20240606_194247.mp4_20240607_185650.297](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_185650.297.jpg)

![VID_20240606_194247.mp4_20240607_185700.985](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_185700.985.jpg)

最终运行结果，发现各寄存器的值都和参考代码相同

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab5.assets\VID_20240606_194247.mp4_20240607_184005.002.jpg)

## 思考题

>  本实验中指令跳转的预测发生在MEM阶段，这会向流水线中插入多 个气泡从而影响流水线的性能。能否将指令跳转的预测提前？提前后 相应的Stall机制又应该怎么设计？ 

可以，可以在EX阶段就根据取出的寄存器值进行比较，进行预测。提前后  只需要stall 2个周期而不是3个周期

> 若流水线中加入了Forwarding机制，是不是就不需要Stall机制了？（ 向流水线中插入气泡）若不是请给出实例

不是，如下面的代码

```assembly
ld x2,0(x1)
add x3,x2,5
```

ld指令MEM阶段结束后才能知道x2的值, 同时add指令EX阶段开始前就需要x2的值。。所以forwarding不能解决这个问题，必须要stall 1个周期

> 寄存器堆需要怎样修改？

流水线中的寄存器堆需要前半个时钟写，后半个时钟读:   但是我们regfile里面写的是clk的上升沿更新，所以要把寄存器堆传入的clk取反