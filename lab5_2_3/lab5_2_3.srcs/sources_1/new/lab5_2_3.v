`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2018 12:41:47 PM
// Design Name: 
// Module Name: lab5_2_3
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


module lab5_2_3(
    input D,
    input reset,
    input clk,
    output reg Q
    );
    
    always @ (posedge clk) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule
