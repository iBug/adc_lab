`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2018 09:29:57 PM
// Design Name: 
// Module Name: lab7_1_5
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


module lab7_1_5(
    input en,
    input clk,
    input rst,
    output reg [2:0] x
    );

    initial
        x <= 3'b000;

    always @(posedge clk) begin
        if (rst)
            x <= 3'b000;
        else case(x)
            3'b000: x <= 3'b001;
            3'b001: x <= 3'b011;
            3'b011: x <= 3'b101;
            3'b101: x <= 3'b111;
            3'b111: x <= 3'b010;
            3'b010: x <= 3'b000;
            default: x <= 3'b000;
        endcase
    end
endmodule
