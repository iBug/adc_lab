`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2018 03:06:18 PM
// Design Name: 
// Module Name: lab10_3_1_tb
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


module lab10_3_1_tb;
    reg clk, reset;
    wire [2:0] x;

    lab10_3_1 DUT (clk, reset, x);

    initial begin
        clk = 0; reset = 1;
        #20 reset = 0;
        #100 reset = 1;
        #20 reset = 0;
        #60 $finish();
    end

    always #5 clk <= ~clk;
endmodule
