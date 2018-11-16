`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2018 11:38:55 AM
// Design Name: 
// Module Name: full_adder
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


module carry_lookahead #(parameter N_DELAY = 2, A_DELAY = 2, X_DELAY = 2) (
    input [3:0] p,
    input [3:0] g,
    output [3:0] c,
    input ci,
    output co
    );

    wire p01, p02, p03, p04, p12, p13, p14, p23, p24, p34;

    and #(A_DELAY) p_01 (p01, ci, p[0]);
    and #(A_DELAY) p_02 (p02, ci, p[0], p[1]);
    and #(A_DELAY) p_03 (p03, ci, p[0], p[1], p[2]);
    and #(A_DELAY) p_04 (p04, ci, p[0], p[1], p[2], p[3]);
    and #(A_DELAY) p_12 (p12, g[0], p[1]);
    and #(A_DELAY) p_13 (p13, g[0], p[1], p[2]);
    and #(A_DELAY) p_14 (p14, g[0], p[1], p[2], p[3]);
    and #(A_DELAY) p_23 (p23, g[1], p[2]);
    and #(A_DELAY) p_24 (p24, g[1], p[2], p[3]);
    and #(A_DELAY) p_34 (p34, g[2], p[3]);

    or #(A_DELAY) c_0 (c[0], ci);
    or #(A_DELAY) c_1 (c[1], g[0], p01);
    or #(A_DELAY) c_2 (c[2], g[1], p02, p12);
    or #(A_DELAY) c_3 (c[3], g[2], p03, p13, p23);
    or #(A_DELAY) c_o (co, g[3], p04, p14, p24, p34);
endmodule


module fa_1b #(parameter N_DELAY = 2, A_DELAY = 2, X_DELAY = 2)(
    input a, b, c,
    output p, g, s);
    
    wire si;

    xor #(X_DELAY) (si, a, b);
    xor #(X_DELAY) (s, si, c);
    or #(A_DELAY) (p, a, b);
    and #(A_DELAY) (g, a, b);
endmodule


module full_adder #(parameter N_DELAY = 2, A_DELAY = 2, X_DELAY = 2)(
    input [3:0] a, b,
    input ci,
    output [3:0] s,
    output co
    );

    wire [3:0] p, g, c;

    carry_lookahead #(N_DELAY, A_DELAY, X_DELAY)
        carry_la (p, g, c, ci, co);
    fa_1b #(N_DELAY, A_DELAY, X_DELAY)
        fa0 (a[0], b[0], c[0], p[0], g[0], s[0]),
        fa1 (a[1], b[1], c[1], p[1], g[1], s[1]),
        fa2 (a[2], b[2], c[2], p[2], g[2], s[2]),
        fa3 (a[3], b[3], c[3], p[3], g[3], s[3]);
endmodule
