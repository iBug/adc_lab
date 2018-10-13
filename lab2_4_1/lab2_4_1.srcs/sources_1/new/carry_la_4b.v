`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 11:23:52 PM
// Design Name: 
// Module Name: carry_la_4b
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


module carry_la_4b(
    input [3:0] p,
    input [3:0] g,
    input ci,
    output [3:0] c,
    output co
    );
    
    assign c[0] = ci;
    assign c[1] = (p[0] & c[0]) | g[0];
    assign c[2] = (p[1] & c[1]) | g[1];
    assign c[3] = (p[2] & c[2]) | g[2];
    assign co = (p[3] & c[3]) | g[3];
endmodule
