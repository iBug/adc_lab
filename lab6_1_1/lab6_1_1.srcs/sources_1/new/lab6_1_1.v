`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 02:09:21 PM
// Design Name: 
// Module Name: lab6_1_1
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


module lab6_1_1(
    input [3:0] D,
    input clk,
    input reset,
    input load,
    output reg [3:0] Q
    );
    
    always @ (posedge clk) begin
        if (reset)
            Q <= 4'd0;
        else if (load)
            Q <= D;
    end
endmodule
