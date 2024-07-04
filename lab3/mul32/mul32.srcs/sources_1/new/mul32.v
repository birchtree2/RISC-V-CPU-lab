`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 13:20:35
// Design Name: 
// Module Name: mul32
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


module mul32(
input clk,
input rst,
input [31:0] multiplicand, //被乘数
input [31:0] multiplier, //乘数
input start, //计算开始
output reg[63:0] product, //积
output finish //计算完成
);
reg [5:0] cnt;
reg [31:0] x;
always @ (posedge start or posedge rst) begin
    if (rst) begin
        cnt <= 0;
        product <= 0;
    end
    if (start) begin
        cnt <= 0;
        x <= multiplicand;
        product <= {32'b0,multiplier}; //低32位放乘数
    end
end
always @ (posedge clk) begin
    if(start && !finish) begin
        if (cnt<32) begin
            //如果乘数这一位是1，就把被乘数加到左半部分
            product[63:32] = product[0]?(product[63:32]+x):product[63:32];
            product = {1'b0,product[63:1]};//右移一位
            cnt = cnt + 1;
        end
    end
end

assign finish=(cnt==6'd32)?1:0;
endmodule
