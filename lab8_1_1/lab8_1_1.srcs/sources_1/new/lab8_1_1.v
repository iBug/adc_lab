`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2018 10:42:47 PM
// Design Name: 
// Module Name: lab8_1_1
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


module clock_div(
    input CLK5MHZ,
    output reg CLK1HZ
    );

    integer n;
    initial begin
        CLK1HZ <= 0;
        n <= 0;
    end

    always @(posedge CLK5MHZ) begin
        n = n + 1;
        if (n >= 2500000) begin
            CLK1HZ <= ~CLK1HZ;
            n = 0;
        end
    end
endmodule


module lab8_1_1(
    input CLK100MHZ,
    input en,
    input reset,
    output Q,
    output DCM
    );

    wire CLK5MHZ, CLK1HZ;
    and AND0 (Q, en, CLK1HZ);
    clock_div(CLK5MHZ, CLK1HZ);
    clk_5MHz(CLK5MHZ, reset, DCM, CLK100MHZ);
endmodule
