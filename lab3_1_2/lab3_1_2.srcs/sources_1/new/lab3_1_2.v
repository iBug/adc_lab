`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 12:38:40 PM
// Design Name: 
// Module Name: lab3_1_2
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


module lab3_1_2(
    input g1, g2a_n, g2b_n,
    input [2:0] x,
    output [7:0] y
    );
    
    decoder_74138 core(x, y, g1, g2a_n, g2b_n);
endmodule
