`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/13 15:20:31
// Design Name: 
// Module Name: CSSTE_pipeline
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
module CSSTE_pipeline(
input clk_100mhz,
input RSTN,
input [3:0] BTN_y,
input [15:0] SW,
output [3:0] Blue,
output [3:0] Green,
output [3:0] Red,
output HSYNC,
output VSYNC,
output [15:0] LED_out,
output [7:0] segment,
output [7:0] AN
);

wire Clk_CPU;//from u8
wire [31:0] clkdiv;//from u8
wire rst;//from u9 u
wire [31:0] spo;//from u2
wire [31:0] Cpu_data4bus;//from u4
/*wire MemRW;//from u1
wire [31:0] dmem_addr;//from u1
wire [31:0] Data_out_cpu;//from u1
wire [31:0] PC;//from u1*/
wire data_ram_we;//from u4
wire [9:0] ram_addr;//from u4
wire [31:0] ram_data_in;//from u4
wire [31:0] ram_data_out;//from u3
wire [3:0] BTN_OK;//from u9
wire [15:0] SW_OK;//from u9
wire [31:0] counter_out;//from u10
wire counter0_OUT,counter1_OUT,counter2_OUT;//from u10
wire GPIOf0000000_we,GPIOe0000000_we,counter_we;//from u4
wire [31:0] Peripheral_in;//from u4
wire [7:0] point_out;//from u5
wire [7:0] LE_out;//from u5
wire [31:0] Disp_num;//from u5
wire [1:0] counter_set;//from u7

wire [31:0] PC_out_IF;// from u1
wire [31:0] PC_out_ID;// from u1
wire [31:0] inst_ID;// from u1
wire [31:0] PC_out_Ex;// from u1
wire MemRW_Ex;// from u1
wire MemRW_Mem;// from u1
wire [31:0] Data_out;// from u1
wire [31:0] Addr_out;// from u1
wire [31:0] Data_out_WB;// from u1

// wire [1023:0] reg_out;
// wire [31:0] x0;
// wire [31:0] x1;
// wire [31:0] x2;
// wire [31:0] x3;
// wire [31:0] x4;
// wire [31:0] x5;
// wire [31:0] x6;
// wire [31:0] x7;
// wire [31:0] x8;
// wire [31:0] x9;
// wire [31:0] x10;
// wire [31:0] x11;
// wire [31:0] x12;
// wire [31:0] x13;
// wire [31:0] x14;
// wire [31:0] x15;
// wire [31:0] x16;
// wire [31:0] x17;
// wire [31:0] x18;
// wire [31:0] x19;
// wire [31:0] x20;
// wire [31:0] x21;
// wire [31:0] x22;
// wire [31:0] x23;
// wire [31:0] x24;
// wire [31:0] x25;
// wire [31:0] x26;
// wire [31:0] x27;
// wire [31:0] x28;
// wire [31:0] x29;
// wire [31:0] x30;
// wire [31:0] x31;
// assign reg_out = {x31,x30,x29,x28,x27,x26,x25,x24,x23,x22,x21,x20,x19,x18,x17,x16,x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0};
// PCPU 
`RegFile_Regs_Declaration
Pipeline_CPU u1(.clk(Clk_CPU), .rst(rst), /*MIO_ready,*/ .inst_IF(spo), 
  .Data_in(Cpu_data4bus), /*CPU_MIO,*/ .PC_out_IF(PC_out_IF),
  .PC_out_ID(PC_out_ID), .inst_ID(inst_ID), .PC_out_EX(PC_out_Ex),
  .MemRW_EX(MemRW_Ex), .MemRW_Mem(MemRW_Mem), .Data_out(Data_out),
  .Addr_out(Addr_out), .Data_out_WB(Data_out_WB)//.reg_out(reg_out)
  ,`RegFile_Regs_Arguments
//   .x0(x0),.x1(x1),.x2(x2),.x3(x3),.x4(x4),
//   .x5(x5),.x6(x6),.x7(x7),.x8(x8),.x9(x9),
//   .x10(x10),.x11(x11),.x12(x12),.x13(x13),.x14(x14),
//   .x15(x15),.x16(x16),.x17(x17),.x18(x18),.x19(x19),
//   .x20(x20),.x21(x21),.x22(x22),.x23(x23),.x24(x24),
//   .x25(x25),.x26(x26),.x27(x27),.x28(x28),.x29(x29),
//   .x30(x30),.x31(x31)
  );
ROM u2(.a(PC_out_IF[11:2]),.spo(spo));
// RAM_B u3(.clk(~clk_100mhz), .we(data_ram_we), 
//   .a(ram_addr), .d(ram_data_in), .spo(ram_data_out));
RAM_B u3(.clka(~clk_100mhz), .wea(data_ram_we), 
  .addra(ram_addr), .dina(ram_data_in), .douta(ram_data_out));
MIO_BUS u4(.clk(clk_100mhz), .rst(rst), 
  .BTN(BTN_OK), .SW(SW_OK), .mem_w(MemRW_Mem),
  .Cpu_data2bus(Data_out), .addr_bus(Addr_out), 
  .ram_data_out(ram_data_out), .led_out(LED_out), 
  .counter_out(counter_out), .counter0_out(counter0_OUT), 
  .counter1_out(counter1_OUT), .counter2_out(counter2_OUT), 
  .Cpu_data4bus(Cpu_data4bus), .ram_data_in(ram_data_in), 
  .ram_addr(ram_addr), .data_ram_we(data_ram_we), 
  .GPIOf0000000_we(GPIOf0000000_we), .GPIOe0000000_we(GPIOe0000000_we),
  .counter_we(counter_we),  .Peripheral_in(Peripheral_in));
Multi_8CH32 u5(.clk(~Clk_CPU), .rst(rst), .EN(GPIOe0000000_we), 
  .Test(SW[7:5]), .point_in({clkdiv[31:0],clkdiv[31:0]}),
  .LES(64'b0), .Data0(Peripheral_in), 
  .data1({2'b0,PC_out_IF[31:2]}), .data2(spo), 
  .data3(counter_out), .data4(Addr_out), 
  .data5(Data_out), .data6(Cpu_data4bus), 
  .data7(PC_out_IF), .point_out(point_out), 
  .LE_out(LE_out), .Disp_num(Disp_num));
Seg7_Dev u6(.disp_num(Disp_num),.point(point_out),
  .les(LE_out),.scan(clkdiv[18:16]),
  .AN(AN),.segment(segment));
SPIO u7(.clk(~Clk_CPU), .rst(rst), 
  .Start(clkdiv[20]), .EN(GPIOf0000000_we), 
  .P_Data(Peripheral_in), .counter_set(counter_set), .LED_out(LED_out) 
  /*,led_clk, led_sout, led_clrn, LED_PEN, GPIOf0*/);
clk_div u8(.clk(clk_100mhz),.rst(rst),
  .SW2(SW_OK[2]),.SW8(SW_OK[8]),.STEP(SW_OK[10]),
  .clkdiv(clkdiv),.Clk_CPU(Clk_CPU));
SAnti_jitter u9(.clk(clk_100mhz), .RSTN(RSTN), /*readn,*/ 
  .Key_y(BTN_y), /*Key_x,*/ .SW(SW), /*Key_out, Key_ready,*/ 
  /*pulse_out,*/ .BTN_OK(BTN_OK), .SW_OK(SW_OK), /*CR,*/ .rst(rst));
Counter_x u10(.clk(~Clk_CPU), .rst(rst), 
  .clk0(clkdiv[6]), .clk1(clkdiv[9]), .clk2(clkdiv[11]), 
  .counter_we(counter_we), .counter_val(Peripheral_in), .counter_ch(counter_set), 
  .counter0_OUT(counter0_OUT), .counter1_OUT(counter1_OUT), 
  .counter2_OUT(counter2_OUT), .counter_out(counter_out));
VGA u11(.clk_25m(clkdiv[1]), .clk_100m(clk_100mhz),
  .rst(rst),//.regfile(reg_out),
  `RegFile_Regs_Arguments,
  .PC_IF(PC_out_IF), .inst_IF(spo), 
  .PC_ID(PC_out_ID), .inst_ID(inst_ID),
  .PC_Ex(PC_out_Ex), .MemRW_Ex(MemRW_Ex),
  .MemRW_Mem(MemRW_Mem), .Data_out(Data_out),
  .Addr_out(Addr_out), .Data_out_WB(Data_out_WB),
  .hs(HSYNC), .vs(VSYNC),
  .vga_r(Red), .vga_g(Green), .vga_b(Blue));
endmodule
