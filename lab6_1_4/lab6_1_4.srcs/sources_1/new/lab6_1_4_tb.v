`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2018 12:51:36 PM
// Design Name: 
// Module Name: lab6_1_4_tb
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


module lab6_1_4_tb;
    reg clk, load, se, si;
    reg [3:0] pi;
    wire [3:0] rc;
    wire so;
    
    lab6_1_4 DUT(.clk(clk), .load(load), .se(se), .si(si), .pi(pi), .rc(rc), .so(so));
    
    initial begin
        clk = 0; load = 0; se = 0; si = 1; pi = 4'd0;
        #10 clk = 1;
        #10 clk = 0; pi = 4'd5;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 clk = 0; load = 0;
        #10 clk = 1;
        #10 clk = 0; se = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1; pi = 4'd9;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 clk = 0; load = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #5 load = 1;
        #5 clk = 0;
        #10 clk = 1;
        #5 load = 0;
        #5 clk = 0;
        #10 clk = 1;
        #10 clk = 0; se = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; load = 1;
        #10 clk = 1;
        #10 clk = 0; load = 0;
        #10 clk = 1;
        #10 $finish();
    end
endmodule
