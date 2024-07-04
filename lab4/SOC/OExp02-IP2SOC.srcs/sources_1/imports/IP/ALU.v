`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 10:54:21
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] control, //lab4-3新增
    output reg [31:0] C,
    output reg zero
    );
    always @ (*) begin
      case(control)
        4'b0000: C=A&B;
        4'b0001: C=A|B;
        4'b0010: C=A+B;
        4'b0011: C=A^B;
        4'b0100: C=!(A|B);
        4'b0101: C=A>>B[4:0];//srl 无符号右移
        4'b0110: C=A-B;
        4'b0111: C= ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
         //slt有符号比较  $signed:https://l-x.me/2018/06/13/article/verilog_signed_and_unsigned/
        4'b1000: C=A<<B[4:0];//sll 无符号左移
        4'b1001: begin//sra 有符号右移 
          if(A[31]==1'b0) C=A>>B[4:0];
          else C=~((~A)>>B[4:0]);//先把A取反 做逻辑右移  再取反回来，右边补的就变成了1
        end
        4'b1010: C=(A<B)?32'b1:32'b0;//sltu 无符号比较
        default: C=32'bx; 
      endcase
      zero = (C==0)?1:0;
    end
endmodule
