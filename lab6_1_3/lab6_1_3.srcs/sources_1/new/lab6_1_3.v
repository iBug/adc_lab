`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 03:19:09 PM
// Design Name: 
// Module Name: lab6_1_3
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


module lab6_1_3(
    input clk,
    input si,
    output so
    );
    
    reg [2:0] sr;
    assign so = sr[2];
    
    //initial
    //    sr <= 0;
    
    always @ (posedge clk) begin
        sr <= {sr[1:0], si};
    end
endmodule
