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
    output z,
    output [7:0] AN,
    output [6:0] seg
    );
    
    wire vc;
    wire [3:0] m;
    
    assign AN = 8'hFE;
    bcd_to_7_seg(m, seg);
    lab2_2_1_partA(v, z, m);
endmodule
