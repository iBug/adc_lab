`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 02:48:20 PM
// Design Name: 
// Module Name: lab2_2_1_partA
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


module lab2_2_1_partA(
    input [3:0] v,
    output z,
    output [3:0] m
    );
    
    wire comparator_v;
    wire [2:0] circA_v;
    
    comparator_dataflow comparator(v, comparator_v);
    assign z = comparator_v;
    mux_2to1 mux_3(v[3], 0, comparator_v, m[3]);
    mux_2to1 mux_2(v[2], circA_v[2], comparator_v, m[2]);
    mux_2to1 mux_1(v[1], circA_v[1], comparator_v, m[1]);
    mux_2to1 mux_0(v[0], circA_v[0], comparator_v, m[0]);
    lab2_circuitA_dataflow circuitA({v[2], v[1], v[0]}, circA_v);
endmodule
