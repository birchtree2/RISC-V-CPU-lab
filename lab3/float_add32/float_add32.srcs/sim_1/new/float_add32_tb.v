`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/22 13:48:04
// Design Name: 
// Module Name: float_add32_tb
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


module float_add32_tb(

    );
reg rst,clk,en;
reg [31:0] A,B;
wire [31:0] result;
wire fin;
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
#80
en=0;#5;en=1;
A=32'h3f000000;
B=32'hc0a00000;
#80;
end

always #5 clk=~clk;

float_add32 uut(
    .clk(clk),
    .rst(rst),
    .en(en),
    .A(A),
    .B(B),
    .result(result),
    .fin(fin)
    );
endmodule
