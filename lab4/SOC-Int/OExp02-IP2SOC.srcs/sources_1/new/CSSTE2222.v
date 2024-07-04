`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 19:33:55
// Design Name: 
// Module Name: CSSTE
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


module CSSTE(
input clk_100mhz,
input RSTN,
input [3:0] BTN_y,
input [15:0] SW,
output [3:0] Blue,
output [3:0] Green,
output [3:0] Red,
output HSYNC,
output VSYNC,
output LED_PEN,
// output SEG_PEN,
output led_clk,
output led_clrn,
output led_sout,
// output seg_clk,
// output seg_clrn,
// output seg_sout,
output [7:0] AN,//add seg7
output [7:0] segment//add seg7
);


wire [0:0]BTN_OK0_Dout;
  wire [3:0]Key_y_0_1;
  wire [9:0]PC11_2_Dout;
  wire [29:0]PC31_2_Dout;
  wire [31:0]U3_douta;
  wire RSTN_0_1;
  wire [15:0]SW_0_1;
  wire U10_counter0_OUT;
  wire U10_counter1_OUT;
  wire U10_counter2_OUT;
  wire [31:0]U10_counter_out;
  wire [31:0]U1_Addr_out;
  wire [31:0]U1_Data_out;
  wire [31:0]U1_PC_out;
  wire [31:0]U2_spo;
  wire U4_GPIOe0000000_we;
  wire U4_GPIOf0000000_we;
  wire [31:0]U4_Peripheral_in;
  wire U4_counter_we;
  wire [31:0]U5_Disp_num;
  wire [7:0]U5_LE_out;
  wire [7:0]U5_point_out;
  wire U6_SEG_PEN;
  wire U6_seg_clk;
  wire U6_seg_clrn;
  wire U6_seg_sout;
  wire U7_LED_PEN;
  wire [15:0]U7_LED_out;
  wire [1:0]U7_counter_set;
  wire U7_led_clk;
  wire U7_led_clrn;
  wire U7_led_sout;
  wire U8_Clk_CPU;
  wire [31:0]U8_clkdiv;
  wire [3:0]U9_BTN_OK;
  wire [15:0]U9_SW_OK;
  wire U9_rst;
  wire VGA_0_hs;
  wire [3:0]VGA_0_vga_b;
  wire [3:0]VGA_0_vga_g;
  wire [3:0]VGA_0_vga_r;
  wire VGA_0_vs;
  wire [1:0]b2_0_dout;
  wire [63:0]b64_0_dout;
  wire clk_0_1;
  wire [0:0]div11_Dout;
  wire [0:0]div1_Dout;
  wire [0:0]div20_Dout;
  wire [0:0]div25_Dout;
  wire [63:0]div31_31_dout;
  wire [0:0]div6_Dout;
  wire [0:0]div9_Dout;
  wire U1_MemRW;
  wire [0:0]sw0_Dout;
  wire [0:0]sw2_Dout;
  wire [2:0]sw7_5_Dout;
  wire [0:0]sw8_Dout;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [31:0]xlconcat_0_dout;
  wire [9:0]xlslice_0_Dout;

  assign Blue[3:0] = VGA_0_vga_b;
  assign Green[3:0] = VGA_0_vga_g;
  assign HSYNC = VGA_0_hs;
  assign Key_y_0_1 = BTN_y[3:0];
  assign LED_PEN = U7_LED_PEN;
  assign RSTN_0_1 = RSTN;
  assign Red[3:0] = VGA_0_vga_r;
  assign SEG_PEN = U6_SEG_PEN;
  assign SW_0_1 = SW[15:0];
  assign VSYNC = VGA_0_vs;
  assign clk_0_1 = clk_100mhz;
  assign led_clk = U7_led_clk;
  assign led_clrn = U7_led_clrn;
  assign led_sout = U7_led_sout;
  assign seg_clk = U6_seg_clk;
  assign seg_clrn = U6_seg_clrn;
  assign seg_sout = U6_seg_sout;
  assign BTN_OK0_Dout=U9_BTN_OK[0];
//   xlslice BTN_OK0
//        (.Din(U9_BTN_OK),
//         .Dout(BTN_OK0_Dout));
  assign PC11_2_Dout=U1_PC_out[11:2];
//   xlslice_0_3 PC11_2
//        (.Din(U1_PC_out),
//         .Dout(PC11_2_Dout));
  assign PC31_2_Dout=U1_PC_out[31:2];
//   xlslice_0_7 PC31_2
//        (.Din(U1_PC_out),
//         .Dout(PC31_2_Dout));
  SCPU U1
       (.Addr_out(U1_Addr_out),
        .Data_in(U3_douta),
        .Data_out(U1_Data_out),
        .MIO_ready(1'b0),
        .MemRW(U1_MemRW),
        .PC_out(U1_PC_out),
        .clk(U8_Clk_CPU),
        .inst_in(U2_spo),
        .rst(U9_rst));

  ROM U2
       (.a(PC11_2_Dout),
        .spo(U2_spo));
  RAM_B U3
       (.addra(xlslice_0_Dout),
        .clka(util_vector_logic_1_Res),
        .dina(U1_Data_out),
        .douta(U3_douta),
        .wea(U1_MemRW));
  wire [31:0] U4_ram_data_in;
  MIO_BUS U4
       (.clk(clk_0_1),
        .rst(U9_rst),
        .BTN(U9_BTN_OK),
        .SW(U9_SW_OK),
        .mem_w(U1_MemRW),
        .Cpu_data2bus(U1_Data_out),
        .addr_bus(U1_Addr_out),
        .ram_data_out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .led_out(U7_LED_out),
        .counter_out(U10_counter_out),
        .counter0_out(U10_counter0_OUT),
        .counter1_out(U10_counter1_OUT),
        .counter2_out(U10_counter2_OUT),
        .GPIOe0000000_we(U4_GPIOe0000000_we),
        .GPIOf0000000_we(U4_GPIOf0000000_we),
        .Peripheral_in(U4_Peripheral_in),
        
        
        
        
        
        .counter_we(U4_counter_we),
        .ram_data_in(U4_ram_data_in)
        
        
        );
    
  Multi_8CH32 U5
       (.Data0(U4_Peripheral_in),
        .Disp_num(U5_Disp_num),
        .EN(U4_GPIOe0000000_we),
        .LES(b64_0_dout),
        .LE_out(U5_LE_out),
        .Test(sw7_5_Dout),
        .clk(util_vector_logic_0_Res),
        .data1(xlconcat_0_dout),
        .data2(U2_spo),
        .data3(U10_counter_out),
        .data4(U1_Addr_out),
        .data5(U1_Data_out),
        .data6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data7(U1_PC_out),
        .point_in(div31_31_dout),
        .point_out(U5_point_out),
        .rst(U9_rst));
  Seg7_Dev U6
       (.disp_num(U5_Disp_num),
       .point(U5_point_out),
        .les(U5_LE_out),
        .scan(U8_clkdiv[18:16]), //???
        .AN(AN),
        .segment(segment)
     );
  SPIO U7
       (.EN(U4_GPIOf0000000_we),
        .LED_PEN(U7_LED_PEN),
        .LED_out(U7_LED_out),
        .P_Data(U4_Peripheral_in),
        .Start(div20_Dout),
        .clk(util_vector_logic_0_Res),
        .counter_set(U7_counter_set),
        .led_clk(U7_led_clk),
        .led_clrn(U7_led_clrn),
        .led_sout(U7_led_sout),
        .rst(U9_rst));
  clk_div U8
       (.Clk_CPU(U8_Clk_CPU),
        .STEP(BTN_OK0_Dout),
        .SW2(sw2_Dout),
        .SW8(sw8_Dout),
        .clk(clk_0_1),
        .clkdiv(U8_clkdiv),
        .rst(U9_rst));
  SAnti_jitter U9
       (.BTN_OK(U9_BTN_OK),
        .Key_y(Key_y_0_1),
        .RSTN(RSTN_0_1),
        .SW(SW_0_1),
        .SW_OK(U9_SW_OK),
        .clk(clk_0_1),
        .readn(1'b0),
        .rst(U9_rst));
  Counter_x U10
       (.clk(util_vector_logic_0_Res),
        .clk0(div6_Dout),
        .clk1(div9_Dout),
        .clk2(div11_Dout),
        .counter0_OUT(U10_counter0_OUT),
        .counter1_OUT(U10_counter1_OUT),
        .counter2_OUT(U10_counter2_OUT),
        .counter_ch(U7_counter_set),
        .counter_out(U10_counter_out),
        .counter_val(U4_Peripheral_in),
        .counter_we(U4_counter_we),
        .rst(U9_rst));
  VGA U11
       (.clk_25m(div1_Dout),
        .clk_100m(clk_0_1),
        .rst(U9_rst),
        .pc(U1_PC_out),
        .inst(U2_spo),
        .alu_res(U1_Addr_out),
        .mem_wen(U1_MemRW),
        .dmem_o_data(U3_douta),
        .dmem_i_data(U4_ram_data_in),
        .dmem_addr(U1_Addr_out),
        .vs(VGA_0_vs),
        .hs(VGA_0_hs),
        .vga_b(VGA_0_vga_b),
        .vga_g(VGA_0_vga_g),
        .vga_r(VGA_0_vga_r)
      );  
     assign b2_0_dout=2'b0;
//  xlconstant_0_1 b2_0
//       (.dout(b2_0_dout));
     assign b64_0_dout=64'b0;
//   xlconstant b64_0
//        (.dout(b64_0_dout));
     assign div1_Dout=U8_clkdiv[1];
//   div11_1 div1
//        (.Din(U8_clkdiv),
//         .Dout(div1_Dout));
     assign div11_Dout=U8_clkdiv[11];
//   xlslice_0_6 div11
//        (.Din(U8_clkdiv),
//         .Dout(div11_Dout));
     assign div20_Dout=U8_clkdiv[20];
     assign div25_Dout=U8_clkdiv[25];
//   div20_0 div25
//        (.Din(U8_clkdiv),
//         .Dout(div25_Dout));
     assign div31_31_dout={U8_clkdiv[31:0],U8_clkdiv[31:0]};
//   xlconcat div31_31
//        (.In0(U8_clkdiv),
//         .In1(U8_clkdiv),
//         .dout(div31_31_dout));
  assign div6_Dout=U8_clkdiv[6];
//  xlslice_0_4 div6
//       (.Din(U8_clkdiv),
//        .Dout(div6_Dout));
  assign div9_Dout=U8_clkdiv[9];
//  xlslice_0_5 div9
//       (.Din(U8_clkdiv),
//        .Dout(div9_Dout));
  assign sw0_Dout=U9_SW_OK[0]; //?????
//   div20_1 sw0
//        (.Din(U9_SW_OK),
//         .Dout(sw0_Dout));
  assign sw2_Dout=U9_SW_OK[2];
//   xlslice_0_2 sw2
//        (.Din(U9_SW_OK),
//         .Dout(sw2_Dout));
  assign sw7_5_Dout=U9_SW_OK[7:5];
//   sw0_0 sw7_5
//        (.Din(U9_SW_OK),
//         .Dout(sw7_5_Dout));
  assign sw8_Dout=U9_SW_OK[8];
//   sw2_0 sw8
//        (.Din(U9_SW_OK),
//         .Dout(sw8_Dout));
  assign util_vector_logic_0_Res=~U8_Clk_CPU;
//  util_vector_logic util_vector_logic_0
//       (.Op1(U8_Clk_CPU),
//        .Res(util_vector_logic_0_Res));
    assign util_vector_logic_1_Res=~U8_Clk_CPU;
//  util_vector_logic_1_0 util_vector_logic_1
//       (.Op1(U8_Clk_CPU),
//        .Res(util_vector_logic_1_Res));
   assign xlconcat_0_dout={b2_0_dout,PC31_2_Dout};
//   xlconcat_0_1 xlconcat_0
//        (.In0(PC31_2_Dout),
//         .In1(b2_0_dout),
//         .dout(xlconcat_0_dout));
  assign xlslice_0_Dout=U1_Addr_out[11:2];
//   xlslice_0_8 xlslice_0
//        (.Din(U1_Addr_out),
//         .Dout(xlslice_0_Dout));
endmodule

