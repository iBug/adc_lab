`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 09:24:00 PM
// Design Name: 
// Module Name: lab5_1_1
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


module lab5_1_1(
    input S,
    input R,
    output Q,
    output Qbar
    );
    
    wire Q_i, Qbar_i;
    
    assign #2 Q_i = Q;
    assign #2 Qbar_i = Qbar;
    assign #2 Q = ~(R | Qbar_i);
    assign #2 Qbar = ~(S | Q_i);
endmodule
