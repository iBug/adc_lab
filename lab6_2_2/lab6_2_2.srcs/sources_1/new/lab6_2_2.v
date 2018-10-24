`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 11:07:52 PM
// Design Name: 
// Module Name: lab6_2_2
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


module D_ff(
    input D,
    input clk,
    input clr_n,
    output reg Q
    );
    
    always @ (posedge clk) begin
        if (~clr_n)
            Q <= 0;
        else
            Q <= D;
    end
endmodule

module T_ff(
    input T,
    input clk,
    input clr_n,
    output Q
    );
    
    wire D;
    xor xor0(D, T, Q);
    D_ff(D, clk, clr_n, Q);
endmodule

module lab6_2_2(
    input clk,
    input E,
    input clear_n,
    output [7:0] Q
    );
    
    wire [7:0] an;
    assign an[0] = E;
    assign an[1] = an[0] & Q[0];
    assign an[2] = an[1] & Q[1];
    assign an[3] = an[2] & Q[2];
    assign an[4] = an[3] & Q[3];
    assign an[5] = an[4] & Q[4];
    assign an[6] = an[5] & Q[5];
    assign an[7] = an[6] & Q[6];
    
    T_ff t0(an[0], clk, clear_n, Q[0]);
    T_ff t1(an[1], clk, clear_n, Q[1]);
    T_ff t2(an[2], clk, clear_n, Q[2]);
    T_ff t3(an[3], clk, clear_n, Q[3]);
    T_ff t4(an[4], clk, clear_n, Q[4]);
    T_ff t5(an[5], clk, clear_n, Q[5]);
    T_ff t6(an[6], clk, clear_n, Q[6]);
    T_ff t7(an[7], clk, clear_n, Q[7]);
endmodule
