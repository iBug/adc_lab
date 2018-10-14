`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 11:52:20 PM
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(
    input [2:0] x,
    output [7:0] y
    );
    
    assign y[0] = (x == 3'd0);
    assign y[1] = (x == 3'd1);
    assign y[2] = (x == 3'd2);
    assign y[3] = (x == 3'd3);
    assign y[4] = (x == 3'd4);
    assign y[5] = (x == 3'd5);
    assign y[6] = (x == 3'd6);
    assign y[7] = (x == 3'd7);
endmodule
