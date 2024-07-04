`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/27 11:19:15
// Design Name: 
// Module Name: stall
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


module stall(
input rst_stall, //复位
input RegWrite_out_IDEX, //执行阶段寄存器写控制
input [4:0]Rd_addr_out_IDEX, //执行阶段寄存器写地址
input RegWrite_out_EXMem, //访存阶段寄存器写控制
input [4:0]Rd_addr_out_EXMem, //访存阶段寄存器写地址
input [4:0]Rs1_addr_ID, //译码阶段寄存器读地址1
input [4:0]Rs2_addr_ID, //译码阶段寄存器读地址2
input Rs1_used, //Rs1被使用
input Rs2_used, //Rs2被使用
input Branch_ID, //译码阶段beq
input BranchN_ID, //译码阶段bne
input Jump_ID, //译码阶段jal
input Branch_out_IDEX, //执行阶段beq
input BranchN_out_IDEX, //执行阶段bne
input Jump_out_IDEX, //执行阶段jal
input Branch_out_EXMem, //访存阶段beq
input BranchN_out_EXMem, //访存阶段bne
input Jump_out_EXMem, //访存阶段jal
input PCSrc,//用于跳或不跳的条件判断
output en_IF, //流水线寄存器的使能及NOP信号
output en_IFID,
output NOP_IFID,
output NOP_IDEX
    );
    wire data_stall, control_stall;
    
     assign data_stall =
        (RegWrite_out_EXMem && Rs1_used && (Rs1_addr_ID == Rd_addr_out_EXMem) && (Rs1_addr_ID!=0))||
        (RegWrite_out_EXMem && Rs2_used && (Rs2_addr_ID == Rd_addr_out_EXMem) && (Rs2_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs1_used && (Rs1_addr_ID == Rd_addr_out_IDEX) && (Rs1_addr_ID!=0))||
        (RegWrite_out_IDEX && Rs2_used && (Rs2_addr_ID == Rd_addr_out_IDEX) && (Rs2_addr_ID!=0));
      
      assign ctrl_ID=Branch_ID || BranchN_ID || Jump_ID;
      assign ctrl_EX=Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX;
      assign ctrl_Mem=Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem;
      assign control_stall = ctrl_ID || ctrl_EX || ctrl_Mem;
      // assign control_stall=0;
      assign en_IF = !(data_stall||ctrl_EX||ctrl_ID);
      assign en_IFID = !(data_stall||ctrl_EX||ctrl_ID);
      assign NOP_IDEX=data_stall||ctrl_EX;//||(ctrl_Mem&&PCSrc);
      // assign NOP_IDEX = data_stall||(control_stall&&PCSrc);
      //PCSrc=1时，表示跳转  PCSrc=0,表示顺序执行。
      //如果PCSrc=1, 接下来两条指令都要变成nop，分别是IF/ID阶段和ID/EX阶段
      //Control_ID=1,
      // assign isNewPC=(Branch_out_EXMem||BranchN_out_EXMem)&&(PCSrc);
      assign NOP_IFID =!data_stall&&(ctrl_ID||(ctrl_Mem&&PCSrc));
endmodule
