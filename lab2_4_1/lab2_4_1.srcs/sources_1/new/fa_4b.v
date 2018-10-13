`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 11:29:21 PM
// Design Name: 
// Module Name: fa_4b
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


module fa_4b(
    input [3:0] a,
    input [3:0] b,
    input ci,
    output [3:0] s,
    output co
    );
    
    wire [3:0] p, g, c;
    
    carry_la_4b(p, g, ci, c, co);
    adder_pg a0(a[0], b[0], c[0], p[0], g[0], s[0]);
    adder_pg a1(a[1], b[1], c[1], p[1], g[1], s[1]);
    adder_pg a2(a[2], b[2], c[2], p[2], g[2], s[2]);
    adder_pg a3(a[3], b[3], c[3], p[3], g[3], s[3]);
endmodule
