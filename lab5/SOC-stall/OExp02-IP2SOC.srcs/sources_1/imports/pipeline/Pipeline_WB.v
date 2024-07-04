`timescale 1ns / 1ps
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  5 18:07:11 2024
// Host        : LAPTOP-6G31RL0V running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/Pipeline_WB.v
// Design      : Pipeline_WB
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pipeline_WB(PC4_in_WB, ALU_in_WB, DMem_data_WB, 
  MemtoReg_in_WB, Data_out_WB);

  input [31:0]PC4_in_WB;
  input [31:0]ALU_in_WB;
  input [31:0]DMem_data_WB;
  input [1:0]MemtoReg_in_WB;
  output [31:0]Data_out_WB;
  assign Data_out_WB = (MemtoReg_in_WB==2'b00) ? ALU_in_WB : ((MemtoReg_in_WB==2'b01) ? DMem_data_WB : PC4_in_WB);
  //不考虑lui指令
endmodule
