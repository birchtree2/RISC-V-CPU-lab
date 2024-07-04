# Lab3



## 1 实验流程

### 乘法器

使用V3版本  该版本只需要1个移位寄存器，同时把乘数和结果寄存器放在一起，实现了效率的提高。

1. 先建立一个64位的移位寄存器`product`存储乘积结果，低32位放乘数，另一个32位寄存器放被乘数。 开始循环:
2. 判断 Product 寄存器的最低位是否是 1：
3. 如果是，则将 Multiplicand 寄存器的值加到 Product 寄存器的左半部分里；

4. 右移 Product 寄存器；

5. 做满 32次则停止循环；

```verilog
module mul32(
input clk,
input rst,
input [31:0] multiplicand, //被乘数
input [31:0] multiplier, //乘数
input start, //计算开始
output reg[63:0] product, //积
output finish //计算完成
);
reg [5:0] cnt;
reg [31:0] x;
always @ (posedge start or posedge rst) begin
    if (rst) begin
        cnt <= 0;
        product <= 0;
    end
    if (start) begin
        cnt <= 0;
        x <= multiplicand;
        product <= {32'b0,multiplier}; //低32位放乘数
    end
end
always @ (posedge clk) begin
    if(start && !finish) begin
        if (cnt<32) begin
            //因为加法和移位是按顺序逐个进行的，所以应该使用阻塞赋值`=`而不是非阻塞赋值`<=`。
            //如果乘数这一位是1，就把被乘数加到左半部分
            product[63:32] = product[0]?(product[63:32]+x):product[63:32];
            product = {1'b0,product[63:1]};//右移一位
            cnt = cnt + 1;
        end
    end
end

assign finish=(cnt==6'd32)?1:0;
endmodule

```



### 除法器

使用V3版本  该版本将移位寄存器的个数减少了1个，同时把被除数和结果寄存器放在一起，实现了效率的提高。

1. 先建立一个64位的移位寄存器, 高32位是余数，低32位是商。先把被除数放在低32位。另一个32位寄存器放除数
2. 左移该移位寄存器
3. 用高32位的值-除数，如果结果<0, 就回退，同时在被除数末尾补0. 否则在被除数末尾补1. 接着继续左移
4. 到第32次，把余数再右移一位

```verilog
module div32(
input clk,
input rst,
input start,
input[31:0] dividend, //被除数
input[31:0] divisor, //除数
output [31:0] quotient, //商
output [31:0] remainder, //余数
output reg finish
    );
    reg [31:0] divisor_reg;
    reg [63:0] res;
    reg [5:0] cnt;
    always @ (posedge start or posedge rst) begin
        if (rst) begin
            cnt <= 0;
            res <= 0;
            finish <=0;
        end
        if (start) begin
            divisor_reg <= divisor;
            cnt <= 0;
            res <= {31'b0,dividend,1'b0}; //低32位放被除数,然后rem<<1
            finish <=0;
        end
    end
    always @ (posedge clk ) begin
        if(start && ! finish) begin
            res[63:32]=res[63:32]-divisor_reg;//Rem-=Div
            if(res[63]==1) begin //结果是负数，Rem<0
                res[63:32]=res[63:32]+divisor_reg;//回退
                res={res[62:0],1'b0};//shift left, quotient=0
            end
            else begin
                res={res[62:0],1'b1};//quotient 1
            end
            cnt=cnt+1;
            if(cnt==32) begin
                res[63:32] <= {1'b0,res[63:33]};//remainder shift right
                finish <= 1;
            end
        end
    end
    assign remainder=res[63:32];
    assign quotient=res[31:0];
endmodule
```

### 浮点加法器

1. 对齐指数(小指数对齐到大指数)，同时将小指数对应的尾数右移相应的尾数。
2. 根据符号位，尾数相加或相减。同时更新答案的符号位
3. 规格化，将尾数左移直到找到第一个1，获取新的指数

可利用时序逻辑控制状态，按顺序进行上面的3个操作。

