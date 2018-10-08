`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 10:24:35 AM
// Design Name: 
// Module Name: lab1_1_1
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


module lab1_1_1(
    input x,
    input y,
    input s,
    output m
    );
    wire s_not, x_out, y_out;
    not (s_not, s);
    and (x_out, x, s_not), (y_out, y, s);
    or (m, x_out, y_out);
endmodule
