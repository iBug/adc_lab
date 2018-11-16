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
        if (n >= 250000) begin
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

    wire CLK5MHZ, CLK10HZ;
    wire clk;
    clk_5MHz ip_clock (CLK5MHZ, CLK100MHZ);
    clock_divider clock (CLK5MHZ, CLK10HZ);

    assign clk = (CLK10HZ & ~Reset) | (CLK5MHZ & Reset);

    reg [3:0] num0, num1, num2, num3;
    wire [3:0] Q0, Q1, Q2, Q3;
    wire th0, th1, th2, th3;
    ip_counter_10 n0 (clk, Enable, Reset, th0, Q0);
    ip_counter_10 n1 (clk, Enable & th0, Reset, th1, Q1);
    ip_counter_6 n2 (clk, Enable & th0 & th1, Reset, th2, Q2);
    ip_counter_10 n3 (clk, Enable & th0 & th1 & th2, Reset, th3, Q3);

    seg_manager seg (CLK5MHZ, num0, num1, num2, num3, SEG, DP, AN);

    always @(Q0 or Q1 or Q2 or Q3 or Hold) begin
        if (~Hold) begin
            num0 <= Q0;
            num1 <= Q1;
            num2 <= Q2;
            num3 <= Q3;
        end
    end
endmodule
