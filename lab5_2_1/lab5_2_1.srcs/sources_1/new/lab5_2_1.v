`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 02:22:12 PM
// Design Name: 
// Module Name: lab5_2_1
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


module lab5_2_1(
    input D,
    input clk,
    output reg Q
    );
    
    always @ (posedge clk) begin
       Q = D;
    end
endmodule
