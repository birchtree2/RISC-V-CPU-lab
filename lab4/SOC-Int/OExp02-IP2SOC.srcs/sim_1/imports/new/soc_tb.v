`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/31 11:04:54
// Design Name: 
// Module Name: soc_tb
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


module soc_tb(

    );
    reg clk;
    reg rst;
    reg INT0;//模拟外部中断
    socTest uut(.clk(clk), .rst(rst),.INT0(INT0));
    reg [31:0] cnt;
    always begin
        cnt=cnt+1;
        clk=~clk;
        INT0=(cnt==32'd30)?1'b1:1'b0;
        #10;
    end
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        cnt = 32'b0; INT0=1'b0;
        #5;
        rst = 1'b0;
    end

    
endmodule
