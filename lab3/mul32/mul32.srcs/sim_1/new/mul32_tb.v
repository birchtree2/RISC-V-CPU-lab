`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 13:25:48
// Design Name: 
// Module Name: mul32_tb
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


module mul32_tb(

    );
    reg clk,rst;
    reg [31:0] multiplicand,multiplier;
    reg start;
    wire [63:0] product;
    wire finish;
    mul32 uut(
        .clk(clk),
        .rst(rst),
        .multiplicand(multiplicand),
        .multiplier(multiplier),
        .start(start),
        .product(product),
        .finish(finish)
    );
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
    always begin
        #5 clk = ~clk;
    end
endmodule
