`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 19:18:37
// Design Name: 
// Module Name: SCPU
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
module SCPU(
  input clk,
  input rst,
  input MIO_ready,
  input [31:0]inst_in,
  input [31:0]Data_in,
  input INT0,//外部中断（硬件
  output CPU_MIO,
  output MemRW,
  output [31:0]PC_out,
  output [31:0]Data_out,
  output [31:0]Addr_out,
  output [31:0]mepc,
  output [31:0]mtvec,
  `RegFile_Regs_output
);
    wire [2:0] U1_ImmSel;
    wire U1_ALUSrc_B;
    wire [1:0] U1_MemtoReg;
    wire [1:0] U1_Jump;
    wire U1_Branch;
    wire U1_RegWrite;
    wire [3:0] U1_ALU_Control;
    wire U1_BranchN;
    wire [1:0] inttype;
    SCPU_ctrl U1(
        .OPcode(inst_in[6:2]),
        .Fun3(inst_in[14:12]),
        .Fun7(inst_in[30]),
        .syscall(inst_in[31:20]),   
        .MIO_ready(MIO_ready),
        .ImmSel(U1_ImmSel),
        .ALUSrc_B(U1_ALUSrc_B),
        .MemtoReg(U1_MemtoReg),
        .Jump(U1_Jump),
        .Branch(U1_Branch),
        .BranchN(U1_BranchN),
        .RegWrite(U1_RegWrite),
        .MemRW(MemRW),
        .ALU_Control(U1_ALU_Control),
        .CPU_MIO(CPU_MIO),
        .inttype(inttype)
    );
    
    DataPath U2(
        .clk(clk),
        .rst(rst),
        .inst_field(inst_in),
        .Data_in(Data_in),
        .ALU_Control(U1_ALU_Control),
        .ImmSel(U1_ImmSel),
        .MemtoReg(U1_MemtoReg),
        .ALUSrc_B(U1_ALUSrc_B),
        .Jump(U1_Jump),
        .Branch(U1_Branch),
        .BranchN(U1_BranchN),
        .RegWrite(U1_RegWrite),
        .inttype(inttype),
        .INT0(INT0),
        .PC_out(PC_out),
        .Data_out(Data_out),
        .ALU_out(Addr_out),
        .mepc(mepc),
        .mtvec(mtvec),
        `RegFile_Regs_Arguments
    );
    
endmodule
