`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/13 17:21:04
// Design Name: 
// Module Name: Pipeline_CPU
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

`include"Defines.vh"
module Pipeline_CPU(
input [31:0] Data_in,
input rst,
input clk,
input [31:0] inst_IF,
output [31:0] PC_out_EX,
output [31:0] PC_out_ID,
output [31:0] inst_ID,
output [31:0] PC_out_IF,
output [31:0] Addr_out,
output [31:0] Data_out,
output [31:0] Data_out_WB,
output MemRW_Mem,
output MemRW_EX
,`RegFile_Regs_output
// output [1023:0] reg_out
    );

wire [31:0] PC_EXMem_IF; // from Ex/Mem to IF
wire PCSrc; // from Mem to IF
wire [31:0] Inst_in_ID; // from IF/ID to ID
/*below from Mem/WB to ID*/
wire RegWrite_MemWB_ID;
wire [4:0] Rd_addr_MemWB_ID;
/*below from ID to ID/EX*/
wire [4:0] Rd_addr_ID_IDEX;
wire [31:0] Rs1_ID_IDEX;
wire [31:0] Rs2_ID_IDEX;
wire [31:0] Imm_ID_IDEX;
wire ALUSrc_B_ID_IDEX;
wire [3:0] ALU_control_ID_IDEX;
wire Branch_ID_IDEX;
wire BranchN_ID_IDEX;
wire MemRW_ID_IDEX;
wire [1:0] Jump_ID_IDEX;
wire [1:0] MemtoReg_ID_IDEX;
wire RegWrite_ID_IDEX;
/*below from ID/EX to EX*/
wire [31:0] PC_IDEX_EX;
wire [31:0] Rs1_IDEX_EX;
wire [31:0] Rs2_IDEX_EX;
wire [31:0] Imm_IDEX_EX;
wire ALUSrc_B_IDEX_EX;
wire [3:0] ALU_control_IDEX_EX;
/*below from ID/EX to EX/Mem*/
wire [4:0] Rd_addr_IDEX_EXMem;
wire Branch_IDEX_EXMem;
wire BranchN_IDEX_EXMem;
wire [1:0] Jump_IDEX_EXMem;
wire [1:0] MemtoReg_IDEX_EXMem;
wire RegWrite_IDEX_EXMem;
/*below from EX to EX/Mem*/
wire [31:0] PC4_EX_EXMem;
wire zero_EX_EXMem;
wire [31:0] ALU_EX_EXMem;
wire [31:0] Rs2_EX_EXMem;
/*below from EX/Mem to Mem*/
wire zero_EXMem_Mem;
wire Branch_EXMem_Mem;
wire BranchN_EXMem_Mem;
wire [1:0] Jump_EXMem_Mem;
/*below from EX/Mem to Mem/WB*/
wire [31:0] PC4_EXMem_MemWB;
wire [4:0] Rd_addr_EXMem_MemWB;
wire [1:0] MemtoReg_EXMem_MemWB;
wire RegWrite_EXMem_MemWB;
/*below from Mem/WB to WB*/
wire [31:0] PC4_MemWB_WB;
wire [31:0] ALU_MemWB_WB;
wire [31:0] DMem_data_MemWB_WB;
wire [1:0] MemtoReg_MemWB_WB;

wire Rs1_used_ID, Rs2_used_ID;
wire stall_en_IF, stall_en_IFID, NOP_IFID, NOP_IDEX;
stall ustall(
  .rst_stall(rst),
  .RegWrite_out_IDEX(RegWrite_IDEX_EXMem),
  .Rd_addr_out_IDEX(Rd_addr_IDEX_EXMem),
  .RegWrite_out_EXMem(RegWrite_EXMem_MemWB),
  .Rd_addr_out_EXMem(Rd_addr_EXMem_MemWB),
  .Rs1_addr_ID(Inst_in_ID[19:15]),
  .Rs2_addr_ID(Inst_in_ID[24:20]),
  .Rs1_used(Rs1_used_ID),
  .Rs2_used(Rs2_used_ID),
  .Branch_ID(Branch_ID_IDEX),
  .BranchN_ID(BranchN_ID_IDEX),
  .Jump_ID(Jump_ID_IDEX[0]),//因为scpu_ctrl中Jump是2位，但stall中是1位
  .Branch_out_IDEX(Branch_IDEX_EXMem),
  .BranchN_out_IDEX(BranchN_IDEX_EXMem),
  .Jump_out_IDEX(Jump_IDEX_EXMem[0]),
  .Branch_out_EXMem(Branch_EXMem_Mem),
  .BranchN_out_EXMem(BranchN_EXMem_Mem),
  .Jump_out_EXMem(Jump_EXMem_Mem[0]),
  .en_IF(stall_en_IF),//流水线寄存器的使能及NOP信号
  .en_IFID(stall_en_IFID),
  .NOP_IFID(NOP_IFID),
  .NOP_IDEX(NOP_IDEX),
  .PCSrc(PCSrc)//用于跳或不跳的条件判断
);
//en不是1'b1了，是stall_en_IF
Pipeline_IF Instruction_Fetch(.clk_IF(clk), .rst_IF(rst), .en_IF(stall_en_IF),
  .PC_in_IF(PC_EXMem_IF), .PCSrc(PCSrc), .PC_out_IF(PC_out_IF));
//修改en,加输入nop,输出valid
wire valid_IFID;
IF_reg_ID IF_reg_ID(.clk_IFID(clk), .rst_IFID(rst), .en_IFID(stall_en_IFID),
  .PC_in_IFID(PC_out_IF), .inst_in_IFID(inst_IF),
  .NOP_IFID(NOP_IFID),
  .PC_out_IFID(PC_out_ID), .inst_out_IFID(Inst_in_ID),
  .valid_IFID(valid_IFID));
//加输出rs1_used,rs2_used
assign inst_ID=Inst_in_ID;
Pipeline_ID Instruction_Decoder(.clk_ID(clk),.rst_ID(rst),
  .RegWrite_in_ID(RegWrite_MemWB_ID),.Rd_addr_ID(Rd_addr_MemWB_ID),
  .Wt_data_ID(Data_out_WB),.Inst_in_ID(Inst_in_ID),
  .Rd_addr_out_ID(Rd_addr_ID_IDEX),
  .Rs1_out_ID(Rs1_ID_IDEX),.Rs2_out_ID(Rs2_ID_IDEX),
  .Imm_out_ID(Imm_ID_IDEX),.ALUSrc_B_ID(ALUSrc_B_ID_IDEX),
  .ALU_control_ID(ALU_control_ID_IDEX),
  .Branch_ID(Branch_ID_IDEX),.BranchN_ID(BranchN_ID_IDEX),
  .MemRW_ID(MemRW_ID_IDEX),.Jump_ID(Jump_ID_IDEX),
  .MemtoReg_ID(MemtoReg_ID_IDEX),.RegWrite_out_ID(RegWrite_ID_IDEX)
  ,.Rs1_used(Rs1_used_ID),.Rs2_used(Rs2_used_ID)//add by stall
  ,`RegFile_Regs_Arguments
  /*.reg_out(reg_out)*/);

