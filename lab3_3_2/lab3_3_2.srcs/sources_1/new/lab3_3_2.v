`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 02:12:57 PM
// Design Name: 
// Module Name: lab3_3_2
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


module lab3_3_2(
    input [1:0] a,
    input [1:0] b,
    output [3:0] p
    );
    
    reg [3:0] result_ROM [15:0];
    wire [3:0] addr;
    
    assign addr = {a[1], a[0], b[1], b[0]};
    assign p = result_ROM[addr];
    
    initial $readmemh("lab3_3_2.txt", result_ROM, 0, 16);
endmodule
