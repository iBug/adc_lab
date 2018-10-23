`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 01:59:35 PM
// Design Name: 
// Module Name: lab2_2_1
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

module lab2_2_1(
    input [3:0] v,
    input CLK100MHZ,
    output [7:0] AN,
    output [6:0] seg
    );
    
    wire z;
    wire [3:0] m;
    
    seg_manager seg_core(m, z, CLK100MHZ, seg, AN);
    lab2_2_1_partA(v, z, m);
endmodule
