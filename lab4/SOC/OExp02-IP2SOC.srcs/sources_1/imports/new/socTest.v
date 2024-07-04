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
    wire [31:0] PC_out;
    /* RAM 接出 */
    wire [31:0] douta;
    /* ROM 接出 */
    wire [31:0] spo;

    SCPU u0(
        .clk(clk),
        .rst(rst),
        .Data_in(douta),
        .MIO_ready(CPU_MIO),
        .inst_in(spo),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .CPU_MIO(CPU_MIO),
        .MemRW(MemRW),
        .PC_out(PC_out)
    );

    RAM_B u1(
        .clka(~clk),
        .wea(MemRW),
        .addra(Addr_out[11:2]),
        .dina(Data_out),
        .douta(douta)
    );

    ROM u2(
        .a(PC_out[11:2]),
        .spo(spo)
    );
endmodule

