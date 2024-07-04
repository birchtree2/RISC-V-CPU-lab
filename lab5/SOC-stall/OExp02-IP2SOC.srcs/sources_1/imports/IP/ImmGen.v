`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 22:47:57
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
// input wire [1:0] ImmSel, //立即数操作控制
input wire [2:0] ImmSel, //立即数操作控制
input wire [31:0] inst_field, //指令数据域[31:7]
output reg [31:0] Imm_out //立即数输出
    );
    always@*begin
    case(ImmSel)
        3'b000:Imm_out = {{20{inst_field[31]}},inst_field[31:20]}; //addi,lw,jalr(I)
        3'b001:Imm_out = {{20{inst_field[31]}},inst_field[31:25],inst_field[11:7]}; //sw(s)
        3'b010:Imm_out = {{19{inst_field[31]}},inst_field[31],inst_field[7],inst_field[30:25],inst_field[11:8],1'b0};
         //beq(b)  最后一位一定是0 因为地址2字节对齐
        3'b011:Imm_out = {{11{inst_field[31]}},inst_field[31],inst_field[19:12],inst_field[20],inst_field[30:21],1'b0}; 
        //jal(uj)
        3'b100:Imm_out = {inst_field[31:12],12'b0}; //lui(u)
        default: Imm_out = 32'bx;
        //lui(u)
    endcase
    end
endmodule
