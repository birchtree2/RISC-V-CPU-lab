`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 22:48:51
// Design Name: 
// Module Name: Reg32
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


module Reg32(
    input clk,
    input rst,
    input CE,
    input [31:0] D,
    output reg [31:0] Q
    );

always @(posedge clk or posedge rst) begin
    if (rst==1) Q <= 0;
    else if (CE) Q <= D;
end

endmodule
