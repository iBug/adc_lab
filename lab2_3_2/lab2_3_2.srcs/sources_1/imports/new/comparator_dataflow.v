`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 02:42:18 PM
// Design Name: 
// Module Name: comparator_dataflow
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


module comparator_dataflow(
    input [3:0] v,
    output z
    );
    
    assign z = v[3] & (v[2] | v[1]);
endmodule
