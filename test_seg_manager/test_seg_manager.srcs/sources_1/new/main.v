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
    input [3:0] X0, X1, X2, X3,
    input CLK100MHZ,
    output [6:0] SEG,
    output [7:0] AN,
    output [15:0] LED
    );
    
    assign LED = {X3, X2, X1, X0};
    
    seg_manager core(X0, X1, X2, X3, CLK100MHZ, SEG, AN);
endmodule
