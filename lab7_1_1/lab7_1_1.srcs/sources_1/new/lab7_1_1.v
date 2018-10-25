`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 09:49:24 PM
// Design Name: 
// Module Name: lab7_1_1
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


module lab7_1_1;
    reg PORT_A;
    
    initial begin
        PORT_A = 'h20;
        #5 PORT_A = 'hF2;
        #5 PORT_A = 'h41;
        #5 PORT_A = 'h0A;
    end
endmodule
