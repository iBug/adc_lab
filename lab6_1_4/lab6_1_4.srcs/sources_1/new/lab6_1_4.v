`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2018 12:51:36 PM
// Design Name: 
// Module Name: lab6_1_4
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


module lab6_1_4(
    input clk,
    input si,
    input se,
    input [3:0] pi,
    input load,
    output so,
    output reg [3:0] rc
    );
    
    assign so = rc[3];
    
    always @ (posedge clk) begin
        if (load)
            rc <= pi;
        else if (se)
            rc <= {rc[2:0], si};
    end
endmodule
