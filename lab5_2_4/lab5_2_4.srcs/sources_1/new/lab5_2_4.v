`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2018 01:03:27 PM
// Design Name: 
// Module Name: lab5_2_4
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


module lab5_2_4(
    input D,
    input reset,
    input ce,
    input clk,
    output reg Q
    );
    
    always @ (posedge clk) begin
        if (reset)
            Q <= 0;
        else if (ce)
            Q <= D;
    end
endmodule
