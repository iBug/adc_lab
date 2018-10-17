`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 08:09:13 PM
// Design Name: 
// Module Name: lab4_2_2
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


module calc_ones_function(
    input [7:0] ain,
    output reg [2:0] number_of_ones
    );
    
    function [2:0] calc_ones;
       input [7:0] a;
       
       reg [3:0] i;
       
       begin
           calc_ones = 0;
           for (i = 0; i < 8; i = i + 1)
               calc_ones = calc_ones + a[i];
       end
   endfunction
   
   always @*
       number_of_ones = calc_ones(ain);
endmodule
