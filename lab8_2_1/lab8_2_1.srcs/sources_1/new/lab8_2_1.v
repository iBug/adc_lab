`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2018 09:08:01 AM
// Design Name: 
// Module Name: lab8_2_1
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

module D_trigger(input D, input clk, input reset, output reg Q);
    initial Q <= 0;
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule

module dec_counter(input clk, input reset, output carry_s, output [3:0] N);
    wire Q, carry;
    counter_4b c (clk, reset, carry, N);
    // Double-buffer with inverted clock so carry signal goes at 0 not 9
    D_trigger step_1 (carry, ~clk, reset, Q),
              step_2 (Q, clk, reset, carry_s);
endmodule

module lab8_2_1(
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
    wire clk0, clk1, carry0, carry1;
    assign carry = carry1;

    assign clk0 = (clk & ~reset) | (CLK5MHZ & reset);
    assign clk1 = (carry0 & ~reset) | (CLK5MHZ & reset);

    dec_counter counter0 (clk0, reset, carry0, N0),
                counter1 (clk1, reset, carry1, N1);

    seg_manager seg_core (N0, N1, CLK5MHZ, SEG, AN);

    initial begin
        count <= 0;
        clk_e <= 0;
    end

    parameter CLK_CYCLE = 1000000; // Change to 5M for 1 Hz clock
    always @(posedge CLK5MHZ) begin
        if (en) begin
            count = count + 1;
            if (count >= CLK_CYCLE / 2) begin
                count <= 0;
                clk_e <= ~clk_e;
            end
        end
        else begin
            count = 0;
            clk_e <= 0;
        end
    end
endmodule
