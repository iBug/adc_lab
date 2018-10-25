`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 09:52:10 PM
// Design Name: 
// Module Name: lab7_1_2
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


module lab7_1_2;
    reg STREAM;
    
    initial begin
        STREAM <= #10 0;
        STREAM <= #12 1;
        STREAM <= #17 0;
        STREAM <= #20 1;
        STREAM <= #24 0;
        STREAM <= #26 1;
        STREAM <= #31 1;
        #35 $finish();
    end
endmodule
