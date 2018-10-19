`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 02:45:13 PM
// Design Name: 
// Module Name: lab5_2_2
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


module lab5_2_2(
    input D,
    input clk,
    output reg Qa,
    output reg Qb,
    output reg Qc
    );
    
    always @ D begin
        if (clk)
            Qa = D;
    end
    always @ (posedge clk) begin
        Qb = D;
    end
    always @ (negedge clk) begin
        Qc = D;
    end
endmodule
