`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 02:45:42 PM
// Design Name: 
// Module Name: main
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


module main(
    input [3:0] X0, X1, X2, X3,
    input CLK100MHZ,
    output [6:0] SEG,
    output [7:0] AN
    );
    
    reg clk;
    integer cycle;
    
    seg_manager core(X0, X1, X2, X3, clk, SEG, AN);
    
    initial begin
        cycle = 0;
        clk = 0;
    end
    
    always @ (posedge CLK100MHZ) begin
        cycle = cycle + 1;
        if (cycle >= 1000) begin
            cycle <= 0;
            clk <= ~clk;
        end
    end
endmodule
