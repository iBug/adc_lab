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

    wire [3:0] num0, num1, num2, num3;
    wire th0, th1, th2, th3;
    ip_counter_10 n0 (clk, Enable, Reset, th0, num0);
    ip_counter_10 n1 (clk, Enable & th0, Reset, th1, num1);
    ip_counter_6 n2 (clk, Enable & th0 & th1, Reset, th2, num2);
    ip_counter_10 n3 (clk, Enable & th0 & th1 & th2, Reset, th3, num3);

    seg_manager seg (CLK5MHZ, num0, num1, num2, num3, SEG, DP, AN);
endmodule
