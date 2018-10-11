`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 07:52:54 PM
// Design Name: 
// Module Name: lab1_4_1
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


module lab1_4_1(
    input u,
    input v,
    input w,
    input s0,
    input s1,
    output m
    );
    
    wire so;
    multiplexer_2_to_1(u, v, s0, so);
    multiplexer_2_to_1(so, w, s1, m);
endmodule
