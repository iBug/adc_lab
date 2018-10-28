`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 08:50:59 PM
// Design Name: 
// Module Name: lab7_1_3_tb
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


module lab7_1_3_tb;
    reg [3:0] A;
    reg [1:0] Select;
    wire Output;
    integer i, j;
    
    lab7_1_3 DUT (.A(A), .S(Select), .X(Output));
    
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A <= i;
                Select <= j;
                #10;
            end
        end
        #10
        $finish();
    end
endmodule
