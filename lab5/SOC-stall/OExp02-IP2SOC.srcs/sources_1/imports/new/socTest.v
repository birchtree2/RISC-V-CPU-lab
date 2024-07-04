`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/31 10:49:52
// Design Name: 
// Module Name: socTest
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


module socTest(
    input clk,
    input rst
    );
    
        /* SCPU 中接出 */
    wire [31:0] Addr_out;
    wire [31:0] Data_out;       
    wire        CPU_MIO;
    wire        MemRW;
    // wire [31:0] PC_out;
    /* RAM 接出 */
    wire [31:0] douta;
    /* ROM 接出 */
    wire [31:0] spo;

    wire [31:0]PC_out_EX;
    wire [31:0]PC_out_ID;
    wire [31:0]inst_ID;
    wire [31:0]PC_out_IF;
    wire [31:0] Data_out_WB;
    wire  MemRW_EX;
    Pipeline_CPU u0(
        .Data_in(douta),
        .clk(clk),
        .rst(rst),
        .inst_IF(spo),
        .PC_out_EX(PC_out_EX),
        .PC_out_ID(PC_out_ID),
        .inst_ID(inst_ID),
        .PC_out_IF(PC_out_IF),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .Data_out_WB(Data_out_WB),
        .MemRW_Mem(MemRW),//接到RAM
        .MemRW_EX(MemRW_EX)
    );

    RAM_B u1(
        .clka(~clk),
        .wea(MemRW),
        .addra(Addr_out[11:2]),
        .dina(Data_out),
        .douta(douta)
    );

    ROM u2(
        .a(PC_out_IF[11:2]),//PC_out_IF
        .spo(spo)
    );
endmodule

