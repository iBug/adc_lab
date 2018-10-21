`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 02:09:21 PM
// Design Name: 
// Module Name: lab6_1_1_tb
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


module lab6_1_1_tb;
    reg clk, load, reset;
    reg [3:0] D;
    wire [3:0] Q;
    
    lab6_1_1 DUT (.D(D), .clk(clk), .reset(reset), .load(load), .Q(Q));
    
    initial begin
        clk = 0; load = 0; reset = 0; D = 4'd0;
        #10 clk = 1;
        #10 clk = 0; D = 4'd5;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 clk = 0; load = 0; D = 4'd9;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 clk = 0; load = 0;
        #10 clk = 1;
        #5 reset = 1;
        #5 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #5 load = 1;
        #5 clk = 0;
        #10 clk = 1;
        #5 load = 0;
        #5 clk = 0;
        #10 clk = 1;
        #10 clk = 0; reset = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 $finish();
    end
endmodule
