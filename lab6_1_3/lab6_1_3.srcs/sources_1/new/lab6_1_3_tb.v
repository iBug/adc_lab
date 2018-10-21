`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 03:19:09 PM
// Design Name: 
// Module Name: lab6_1_3_tb
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


module lab6_1_3_tb;
    reg clk, si;
    wire so;
    
    lab6_1_3 DUT (.clk(clk), .si(si), .so(so));
    
    initial begin
        clk = 0; si = 0;
        #10 clk = 1;
        #10 clk = 0; si = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; si = 0;
        #10 clk = 1;
        #10 clk = 0; si = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; si = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 $finish();
    end
endmodule
