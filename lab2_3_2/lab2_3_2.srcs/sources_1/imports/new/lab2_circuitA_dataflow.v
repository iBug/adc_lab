`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 02:42:18 PM
// Design Name: 
// Module Name: lab2_circuitA_dataflow
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


module lab2_circuitA_dataflow(
    input [2:0] vi,
    output [2:0] vo
    );
    
    assign vo = vi - 4'd2;
endmodule
