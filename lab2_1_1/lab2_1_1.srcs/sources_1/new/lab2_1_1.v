`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2018 10:53:35 PM
// Design Name: 
// Module Name: lab2_1_1
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


module lab2_1_1(
    input BTNC,
    input enable,
    output [6:0] seg,
    output [7:0] AN
    );
    
    assign AN = 8'hFE;
    wire [3:0] s;
    bcd_to_7_seg(s, seg);
    btn_counter(BTNC, enable, s);
endmodule
