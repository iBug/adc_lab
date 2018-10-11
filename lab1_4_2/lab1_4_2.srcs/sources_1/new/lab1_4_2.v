`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 08:09:24 PM
// Design Name: 
// Module Name: lab1_4_2
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


module lab1_4_2(
    input [3:0] x,
    input [2:0] s,
    output reg [7:0] AN,
    output reg CA,
    output reg CB,
    output reg CC,
    output reg CD,
    output reg CE,
    output reg CF,
    output reg CG
    );
    
    reg [6:0] d;
    integer ind;
    always @ (x or s)
    begin
        AN[7:0] = 8'b11111111;
        ind = s[0] + 2*s[1] + 4*s[2];
        AN[ind] = 1'b0;
        case (x)
        4'b0000: d = 7'b0000001;
        4'b0001: d = 7'b1001111;
        4'b0010: d = 7'b0010010;
        4'b0011: d = 7'b0000110;
        4'b0100: d = 7'b1001100;
        4'b0101: d = 7'b0100100;
        4'b0110: d = 7'b0100000;
        4'b0111: d = 7'b0001111;
        4'b1000: d = 7'b0000000;
        4'b1001: d = 7'b0000100;
        default: d = 7'b1111110;
        endcase
        
        CA = d[6];
        CB = d[5];
        CC = d[4];
        CD = d[3];
        CE = d[2];
        CF = d[1];
        CG = d[0];
    end
endmodule
