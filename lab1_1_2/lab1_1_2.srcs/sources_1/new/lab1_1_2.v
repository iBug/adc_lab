`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 10:58:52 AM
// Design Name: 
// Module Name: lab1_1_2
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


module lab1_1_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    wire s_not;
    wire [1:0] x_out, y_out;
    not (s_not, s);
    and a0[1:0] (x_out, x, s_not);
    and a1[1:0] (y_out, y, s);
    or o1[1:0] (m, x_out, y_out);
endmodule
