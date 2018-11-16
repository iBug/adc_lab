`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 09:44:39 PM
// Design Name: 
// Module Name: lab9_3_3
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


module clock_divider(
    input CLK5MHZ,
    input reset,
    output reg clk
    );

    integer n;

    initial begin
        n = 0;
        clk = 0;
    end

    always @(posedge CLK5MHZ) begin
        n = n + 1;
        if (n >= 2500000) begin
            n = 0;
            clk = ~clk;
        end
    end
endmodule


module lab9_3_3(
    input CLK100MHZ,
    input Enable,
    input Reset,
    output [6:0] SEG,
    output DP,
    output [7:0] AN
    );

    wire CLK5MHZ, CLK1HZ, clk;
    clk_5MHz ip_clock (CLK5MHZ, CLK100MHZ);
    clock_divider (CLK5MHZ, Reset, CLK1HZ);
    assign clk = (CLK1HZ & ~Reset) | (CLK5MHZ & Reset);

    wire [5:0] Q0, Q1;
    wire [3:0] s0, s1, m0, m1;
    wire th0, th1;
    assign s0 = Q0 % 10;
    assign s1 = Q0 / 10;
    assign m0 = Q1 % 10;
    assign m1 = Q1 / 10;
    ip_counter_60 ss (clk, Enable, Reset, th0, Q0);
    ip_counter_60 mm (clk, Enable & th0, Reset, th1, Q1);

    seg_manager seg_core (CLK5MHZ, s0, s1, m0, m1, SEG, DP, AN);
endmodule
