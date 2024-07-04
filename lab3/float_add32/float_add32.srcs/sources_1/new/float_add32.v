`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/22 13:31:10
// Design Name: 
// Module Name: float_add32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