wire valid_out_IDEX;
//输入NOP_IDEX,valid_in_IDEX,输出valid_out_IDEX
//en永远是1
ID_reg_Ex ID_reg_Ex(.clk_IDEX(clk),.rst_IDEX(rst),.en_IDEX(1'b1),
  .PC_in_IDEX(PC_out_ID),.Rd_addr_IDEX(Rd_addr_ID_IDEX),
  .Rs1_in_IDEx(Rs1_ID_IDEX),.Rs2_in_IDEX(Rs2_ID_IDEX),
  .Imm_in_IDEX(Imm_ID_IDEX),.ALUSrc_B_in_IDEX(ALUSrc_B_ID_IDEX),
  .ALU_control_in_IDEX(ALU_control_ID_IDEX),
  .Branch_in_IDEX(Branch_ID_IDEX),.BranchN_in_IDEX(BranchN_ID_IDEX),
  .MemRW_in_IDEX(MemRW_ID_IDEX),.Jump_in_IDEX(Jump_ID_IDEX),
  .MemtoReg_in_IDEX(MemtoReg_ID_IDEX),.RegWrite_in_IDEX(RegWrite_ID_IDEX),
  .NOP_IDEX(NOP_IDEX),.valid_in_IDEX(valid_IFID),//stall
  .valid_out_IDEX(valid_out_IDEX),//stall
  .PC_out_IDEX(PC_IDEX_EX),.Rd_addr_out_IDEX(Rd_addr_IDEX_EXMem),
  .Rs1_out_IDEX(Rs1_IDEX_EX),.Rs2_out_IDEX(Rs2_IDEX_EX),
  .Imm_out_IDEX(Imm_IDEX_EX),.ALUSrc_B_out_IDEX(ALUSrc_B_IDEX_EX),
  .ALU_control_out_IDEX(ALU_control_IDEX_EX),
  .Branch_out_IDEX(Branch_IDEX_EXMem),.BranchN_out_IDEX(BranchN_IDEX_EXMem),
  .MemRW_out_IDEX(MemRW_EX),.Jump_out_IDEX(Jump_IDEX_EXMem),
  .MemtoReg_out_IDEX(MemtoReg_IDEX_EXMem),.RegWrite_out_IDEX(RegWrite_IDEX_EXMem));
//不用改
Pipeline_Ex Execute(.PC_in_EX(PC_IDEX_EX),
  .Rs1_in_EX(Rs1_IDEX_EX),.Rs2_in_EX(Rs2_IDEX_EX),
  .Imm_in_EX(Imm_IDEX_EX),.ALUSrc_B_in_EX(ALUSrc_B_IDEX_EX),
  .ALU_control_in_EX(ALU_control_IDEX_EX),

  .PC_out_EX(PC_out_EX),.PC4_out_EX(PC4_EX_EXMem),
  .zero_out_EX(zero_EX_EXMem),.ALU_out_EX(ALU_EX_EXMem),
  .Rs2_out_EX(Rs2_EX_EXMem)
);
//加了valid_in,valid_out
wire valid_out_EXMem;
Ex_reg_Mem Ex_reg_Mem(.clk_EXMem(clk),.rst_EXMem(rst),.en_EXMem(1'b1),
  .PC_in_EXMem(PC_out_EX),.PC4_in_EXMem(PC4_EX_EXMem),
  .Rd_addr_EXMem(Rd_addr_IDEX_EXMem),.zero_in_EXMem(zero_EX_EXMem),//rd no in
  .ALU_in_EXMem(ALU_EX_EXMem),.Rs2_in_EXMem(Rs2_EX_EXMem),
  .Branch_in_EXMem(Branch_IDEX_EXMem),.BranchN_in_EXMem(BranchN_IDEX_EXMem),
  .MemRW_in_EXMem(MemRW_EX),.Junp_in_EXMem(Jump_IDEX_EXMem),//junp
  .MemtoReg_in_EXMem(MemtoReg_IDEX_EXMem),.RegWrite_in_EXMem(RegWrite_IDEX_EXMem),
  .valid_in_EXMem(valid_out_IDEX),//stall
  .valid_out_EXMem(valid_out_EXMem),//stall
  .PC_out_EXMem(PC_EXMem_IF),.PC4_out_EXMem(PC4_EXMem_MemWB),
  .Rd_addr_out_EXMem(Rd_addr_EXMem_MemWB),.zero_out_EXMem(zero_EXMem_Mem),
  .ALU_out_EXMem(Addr_out),.Rs2_out_EXMem(Data_out), 
  .Branch_out_EXMem(Branch_EXMem_Mem),.BranchN_out_EXMem(BranchN_EXMem_Mem),
  .MemRW_out_EXMem(MemRW_Mem),.Jump_out_EXMem(Jump_EXMem_Mem),
  .MemtoReg_out_EXMem(MemtoReg_EXMem_MemWB),
  .RegWrite_out_EXMem(RegWrite_EXMem_MemWB));
Pipeline_Mem Memory_Access(.zero_in_Mem(zero_EXMem_Mem),
  .Branch_in_Mem(Branch_EXMem_Mem),.BranchN_in_Mem(BranchN_EXMem_Mem),
  .Jump_in_Mem(Jump_EXMem_Mem),.PCSrc(PCSrc));

wire valid_out_MemWB;
Mem_reg_WB Mem_reg_WB(.clk_MemWB(clk),.rst_MemWB(rst),
  .en_MemWB(1'b1),.PC4_in_MemWB(PC4_EXMem_MemWB),
  .Rd_addr_MemWB(Rd_addr_EXMem_MemWB),
  .ALU_in_MemWB(Addr_out), 
  .DMem_data_MemWB(Data_in),
  .MemtoReg_in_MemWB(MemtoReg_EXMem_MemWB),
  .RegWrite_in_MemWB(RegWrite_EXMem_MemWB),
  .valid_in_MemWB(valid_out_EXMem),//stall
  .valid_out_MemWB(valid_out_EXMem),//所以这个有啥用？
  .PC4_out_MemWB(PC4_MemWB_WB),.Rd_addr_out_MemWB(Rd_addr_MemWB_ID),
  .ALU_out_MemWB(ALU_MemWB_WB),.DMem_data_out_MemWB(DMem_data_MemWB_WB),
  .MemtoReg_out_MemWB(MemtoReg_MemWB_WB),.RegWrite_out_MemWB(RegWrite_MemWB_ID)
);

Pipeline_WB Write_Back(.PC4_in_WB(PC4_MemWB_WB),
.ALU_in_WB(ALU_MemWB_WB),.DMem_data_WB(DMem_data_MemWB_WB),
.MemtoReg_in_WB(MemtoReg_MemWB_WB),.Data_out_WB(Data_out_WB));

endmodule
