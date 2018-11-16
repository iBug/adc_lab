`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 05:51:19 PM
// Design Name: 
// Module Name: lab9_2_1
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


(* use_dsp48 = "no" *)
module clock_div(
    input clk,
    input reset,
    output reg c
    );
    integer n;

    initial begin
        n = 0;
        c = 0;
    end

    parameter CYCLE = 1000000; // Change to 5M for 1 Hz clock
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            n = 0;
            c = 0;
        end
        else begin
            n = n + 1;
            if (n >= CYCLE / 2) begin
                n = 0;
                c = ~c;
            end
        end
    end
endmodule


module main(
    input CLK100MHZ,
    input Enable,
    input Up,
    input Reset,
    output [7:0] S
    );

    wire CLK5MHZ, clk;

    clk_5MHz (CLK5MHZ, CLK100MHZ);
    clock_div (CLK5MHZ, reset, clk);

    //counter (clk, Enable, Up, Reset, S);
    ip_counter (clk, Enable, Reset, Up, S);
endmodule
