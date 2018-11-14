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

module D_trigger(input D, input clk, output reg Q);
    initial Q <= 0;
    always @(posedge clk) Q <= D;
endmodule

module lab8_2_1(
    input en,
    input reset,
    output carry,
    output [6:0] SEG,
    output [7:0] AN,
    input CLK100MHZ
    );

    wire clk, clk_e;
    wire CLK5MHZ;
    integer count;
    assign clk = clk_e & en;
    clk_5MHz clk_catalog (CLK5MHZ, CLK100MHZ);

    wire [3:0] N0, N1;
    wire clk0, clk1, carry0, carry1;
    wire carry_m;

    assign clk0 = (clk & ~reset) | (CLK5MHZ & reset);
    assign clk1 = (carry_m & clk & ~reset) | (CLK5MHZ & reset);

    // These two lines buffer the carry so it goes high *after* overflow
    D_trigger carry_mm (carry0, ~clk, carry_m),
              carry_out (carry, ~clk, carry_1);
    counter_4b counter0 (clk0, reset, carry0, N0),
               counter1 (clk1, reset, carry1, N1);

    seg_manager seg_core (N0, N1, CLK5MHZ, SEG, AN);

    initial begin
        count <= 0;
    end

    parameter CLK_CYCLE = 2500000; // Change to 5M for 1 Hz clock
    assign clk_e = count >= CLK_CYCLE / 2;
    always @(posedge CLK5MHZ) begin
        if (en) begin
            count = count + 1;
            if (count >= CLK_CYCLE)
                count <= 0;
        end
        else
            count = 0;
    end
endmodule
