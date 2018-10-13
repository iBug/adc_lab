`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 09:38:49 PM
// Design Name: 
// Module Name: lab2_3_1
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


module lab2_3_1(
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    input ci,
    output co,
    input sub
    );
    
    wire [3:0] c, b_s, sub_ext;
    wire ci_s, co_s;
    assign sub_ext = {sub, sub, sub, sub};
    assign co_s = c[3];
    assign co = co_s ^ sub;
    assign ci_s = ci ^ sub;
    assign b_s = b ^ sub_ext;
    full_adder fa0(a[0], b_s[0], ci_s, s[0], c[0]);
    full_adder fa1(a[1], b_s[1], c[0], s[1], c[1]);
    full_adder fa2(a[2], b_s[2], c[1], s[2], c[2]);
    full_adder fa3(a[3], b_s[3], c[2], s[3], c[3]);
endmodule
