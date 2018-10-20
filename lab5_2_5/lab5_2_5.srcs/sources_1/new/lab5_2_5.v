`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2018 01:18:48 PM
// Design Name: 
// Module Name: lab5_2_5
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


module lab5_2_5(
    input T,
    input reset_n,
    input clk,
    output reg Q
    );
    
    always @ (negedge clk) begin
        if (~reset_n)
            Q <= 0;
        else
            Q <= ~Q;
    end
endmodule
