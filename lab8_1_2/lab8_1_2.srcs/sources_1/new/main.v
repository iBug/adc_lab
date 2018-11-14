`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 02:45:42 PM
// Design Name: 
// Module Name: main
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


module main(
    input [15:0] SW,
    input CLK100MHZ,
    output [6:0] SEG,
    output [7:0] AN,
    output [15:0] LED
    );
    
    wire CLK5MHZ, G;
    assign LED = SW;
    
    clk_5MHz(CLK5MHZ, 0, G, CLK100MHZ);
    seg_manager core(SW, CLK5MHZ, SEG, AN);
endmodule
