`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2018 02:22:11 PM
// Design Name: 
// Module Name: lab10_2_1_tb
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


module lab10_2_1_tb;
    wire yout;
    reg clk, reset;
    reg [1:0] x;

    lab10_2_1 DUT (clk, reset, x, yout);

    initial begin
        clk = 0; reset = 1; x = 2'b00;
        #20 reset = 0;
        #20 x = 2'b11;
        #10 x = 2'b10;
        #10 x = 2'b00;
        #20 x = 2'b10;
        #10 x = 2'b00;
        #10 x = 2'b11;
        #10 x = 2'b00;
        #10 x = 2'b01;
        #10 x = 2'b00;
        #10 x = 2'b10;
        #10 x = 2'b11;
        #10 x = 2'b00;
        #10 reset = 1;
        #10 reset = 0;
        #10 x = 2'b10;
        #30 x = 2'b00;
        #30 $finish();
    end

    always #5 clk <= ~clk;
endmodule
