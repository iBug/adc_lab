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
    
    assign LED = SW;
    
    seg_manager core(SW, CLK100MHZ, SEG, AN);
endmodule
