`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2018 11:30:47 AM
// Design Name: 
// Module Name: lab11_tb
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


module lab11_tb;
    reg clk, start;
    reg [2:0] a, b;
    wire done;
    wire [5:0] s;

    lab11 DUT (clk, start, a, b, done, s);

    initial begin
        clk = 0; start = 0; a = 3'b111; b = 3'b101;
        #30 start = 1;
        #10 start = 0;
        #100 start = 1; a = 3'b100; b = 3'b001;
        #10 start = 0;
        #100 start = 1; a = 3'b111; b = 3'b100;
        #10 start = 0;
        #240 $finish();
    end

    always #5 clk <= ~clk;
endmodule
