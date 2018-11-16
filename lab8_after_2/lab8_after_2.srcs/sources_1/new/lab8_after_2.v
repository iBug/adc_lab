`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 02:44:36 PM
// Design Name: 
// Module Name: lab8_after_2
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

module lab8_after_2(
    input en,
    input reset,
    output carry,
    output [6:0] SEG,
    output [7:0] AN,
    input CLK100MHZ
    );

    wire clk;
    wire CLK5MHZ;
    reg clk_e;
    integer count;
    assign clk = clk_e & en;
    clk_5MHz clk_catalog (CLK5MHZ, CLK100MHZ);

    wire [3:0] N0, N1;
    wire c_clk, c_ce, th0, th1;
    assign carry = th1;

    assign c_clk = (clk & ~reset) | (CLK5MHZ & reset);

    counter_4b counter0 (CLK5MHZ, c_ce, reset, th0, N0),
               counter1 (CLK5MHZ, th0 & c_ce, reset, th1, N1);

    seg_manager seg_core (N0, N1, CLK5MHZ, SEG, AN);

    initial begin
        count <= 0;
    end

    parameter CLK_CYCLE = 1000000; // Change to 5M for 1 Hz clock
    assign c_ce = (count == (CLK_CYCLE - 1));
    always @(posedge CLK5MHZ) begin
        if (en) begin
            count = count + 1;
            if (count >= CLK_CYCLE)
                count = 0;
        end
        else
            count = 0;
    end
endmodule
