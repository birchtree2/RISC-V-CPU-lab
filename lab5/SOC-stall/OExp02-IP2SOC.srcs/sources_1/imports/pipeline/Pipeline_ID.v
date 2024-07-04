`timescale 1ns / 1ps
`include"../../new/Defines.vh"
module Pipeline_ID(
  input clk_ID,
  input rst_ID,
  input RegWrite_in_ID,
  input [4:0]Rd_addr_ID,
  input [31:0]Wt_data_ID,
  input [31:0]Inst_in_ID,
  output [4:0]Rd_addr_out_ID,//debug?
  output [31:0]Rs1_out_ID,
  output [31:0]Rs2_out_ID,
  output [31:0]Imm_out_ID,
  output ALUSrc_B_ID,
  output [3:0]ALU_control_ID,//original [2:0],is wrong
  output Branch_ID,
  output BranchN_ID,
  output MemRW_ID,
  output [1:0] Jump_ID,//[0]
  output [1:0]MemtoReg_ID,
  output RegWrite_out_ID,
  output Rs1_used,
  output Rs2_used,
  `RegFile_Regs_output
);
  wire [2:0] ImmSel;
  wire tmp_cpu_mio;
  assign Rd_addr_out_ID=Inst_in_ID[11:7];
  wire [4:0]OPcode;
  assign OPcode=Inst_in_ID[6:2];
  // assign Rs1_addr_ID=Inst_in_ID[19:15];
  // assign Rs2_addr_ID=Inst_in_ID[24:20];
  SCPU_ctrl u1(
    .OPcode(Inst_in_ID[6:2]),
    .Fun3(Inst_in_ID[14:12]),
    .Fun7(Inst_in_ID[30]),
    .MIO_ready(1'b0),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B_ID),
    .MemtoReg(MemtoReg_ID),
    .Jump(Jump_ID),
    .Branch(Branch_ID),
    .BranchN(BranchN_ID),
    .RegWrite(RegWrite_out_ID),
    .MemRW(MemRW_ID),
    .ALU_Control(ALU_control_ID),
    .CPU_MIO(tmp_cpu_mio)
  );
  
  Regfile   u2(
    .clk(~clk_ID),//下降沿写，所以取反！
    .rst(rst_ID),
    .RegWrite(RegWrite_in_ID),
    .Rs1_addr(Inst_in_ID[19:15]),
    .Rs2_addr(Inst_in_ID[24:20]),
    .Wt_addr(Rd_addr_ID),
    .Wt_data(Wt_data_ID),
    .Rs1_data(Rs1_out_ID),
    .Rs2_data(Rs2_out_ID),
    `RegFile_Regs_Arguments
  );
  wire [31:0]Imm_out_tmp;
  ImmGen u3(
    .ImmSel(ImmSel),
    .inst_field(Inst_in_ID),
    .Imm_out(Imm_out_tmp)
  );
  assign Imm_out_ID=Imm_out_tmp;
  assign Rs1_used=(Inst_in_ID[19:15]!=0);//都需要用到rs1,除了jal x0
  //jal和lui和addi不需要rs2
  assign Rs2_used=(OPcode!=5'b11011&&OPcode!=5'b00100)&&(Inst_in_ID[24:20]!=0);
endmodule
