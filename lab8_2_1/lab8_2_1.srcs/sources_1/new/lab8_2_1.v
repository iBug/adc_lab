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

    wire clk;
    wire CLK5MHZ;
    reg clk_e;
    integer count;
    assign clk = clk_e & en;
    clk_5MHz clk_catalog (CLK5MHZ, CLK100MHZ);

    wire [3:0] N0, N1;
    wire clk0, clk1, carry0, carry1;
    wire carry_m;

    assign clk0 = clk;
    assign clk1 = (reset | carry_m) & clk;

    // These two lines buffer the carry so it goes high *after* overflow
    D_trigger carry_mm (carry0, ~clk, carry_m),
              carry_out (carry, ~clk, carry_1);
    counter_4b counter0 (clk0, reset, carry0, N0),
               counter1 (clk1, reset, carry1, N1);

    seg_manager seg_core (N0, N1, CLK5MHZ, SEG, AN);

    initial begin
        clk_e <= 0;
        count <= 0;
    end

    always @(posedge CLK5MHZ) begin
        if (en)
            count = count + 1;
        else
            count = 0;
        if (count >= 1250000) begin
            count <= 0;
            clk_e <= ~clk_e;
        end
    end
endmodule
