`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 15:41:18
// Design Name: 
// Module Name: Regfile
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

`include "../../new/Defines.vh"
module Regfile(
    input clk,
    input rst, //=1时对所有寄存器置0
    input RegWrite,//=1时写
    input [4:0] Rs1_addr, Rs2_addr, Wt_addr, 
    input [31:0] Wt_data,
    output [31:0] Rs1_data, Rs2_data, 
    `RegFile_Regs_output
    );
    reg [31:0] register [1:31]; // r1 - r31
    integer i;
    //输出
    assign Rs1_data = (Rs1_addr== 0) ? 0 : register[Rs1_addr]; // read  x0默认是0
    assign Rs2_data = (Rs2_addr== 0) ? 0 : register[Rs2_addr]; // read
    always @(posedge clk or posedge rst) begin 
        if (rst==1) for (i=1; i<32; i=i+1) register[i] <= 0; // reset
        else if ((Wt_addr != 0) && (RegWrite == 1)) 
            register[Wt_addr] <= Wt_data; // write
    end
   `RegFile_Regs_Assignments
endmodule
