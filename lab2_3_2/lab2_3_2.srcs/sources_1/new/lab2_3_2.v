`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 10:50:55 PM
// Design Name: 
// Module Name: lab2_3_2
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


module lab2_3_2(
    input [3:0] a,
    input [3:0] b,
    input ci,
    input sub,
    output [6:0] SEG,
    output [7:0] AN,
    output led,
    output co
    );
    
    wire [3:0] c, s, b_s, sub_ext;
    wire ci_s, co_s;
    wire [3:0] to_7seg;
    
    assign AN = 8'hFE;
    
    assign sub_ext = {sub, sub, sub, sub};
    assign co_s = c[3];
    assign co = co_s ^ sub;
    assign ci_s = ci ^ sub;
    assign b_s = b ^ sub_ext;
    full_adder fa0(a[0], b_s[0], ci_s, s[0], c[0]);
    full_adder fa1(a[1], b_s[1], c[0], s[1], c[1]);
    full_adder fa2(a[2], b_s[2], c[1], s[2], c[2]);
    full_adder fa3(a[3], b_s[3], c[2], s[3], c[3]);
    lab2_2_1_partA(s, led, to_7seg);
    bcd_to_7_seg(to_7seg, SEG);
endmodule
