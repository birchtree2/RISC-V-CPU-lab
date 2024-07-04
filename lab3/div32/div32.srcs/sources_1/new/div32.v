`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 18:52:53
// Design Name: 
// Module Name: div32
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


module div32(
input clk,
input rst,
input start,
input[31:0] dividend, //被除数
input[31:0] divisor, //除数
output [31:0] quotient, //商
output [31:0] remainder, //余数
output reg finish
    );
    reg [31:0] divisor_reg;
    reg [63:0] res;
    reg [5:0] cnt;
    always @ (posedge start or posedge rst) begin
        if (rst) begin
            cnt <= 0;
            res <= 0;
            finish <=0;
        end
        if (start) begin
            divisor_reg <= divisor;
            cnt <= 0;
            res <= {31'b0,dividend,1'b0}; //低32位放被除数,然后rem<<1
            // res <= {31'b0,dividend};
            finish <=0;
        end
    end
    always @ (posedge clk ) begin
        if(start && ! finish) begin
            res[63:32]=res[63:32]-divisor_reg;//Rem-=Div
            if(res[63]==1) begin //结果是负数，Rem<0
                res[63:32]=res[63:32]+divisor_reg;//回退
                res={res[62:0],1'b0};//shift left, quotient=0
            end
            else begin
                res={res[62:0],1'b1};//quotient 1
            end
            cnt=cnt+1;
            if(cnt==32) begin
                res[63:32] <= {1'b0,res[63:33]};//remainder shift right
                finish <= 1;
            end
        end
    end
    assign remainder=res[63:32];
    assign quotient=res[31:0];
endmodule
