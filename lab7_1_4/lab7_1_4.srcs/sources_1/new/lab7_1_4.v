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
        if (en) begin
            case (in)
                4'd0: {gs, out} = 5'h0;
                4'd1: {gs, out} = 5'h1;
                4'd2: {gs, out} = 5'h3;
                4'd3: {gs, out} = 5'h2;
                4'd4: {gs, out} = 5'h6;
                4'd5: {gs, out} = 5'h7;
                4'd6: {gs, out} = 5'h5;
                4'd7: {gs, out} = 5'h4;
                4'd8: {gs, out} = 5'hC;
                4'd9: {gs, out} = 5'hD;
                default: {gs, out} = 5'h1F;
            endcase
        end
        else begin
            {gs, out} = 5'h1F;
        end
    end
endmodule
