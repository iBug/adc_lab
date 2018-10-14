`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 01:36:56 PM
// Design Name: 
// Module Name: lab3_3_1
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


module lab3_3_1(
    input [1:0] a,
    input [1:0] b,
    output eq,
    output lt,
    output gt
    );
    
    reg [2:0] ROM_cmp [15:0];
    wire [3:0] addr;
    
    assign addr = {a[1], a[0], b[1], b[0]};
    assign {lt, gt, eq} = ROM_cmp[addr];
    
    initial $readmemb("lab3_3_1.txt", ROM_cmp, 0, 16);
endmodule
