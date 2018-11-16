`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 07:49:56 PM
// Design Name: 
// Module Name: lab9_3_2
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


module clock_divider(
    input CLK5MHZ,
    input reset,
    output reg clk
    );

    integer n;

    initial begin
        n = 0;
        clk = 0;
    end

    always @(posedge CLK5MHZ) begin
        n = n + 1;
        if (n >= 2500000) begin
            n = 0;
            clk = ~clk;
        end
    end
endmodule


module c_counter #(parameter LIMIT = 15)(
    input clk,
    input ce,
    input load,
    input [3:0] D,
    output thresh,
    output reg [3:0] Q
    );

    assign thresh = 0;
    
    initial Q = 0;

    always @(posedge clk) begin
        if (load)
            Q = D;
        else if (ce) begin
            if (Q == 0)
                Q = LIMIT;
            else
                Q = Q - 1;
        end
    end
endmodule


module lab9_3_2(
    input CLK100MHZ,
    input [11:0] Load_D,
    input Enable,
    input Reset,
    input Load,
    output [6:0] SEG,
    output DP,
    output [7:0] AN
    );

    wire CLK5MHZ, CLK1HZ;
    clk_5MHz (CLK5MHZ, CLK100MHZ);
    clock_divider (CLK5MHZ, Reset, CLK1HZ);
    wire clk;
    //assign clk = (CLK1HZ & ~(Reset | Load)) | (CLK5MHZ & (Reset | Load));
    assign clk = (CLK1HZ & ~Load) | (CLK5MHZ & Load);

    wire L_en;
    assign L_en = Enable | Load;
    wire [5:0] load_m, load_s;
    assign load_m = Load_D[11:6];
    assign load_s = Load_D[5:0];

    wire [3:0] Q0, Q1, Q2, Q3;
    wire z0, z1, z2, z3;
    assign z0 = ~(|Q0);
    assign z1 = ~(|Q1);
    assign z2 = ~(|Q2);
    assign z3 = ~(|Q3);

    wire en;
    assign en = L_en & ~(z0 & z1 & z2 & z3);

    wire th0, th1, th2, th3;
    //ip_counter_10 s0 (clk, en, Load, load_s % 10, th0, Q0);
    //ip_counter_6  s1 (clk, en & z0, Load, load_s / 10, th1, Q1);
    //ip_counter_10 m0 (clk, en & z0 & z1, Load, load_m % 10, th2, Q2);
    //ip_counter_10 m1 (clk, en & z0 & z1 & z2, Load, load_m / 10, th3, Q3);
    c_counter #9 s0 (clk, en, Load, load_s % 10, th0, Q0);
    c_counter #5 s1 (clk, en & z0, Load, load_s / 10, th1, Q1);
    c_counter #9 m0 (clk, en & z0 & z1, Load, load_m % 10, th2, Q2);
    c_counter #9 m1 (clk, en & z0 & z1 & z2, Load, load_m / 10, th3, Q3);
    seg_manager seg_core (CLK5MHZ, Q0, Q1, Q2, Q3, SEG, DP, AN);
endmodule
