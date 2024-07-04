`timescale 1ns / 1ps
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  5 18:01:52 2024
// Host        : LAPTOP-6G31RL0V running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/Pipeline_Mem.v
// Design      : Pipeline_Mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pipeline_Mem(zero_in_Mem, Branch_in_Mem, BranchN_in_Mem, 
  Jump_in_Mem, PCSrc);
  input zero_in_Mem;
  input Branch_in_Mem;
  input BranchN_in_Mem;
  input [1:0 ]Jump_in_Mem;//Jump[1] is jalr, Jump[0] is jal
  output PCSrc;
  assign PCSrc=(Branch_in_Mem & zero_in_Mem) | (BranchN_in_Mem & ~zero_in_Mem) | (Jump_in_Mem!=2'b00);
endmodule
