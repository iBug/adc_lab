`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 10:22:19 PM
// Design Name: 
// Module Name: lab6_1_5_tb
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


module lab6_1_5_tb;
    reg clk, se, si;
    wire [3:0] ParallelOut;
    wire ShiftOut;
    
    lab6_1_5 DUT (.clk(clk), .se(se), .si(si), .so(ShiftOut), .po(ParallelOut));
        
    always #10 clk = ~clk;
    
    initial begin
        clk = 0; se = 0; si = 1;
        #40 se = 1;
        #40 se = 0;
        #40 se = 1;
        #40 se = 0;
        #40 si = 0;
        #40 se = 1;
        #40 se = 0;
        #40 se = 1;
        #40 se = 0;
        #40 $finish();
    end
endmodule
