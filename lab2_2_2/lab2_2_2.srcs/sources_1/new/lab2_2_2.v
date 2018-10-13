`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 09:29:32 PM
// Design Name: 
// Module Name: lab2_2_2
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


module lab2_2_2(
    input [3:0] x,
    output [4:0] y
    );
    
    assign y[0] = (x == 4'd0) | (x == 4'd1) | (x == 4'd3) | (x == 4'd6);
    assign y[1] = (x == 4'd0) | (x == 4'd2) | (x == 4'd4) | (x == 4'd7);
    assign y[2] = (x == 4'd1) | (x == 4'd2) | (x == 4'd5) | (x == 4'd8);
    assign y[3] = (x == 4'd3) | (x == 4'd4) | (x == 4'd5) | (x == 4'd9);
    assign y[4] = (x == 4'd6) | (x == 4'd7) | (x == 4'd8) | (x == 4'd9);
endmodule
