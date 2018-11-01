`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2018 06:39:19 PM
// Design Name: 
// Module Name: lab7_1_4
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


module lab7_1_4(
    input [3:0] in,
    input en,
    output reg [3:0] out,
    output reg gs
    );

    always @* begin
        if (en)
            case (in)
                4'd0: {g, out} = 5'h0;
                4'd1: {g, out} = 5'h1;
                4'd2: {g, out} = 5'h3;
                4'd3: {g, out} = 5'h2;
                4'd4: {g, out} = 5'h6;
                4'd5: {g, out} = 5'h7;
                4'd6: {g, out} = 5'h5;
                4'd7: {g, out} = 5'h4;
                4'd8: {g, out} = 5'hC;
                4'd9: {g, out} = 5'hD;
                default: {g, out} = 5'h1F;
            endcase
    end
endmodule
