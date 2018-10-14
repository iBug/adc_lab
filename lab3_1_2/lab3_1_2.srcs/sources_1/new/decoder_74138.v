`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 12:43:14 PM
// Design Name: 
// Module Name: decoder_74138
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


module decoder_74138(
    input [2:0] x,
    output [7:0] y,
    input g1,
    input g2a_n,
    input g2b_n
    );
    
    wire enable = {g1, g2a_n, g2b_n} == 3'b011;
    wire [7:0] enable_s = {enable, enable, enable, enable, enable, enable, enable, enable};
    wire [7:0] y_s;
    
    decoder_3to8 decoder(x, y_s);
    assign y = (~y_s) | (~enable_s);
endmodule
