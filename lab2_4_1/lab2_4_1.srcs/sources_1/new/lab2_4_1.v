`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 11:23:52 PM
// Design Name: 
// Module Name: lab2_4_1
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


module lab2_4_1(
    input [3:0] a,
    input [3:0] b,
    input ci,
    input sub,
    output [3:0] s,
    output co
    );
    
    wire [3:0] a_s, b_s, sub_s;
    wire ci_s, co_s;
    
    assign sub_s = {sub, sub, sub, sub};
    assign ci_s = ci ^ sub;
    assign co = co_s ^ sub;
    assign a_s = a;
    assign b_s = b ^ sub_s;
    fa_4b fa(a_s, b_s, ci_s, s, co_s);
endmodule
