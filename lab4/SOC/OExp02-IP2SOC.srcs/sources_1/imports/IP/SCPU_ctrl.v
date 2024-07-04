`timescale 1ns / 1ps
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  5 10:44:28 2024
// Host        : LAPTOP-6G31RL0V running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub E:/FPGA/ip/SCPU_ctrl.v
// Design      : SCPU_ctrl
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.

module SCPU_ctrl( input[4:0]OPcode, //Opcode------inst[6:2]
input[2:0]Fun3, //Function-----inst[14:12]
input Fun7, //Function-----inst[30]
input MIO_ready, //CPU Wait not use
// output reg [1:0]ImmSel, //立即数选择控制  00:s 01:sw 10:beq 11:jal //、、100 u型指令
output reg [2:0]ImmSel, //立即数选择控制,支持u型 000:s 001:sw 010:beq 011:jal
output reg ALUSrc_B, //源操作数2选择  1:立即数 0:寄存器
output reg [1: 0] MemtoReg, //写回寄存器的数据选择控制 00:ALU 01:内存 10:PC(j) 11:imm(lui)
output reg [1:0] Jump, //00其他 01 jal 10 jalr
output reg Branch, //beq
output reg BranchN, //bne
output reg RegWrite, //寄存器写使能
output reg MemRW, //存储器读写使能
// output reg [2:0]ALU_Control, //alu控制
output reg [3:0] ALU_Control, //alu控制 指令扩展
output reg CPU_MIO //not use
); 
reg [1:0]ALUop;
`define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW, Branch ,Jump,ALUop, ImmSel}
parameter addr = 2'b00;
parameter subeq = 2'b01;
parameter alu = 2'b10;
parameter alui = 2'b11;
  always @*begin
      case(OPcode)
      5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,1'b0,2'b00,alu,3'b000}; end //ALU R
      5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,1'b0,2'b00,addr,3'b000}; end //load I
      5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,1'b0,2'b00,addr,3'b001}; end //store S
      5'b11000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b1,2'b00,subeq,3'b010}; end //beq/bne SB
      5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,1'b0,2'b01,addr,3'b011}; end //jal UJ
      5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,1'b0,2'b00,alui,3'b000}; end //ALU+imm I
      5'b11001: begin `CPU_ctrl_signals={1'b1,2'b10,1'b1,1'b0,1'b0,2'b10,addr,3'b000}; end //jalr I
      // MemtoReg=10(因为要写入PC+4) RegWrite=1  JUMP=1  ALUSrc_B=1,因为PC=reg+imm
      5'b01101: begin `CPU_ctrl_signals={1'b0,2'b11,1'b1,1'b0,1'b0,2'b00,addr,3'b100}; end //lui U
      // MemtoReg=11(因为要把imm写入rd),Regwrite=1 
      default: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,1'b0,2'b00,addr,3'b000}; end
      endcase
  end

always @ * begin //bne控制branchN
  if(OPcode==5'b11000&&Fun3==3'b001) begin
      BranchN=1'b1;
  end
  else BranchN=1'b0;
end
//ALUop是自定义的
wire [3:0]Fun;//记得定义Fun
assign Fun = {Fun3,Fun7};
always @* begin
  case(ALUop)
    addr: ALU_Control =  4'b0010;//add计算地址
    subeq: ALU_Control =  4'b0110; //sub比较条件
    alu: //ALU 无立即数
        case(Fun)
        4'b0000: ALU_Control = 4'b0010 ; //add
        4'b0001: ALU_Control = 4'b0110 ; //sub
        4'b1110: ALU_Control = 4'b0000 ; //and
        4'b1100: ALU_Control = 4'b0001 ; //or
        4'b0100: ALU_Control = 4'b0111 ; //slt (有符号)
        4'b0110: ALU_Control = 4'b1010 ; //sltu (无符号)
        4'b1010: ALU_Control = 4'b0101 ; //srl
        4'b1000: ALU_Control = 4'b0011 ; //xor
        4'b0010: ALU_Control = 4'b1000 ; //sll
        4'b1011: ALU_Control = 4'b1001 ; //sra
        default: ALU_Control=4'bx;
        endcase
    alui: //ALUi 有立即数
        case(Fun3) //addi...  因为有些的Fun7是n.a
          3'b000: ALU_Control = 4'b0010 ; //addi
          3'b010: ALU_Control = 4'b0111 ; //slti
          3'b011: ALU_Control = 4'b1010 ; //sltiu
          3'b111: ALU_Control = 4'b0000 ; //andi
          3'b110: ALU_Control = 4'b0001 ; //ori
          3'b100: ALU_Control = 4'b0011 ; //xori
          3'b001: ALU_Control = 4'b1000 ; //slli
          3'b101: ALU_Control = Fun7?4'b1001:4'b0101 ; //srai/srli
          default: ALU_Control=4'bx;
        endcase
    default: ALU_Control=4'bx;
  endcase
end
always @* begin
  CPU_MIO=1'b0;//todo
end
endmodule