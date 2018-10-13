`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 11:23:52 PM
// Design Name: 
// Module Name: adder_pg
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


module adder_pg(
    input a, b, c,
    output p, g, s
    );
    
    assign p = a | b;
    assign g = a & b;
    assign s = a ^ b ^ c;
endmodule
