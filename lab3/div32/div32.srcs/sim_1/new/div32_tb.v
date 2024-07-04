`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 22:55:05
// Design Name: 
// Module Name: div32_tb
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


module div32_tb(

    );

reg clk;
reg rst;
reg start;
reg [31:0] divident;
reg [31:0] divisor;
wire [31:0] quotient;
wire [31:0] remainder;
wire finish;
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
div32 u_div32
(
.clk(clk),
.rst(rst),
.start(start),
.dividend (divident),
.divisor (divisor ),
.quotient (quotient),
.remainder (remainder),
.finish(finish)
);


always #5 clk=~clk;
endmodule
