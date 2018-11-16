`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 02:25:28 PM
// Design Name: 
// Module Name: bcd_counter_tb
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


module bcd_counter_tb;
    reg CLK;
    wire RESET;

    wire CE0;
    wire [3:0] Q0;
    wire THRESH0;

    wire CE1;
    wire [3:0] Q1;
    wire THRESH1;

    assign RESET = 0;
    assign CE0 = 1;
    assign CE1 = THRESH0;
    counter_4b DUT_0 (CLK, CE0, RESET, THRESH0, Q0);
    counter_4b DUT_1 (CLK, CE1, RESET, THRESH1, Q1);
    
    initial begin
        CLK = 0;
        #2000 $finish();
    end

    always #5 CLK <= ~CLK;
endmodule
