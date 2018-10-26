`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 01:54:49 PM
// Design Name: 
// Module Name: lab3_3_1_tb
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


module lab3_3_1_tb;
    reg [1:0] a, b;
    wire lt, eq, gt;
    integer i, j;
    
    lab3_3_1 DUT (.a(a), .b(b), .lt(lt), .eq(eq), .gt(gt));
    
    initial begin
        for (i = 0; i < 4; i = i + 1)
            for (j = 0; j < 4; j = j + 1) begin
                a = i; b = j;
                #10 ;
            end
        $finish();
    end
endmodule
