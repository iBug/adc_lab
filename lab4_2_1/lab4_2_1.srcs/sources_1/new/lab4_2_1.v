`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 07:51:09 PM
// Design Name: 
// Module Name: lab4_2_1
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


module add_two_values_function(
    input [3:0] ain,
    input [3:0] bin,
    output reg [4:0] sum
    );
    
    function [4:0] add_two_values;
        input [3:0] a, b;
        reg [4:0] as, bs;
        
        begin
            as = {1'b0, a};
            bs = {1'b0, b};
            add_two_values = as + bs;
        end
    endfunction
    
    always @*
        sum = add_two_values(ain, bin);
endmodule
