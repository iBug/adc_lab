`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 08:50:59 PM
// Design Name: 
// Module Name: lab7_1_3
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


module lab7_1_3(
    input [3:0] A,
    input [1:0] S,
    output reg X
    );
    
    always @* begin
        if (S == 0)
            X <= A[0];
        else if (S == 1)
            X <= A[1];
        else if (S == 2)
            X <= A[2];
        else if (S == 3)
            X <= A[3];
        else
            X <= 0;
    end
endmodule
