`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 07:35:37 PM
// Design Name: 
// Module Name: lab1_3_2
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


module lab1_3_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output reg [1:0] m
    );
    always @ (x or y or s)
    begin
        if (s == 0)
            m = x;
        else
            m = y;
    end
endmodule
