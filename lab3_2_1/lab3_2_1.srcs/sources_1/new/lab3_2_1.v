`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 01:14:01 PM
// Design Name: 
// Module Name: lab3_2_1
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


module lab3_2_1(
    input [7:0] x,
    output [2:0] y,
    input e_in,
    output e_out,
    output gs
    );
    
    encoder_8to3_prior core(e_in, x, y, gs, e_out);
endmodule
