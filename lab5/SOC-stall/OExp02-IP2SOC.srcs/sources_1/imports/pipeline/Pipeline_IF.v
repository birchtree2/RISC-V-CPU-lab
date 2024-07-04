`timescale 1ns / 1ps
module Pipeline_IF(
  input clk_IF,
  input rst_IF,
  input en_IF,
  input [31:0]PC_in_IF,
  input PCSrc,
  output reg [31:0]PC_out_IF
);
  
  always @(posedge clk_IF or posedge rst_IF) begin
    if(rst_IF) begin
      PC_out_IF <= 32'b0;
    end else if(en_IF) begin
      PC_out_IF <= PCSrc?PC_in_IF:PC_out_IF+4;
    end
  end
endmodule
