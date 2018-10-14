`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 01:14:01 PM
// Design Name: 
// Module Name: encoder_8to3_prior
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


module encoder_8to3_prior(
    input ei,
    input [7:0] v,
    output reg [2:0] a,
    output reg gs,
    output reg eo
    );
    
    always @* begin
        if (ei == 1) begin
            a <= 3'h7;
            {gs, eo} <= 2'h3;
        end
        else if (v == 8'hFF) begin
            a <= 3'h7;
            {gs, eo} <= 2'h2;
        end
        else begin
            {gs, eo} <= 2'h1;
            if ((v & 8'h01) == 8'h00)
                a <= 3'd0;
            if ((v & 8'h03) == 8'h01)
                a <= 3'd1;
            if ((v & 8'h07) == 8'h03)
                a <= 3'd2;
            if ((v & 8'h0F) == 8'h07)
                a <= 3'd3;
            if ((v & 8'h1F) == 8'h0F)
                a <= 3'd4;
            if ((v & 8'h3F) == 8'h1F)
                a <= 3'd5;
            if ((v & 8'h7F) == 8'h3F)
                a <= 3'd6;
            if ((v & 8'hFF) == 8'h7F)
                a <= 3'd7;
        end
    end
endmodule