```verilog
module float_add32(
input clk,
input rst,
input en, //开始标志
input[31:0] A, //被加数
input[31:0] B, //加数
output [31:0] result, //商
output reg fin //结束标志
    );
reg signa,signb,signr;//1
reg [7:0] expa,expb;
reg [7:0] expr;//8
reg [23:0] fra,frb;
reg [24:0] frr;//23+1
// reg [31:0] res;//最终合并的结果
reg [1:0] step;

always @ (posedge rst or posedge en) begin
    if (rst) begin
        fin <= 0;
        expa <= 0;
        expb <= 0;
        expr <= 0;
        fra <= 0;
        frb <= 0;
        frr <= 0;
        signa <=0; signb<=0;
    end
    if (en) begin
        expa <= A[30:23];
        expb <= B[30:23];
        fra <= {1'b1,A[22:0]};
        frb <= {1'b1,B[22:0]};
        expr <= expa;
        frr <= fra;
        fin <= 0;
        signa<=A[31]; signb<=B[31];
        step<=0;
    end
end


always @ (posedge clk) begin
    if (en && !fin) begin
        if(step==2'd0) begin
            //对齐指数
            if(expa>expb) begin
                expr<=expa;
                frb<=frb>>((expa-expb));
            end
            else begin
                expr<=expb;
                fra<=fra>>((expb-expa));
            end
            step<=2'd1;
        end //尾数相加或相减
        else if(step==2'd1) begin
            if(signa==signb) begin
                frr<=fra+frb;
                signr<=signa;
            end
            else begin
                frr <= fra>frb?fra-frb:frb-fra; //先求差的绝对值
                signr <= fra>frb?signa:signb; //符号取大的       
            end
            step<=2'd2;
        end
        else begin//获得新的指数
            if(frr[24]==1) begin
                //翻倍了 如1.001+1.100=10.101  变成1.0101
                expr<=expr+1;//指数+1
                frr<=(frr>>1);//右移1
                fin <= 1;
            end
            else if(frr[23]==1) begin
                fin<=1;
            end
            else begin //1.000-0.111=0.001, 不断左移直到找到第一个1
                expr<=expr-1;//指数-1
                frr[23:0]<={frr[22:0],1'b0};
            end
        end
    end
end
assign result={signr,expr,frr[22:0]};//去掉前面的1
endmodule

```



## 2  实验结果与分析

### 乘法器

![image-20240321161514037](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240321161514037.png)

放大过程:

![image-20240321161543810](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240321161543810.png)

仿真文件:

```verilog
initial begin
           clk = 0;
        rst = 1;
        start = 0;
        #10;
        rst = 0;
        start = 1; 
        multiplicand = 32'd2;
        multiplier = 32'd3;
        #500;
        start = 0; #5;//posedge start
        start = 1;//always 1 during calculation
        multiplicand = 32'd10;
        multiplier = 32'd8;
        #500;
        start = 0; #5;
        start = 1;
        multiplicand = 32'd9;
        multiplier = 32'd9;
        #500;
        start = 0; #5;
        start =1;
        multiplicand = 32'd50;
        multiplier = 32'd6;
        #500;
        start = 0; #5;
        start=1;
        multiplicand = 32'd6;
        multiplier = 32'd60;

    end
```



### 除法器

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab3\0I1ARNH72}Q]8T]6V{CQ6D1.png)

![img](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab3\6_8O${9JTG}B6]GOBJIR3HK.png)

```verilog
initial begin
    clk=0;
    rst=1;
    start=0;
    #10;

    start=1;
    divident = 32'd8;
    divisor = 32'd4;
    #335
    start=0;#5;
    start=1;
    divident = 32'd100; 
    divisor = 32'd10; 
    #335 
    start=0;#5;
    start=1;
    divident = 32'd9;
    divisor = 32'd4; 
    #335 
    start=0;#5;
    start=1;
    divident=32'd27;
    divisor=32'd6;
    #335;
end
```



### 浮点加法器

![image-20240322150054094](D:\ZJUlesson\24Spring\CO\实验报告\3220104988_杨培源_lab3\image-20240322150054094.png)

`c0a00000=-5`    `c0900000=-4.5`  `c1180000=-9.5`

`40a00000=+5`    `40900000=+4.5`  `41180000=+9.5`

![image-20240328200802305](C:\Users\19808\AppData\Roaming\Typora\typora-user-images\image-20240328200802305.png)

```verilog
initial begin 
rst = 1'b1; 
clk = 1'b0; 
en = 1'b0; 
A = 32'b0; 
B = 32'b0; 
#10 
rst = 1'b0;
en = 1; 
A=32'hc0a00000; //-5.0
B=32'hc0900000; //-4.5
//c1180000(-9.5)
#80 
en=0;#5;en=1;
A=32'h40a00000; //+5.0
B=32'h40900000; //+4.5
#80
en=0;#5;en=1;
A=32'h40a00000; //-5.0
B=32'h40900000; //+0.5
#80; //41180000(+9.5)
en=0;#5;en=1;
A=32'h3e800000;//0.25
B=32'hc0a00000;//-5
    #80 //c0980000(-4.75)
en=0;#5;en=1;
A=32'h3f000000;
B=32'hc0a00000;
#80;
end
```



## 3 实验扩展与改进

见浮点加法器

## 4 思考题

见浮点加法器

## 5 问题说明

无
