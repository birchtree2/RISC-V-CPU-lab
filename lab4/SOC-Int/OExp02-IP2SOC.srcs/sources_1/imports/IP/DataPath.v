`timescale 1ns / 1ps
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  5 10:53:44 2024
// Host        : LAPTOP-6G31RL0V running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/DataPath.v
// Design      : DataPath
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
`include "../../new/Defines.vh"
module DataPath(
  input clk,
  input rst,
  input [31:0]inst_field,
  input [31:0]Data_in,
  input [3:0]ALU_Control,
  input [2:0]ImmSel,
  input [1:0]MemtoReg,
  input ALUSrc_B,//=1是B是imm, 否则B是rs2
  input [1:0] Jump,
  input Branch,
  input BranchN,
  input RegWrite,
  input [1:0] inttype,//内部中断
  input INT0,//外部中断
  output reg [31:0]PC_out,//直接把PC的寄存器和输出合到一起
  output [31:0]Data_out,
  output [31:0]ALU_out,
  output reg [31:0]mepc,
  output reg [31:0]mtvec,
  `RegFile_Regs_output
  );
  wire ALU_zero;
  wire [31:0] Imm_out;
  ImmGen imm(
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    .Imm_out(Imm_out)
  );

  wire [31:0] PC_next;//PC+4 下一条指令
  wire [31:0] PC_add_imm;//beq/jal 跳转
  assign PC_next=PC_out+4;
  assign PC_add_imm=PC_out+Imm_out;
  wire rs1_rs2_eq;//rs1==rs2 用于beq
  reg int_en;
  always @(posedge clk or posedge rst or posedge INT0) begin
    if(rst) begin
      mepc<=0;PC_out<=0;int_en<=1;mtvec<=0;//CPU复位时，MEPC=PC=0x0
    end
    else if(INT0&&int_en) begin//外部中断，mepc=PC+4 PC=0xC
      mepc<=PC_next;PC_out<=32'h0000000C;int_en<=0;mtvec<=32'h0000000C;
    end
    else if(inttype==2'b01&&int_en) begin //ill
      PC_out<=32'h00000004; mepc<=PC_next; int_en<=0;mtvec<=32'h00000004;
    end
    else if(inttype==2'b10&&int_en) begin //ecall
      PC_out<=32'h00000008; mepc<=PC_next; int_en<=0;mtvec<=32'h00000008;
    end
    else if(inttype==2'b11&&!int_en) begin //mret
      PC_out<=mepc; int_en<=1; mtvec<=0;
    end
    else begin
      if(Jump!=2'b0) begin
          if(Jump==2'b01) PC_out<=PC_add_imm;//jal
          if(Jump==2'b10) PC_out<=ALU_out;//jalr
      end
      else if(BranchN) PC_out<=rs1_rs2_eq?PC_next:PC_add_imm;//bne 注意此时Branch也为1 
      else if(Branch) PC_out<=rs1_rs2_eq?PC_add_imm:PC_next;//beq 
      else PC_out<=PC_next;
    end
  end
  

  reg [31:0] Wt_data;//选择写入regfile的值
  wire [31:0] Rs1_data,Rs2_data;//reg file的输出
  assign rs1_rs2_eq = (Rs1_data==Rs2_data);//beq
  always @ (*) begin
    case(MemtoReg)
      2'b00: Wt_data = ALU_out;
      2'b01: Wt_data = Data_in;
      2'b10: Wt_data = PC_next;
      2'b11: Wt_data = Imm_out;//lui rd=imm
    endcase
  end
  Regfile Reg(
      .clk(clk),
      .rst(rst),
      .Rs1_addr(inst_field[19:15]),//rs1
      .Rs2_addr(inst_field[24:20]),//rs2
      .Wt_addr(inst_field[11:7]),//rd
      .Wt_data(Wt_data),
      .RegWrite(RegWrite),//module输入
      .Rs1_data(Rs1_data),
      .Rs2_data(Rs2_data),
      `RegFile_Regs_Arguments
  );
   
  ALU ALU(
    .A(Rs1_data),
    .B(ALUSrc_B==1?Imm_out:Rs2_data),
    .control(ALU_Control),
    .C(ALU_out),
    .zero(ALU_zero)
  );
  // assign ALU_out=alu_out;
  assign Data_out=Rs2_data;
endmodule
