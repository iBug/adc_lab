`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 12:26:29 PM
// Design Name: 
// Module Name: lab1_2_2
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


module lab1_2_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    wire [1:0] sb;
    buf (sb[1], sb[0], s);
    assign #3 m = (~sb & x) | (sb & y);
endmodule
