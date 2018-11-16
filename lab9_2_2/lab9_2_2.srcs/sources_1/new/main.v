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


(* use_dsp48 = "yes" *)
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


(* use_dsp48 = "yes" *)
module counter #(parameter COUNT_SIZE = 8)(
    input clk,
    input en,
    input up,
    input reset,
    output reg [COUNT_SIZE - 1: 0] s
    );

    always @(posedge clk) begin
        if (reset) begin
            s <= 0;
        end
        else if (en) begin
            if (up)
                s <= s + 1;
            else
                s <= s - 1;
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

    counter (clk, Enable, Up, Reset, S);
endmodule
