`timescale 1ns / 1ps
module IF_reg_ID(
  input clk_IFID,
  input rst_IFID,
  input en_IFID,
  input [31:0]PC_in_IFID,
  input [31:0]inst_in_IFID,
  input NOP_IFID,//如果=1就插入nop
  output reg [31:0]PC_out_IFID,
  output reg [31:0]inst_out_IFID,
  output reg valid_IFID
);

  
  always @(posedge clk_IFID or posedge rst_IFID) begin
    if (rst_IFID) begin
      PC_out_IFID<=32'b0;
      inst_out_IFID<=32'b0;
      valid_IFID<=0;
    end
    else if(NOP_IFID) begin
        PC_out_IFID<=32'h00000000;//PC=0,stall
        inst_out_IFID<=32'h00000013;//nop
        valid_IFID<=0;//valid=0
    end 
    else if(en_IFID) begin
        PC_out_IFID<=PC_in_IFID;
        inst_out_IFID<=inst_in_IFID;
        valid_IFID<=1;
      end
  end
endmodule
