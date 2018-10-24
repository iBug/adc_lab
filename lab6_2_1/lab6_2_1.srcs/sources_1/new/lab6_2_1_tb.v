`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 10:50:16 PM
// Design Name: 
// Module Name: lab6_2_1_tb
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


module lab6_2_1_tb;
    reg clk, E, clear_n;
    wire [7:0] Q;
    
    lab6_2_1 DUT (clk, E, clear_n, Q);
    
    initial begin
        clk = 0; E = 0; clear_n = 0;
        #20 E = 1;
        #20 clear_n = 1;
        #80 E = 0;
        #80 E = 1;
        #300 $finish();
    end
    
    always #5 clk = ~clk;
endmodule
