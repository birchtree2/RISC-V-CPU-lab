`define RegFile_Regs_output \
    output [31: 0] x0, \
    output [31: 0] ra, \
    output [31: 0] sp, \
    output [31: 0] gp, \
    output [31: 0] tp, \
    output [31: 0] t0, \
    output [31: 0] t1, \
    output [31: 0] t2, \
    output [31: 0] s0, \
    output [31: 0] s1, \
    output [31: 0] a0, \
    output [31: 0] a1, \
    output [31: 0] a2, \
    output [31: 0] a3, \
    output [31: 0] a4, \
    output [31: 0] a5, \
    output [31: 0] a6, \
    output [31: 0] a7, \
    output [31: 0] s2, \
    output [31: 0] s3, \
    output [31: 0] s4, \
    output [31: 0] s5, \
    output [31: 0] s6, \
    output [31: 0] s7, \
    output [31: 0] s8, \
    output [31: 0] s9, \
    output [31: 0] s10, \
    output [31: 0] s11, \
    output [31: 0] t3, \
    output [31: 0] t4, \
    output [31: 0] t5, \
    output [31: 0] t6

`define RegFile_Regs_Assignments \
    assign x0 = 0; \
    assign ra = register[1]; \
    assign sp = register[2]; \
    assign gp = register[3]; \
    assign tp = register[4]; \
    assign t0 = register[5]; \
    assign t1 = register[6]; \
    assign t2 = register[7]; \
    assign s0 = register[8]; \
    assign s1 = register[9]; \
    assign a0 = register[10]; \
    assign a1 = register[11]; \
    assign a2 = register[12]; \
    assign a3 = register[13]; \
    assign a4 = register[14]; \
    assign a5 = register[15]; \
    assign a6 = register[16]; \
    assign a7 = register[17]; \
    assign s2 = register[18]; \
    assign s3 = register[19]; \
    assign s4 = register[20]; \
    assign s5 = register[21]; \
    assign s6 = register[22]; \
    assign s7 = register[23]; \
    assign s8 = register[24]; \
    assign s9 = register[25]; \
    assign s10 = register[26]; \
    assign s11 = register[27]; \
    assign t3 = register[28]; \
    assign t4 = register[29]; \
    assign t5 = register[30]; \
    assign t6 = register[31]; 

`define RegFile_Regs_Arguments \
    .x0(x0),    \
    .ra(ra),    \
    .sp(sp),    \
    .gp(gp),    \
    .tp(tp),    \
    .t0(t0),    \
    .t1(t1),    \
    .t2(t2),    \
    .s0(s0),    \
    .s1(s1),    \
    .a0(a0),    \
    .a1(a1),    \
    .a2(a2),    \
    .a3(a3),    \
    .a4(a4),    \
    .a5(a5),    \
    .a6(a6),    \
    .a7(a7),    \
    .s2(s2),    \
    .s3(s3),    \
    .s4(s4),    \
    .s5(s5),    \
    .s6(s6),    \
    .s7(s7),    \
    .s8(s8),    \
    .s9(s9),    \
    .s10(s10),  \
    .s11(s11),  \
    .t3(t3),    \
    .t4(t4),    \
    .t5(t5),    \
    .t6(t6)

`define RegFile_Regs_Declaration \
    wire [31: 0] x0; \
    wire [31: 0] ra; \
    wire [31: 0] sp; \
    wire [31: 0] gp; \
    wire [31: 0] tp; \
    wire [31: 0] t0; \
    wire [31: 0] t1; \
    wire [31: 0] t2; \
    wire [31: 0] s0; \
    wire [31: 0] s1; \
    wire [31: 0] a0; \
    wire [31: 0] a1; \
    wire [31: 0] a2; \
    wire [31: 0] a3; \
    wire [31: 0] a4; \
    wire [31: 0] a5; \
    wire [31: 0] a6; \
    wire [31: 0] a7; \
    wire [31: 0] s2; \
    wire [31: 0] s3; \
    wire [31: 0] s4; \
    wire [31: 0] s5; \
    wire [31: 0] s6; \
    wire [31: 0] s7; \
    wire [31: 0] s8; \
    wire [31: 0] s9; \
    wire [31: 0] s10; \
    wire [31: 0] s11; \
    wire [31: 0] t3; \
    wire [31: 0] t4; \
    wire [31: 0] t5; \
    wire [31: 0] t6;

`define VGA_Regs_Input      \
    input wire [31: 0] x0, \
    input wire [31: 0] ra, \
    input wire [31: 0] sp, \
    input wire [31: 0] gp, \
    input wire [31: 0] tp, \
    input wire [31: 0] t0, \
    input wire [31: 0] t1, \
    input wire [31: 0] t2, \
    input wire [31: 0] s0, \
    input wire [31: 0] s1, \
    input wire [31: 0] a0, \
    input wire [31: 0] a1, \
    input wire [31: 0] a2, \
    input wire [31: 0] a3, \
    input wire [31: 0] a4, \
    input wire [31: 0] a5, \
    input wire [31: 0] a6, \
    input wire [31: 0] a7, \
    input wire [31: 0] s2, \
    input wire [31: 0] s3, \
    input wire [31: 0] s4, \
    input wire [31: 0] s5, \
    input wire [31: 0] s6, \
    input wire [31: 0] s7, \
    input wire [31: 0] s8, \
    input wire [31: 0] s9, \
    input wire [31: 0] s10, \
    input wire [31: 0] s11, \
    input wire [31: 0] t3, \
    input wire [31: 0] t4, \
    input wire [31: 0] t5, \
    input wire [31: 0] t6, 