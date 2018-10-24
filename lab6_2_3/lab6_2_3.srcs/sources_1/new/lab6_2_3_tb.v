`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 11:19:14 PM
// Design Name: 
// Module Name: lab6_2_3_tb
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


module lab6_2_3_tb;
    reg Clock, Enable, Clear, Load;
    wire [3:0] Q;
    
    lab6_2_3 DUT(Clock, Clear, Enable, Load, Q);
    
    initial begin
        Clock = 0; Enable = 0; Clear = 0; Load = 0;
        #20 Enable = 1;
        #20 Clear = 1;
        #20 Clear = 0;
        #20 Load = 1;
        #10 Load = 0;
        #80 Enable = 0;
        #40 Enable = 1;
        #190 $finish();
    end
    
    always #5 Clock = ~Clock;
endmodule
