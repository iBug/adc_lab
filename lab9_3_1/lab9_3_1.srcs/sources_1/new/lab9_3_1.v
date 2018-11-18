`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 07:24:43 PM
// Design Name: 
// Module Name: lab9_3_1
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
    output reg clk
    );

    integer n;
    initial begin
        clk = 0;
        n = 0;
    end

    always @(posedge CLK5MHZ) begin
        n = n + 1;
        if (n >= 25000) begin
            n = 0;
            clk = ~clk;
        end
    end
endmodule


module lab9_3_1(
    input CLK100MHZ,
    input Enable,
    input Hold,
    input Reset,
    output [6:0] SEG,
    output DP,
    output [7:0] AN
    );

    wire CLK5MHZ, CLK100HZ;
    wire clk;
    clk_5MHz ip_clock (CLK5MHZ, CLK100MHZ);
    clock_divider clock (CLK5MHZ, CLK100HZ);

    assign clk = (CLK100HZ & ~Reset) | (CLK5MHZ & Reset);

    reg [3:0] num0, num1, num2, num3, num4, num5, num6, num7;
    wire [3:0] Q0, Q1, Q2, Q3, Q4, Q5;
    wire [7:0] Q6;
    wire th0, th1, th2, th3, th4, th5, th6;
    ip_counter_10 n0 (clk, Enable, Reset, th0, Q0);
    ip_counter_10 n1 (clk, Enable & th0, Reset, th1, Q1);
    ip_counter_10 n2 (clk, Enable & th0 & th1, Reset, th2, Q2);
    ip_counter_6 n3 (clk, Enable & th0 & th1 & th2, Reset, th3, Q3);
    ip_counter_10 n4 (clk, Enable & th0 & th1 & th2 & th3, Reset, th4, Q4);
    ip_counter_6 n5 (clk, Enable & th0 & th1 & th2 & th3 & th4, Reset, th5, Q5);
    ip_counter_24 n6 (clk, Enable & th0 & th1 & th2 & th3 & th4 & th5, Reset, th6, Q6);

    seg_manager seg (CLK5MHZ, num0, num1, num2, num3, num4, num5, num6, num7, SEG, DP, AN);

    always @(Q0 or Q1 or Q2 or Q3 or Q4 or Q5 or Hold) begin
        if (~Hold) begin
            num0 <= Q0;
            num1 <= Q1;
            num2 <= Q2;
            num3 <= Q3;
            num4 <= Q4;
            num5 <= Q5;
            num6 <= Q6 % 10;
            num7 <= Q6 / 10;
        end
    end
endmodule
