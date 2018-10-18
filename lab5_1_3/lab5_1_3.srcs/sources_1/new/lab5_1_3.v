`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 01:12:28 PM
// Design Name: 
// Module Name: lab5_1_3
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


module lab5_1_3(
    input D,
    input Enable,
    output Q,
    output Qbar
    );
    
    wire SE, RE;
    wire Qi, Qbari;
    
    assign #2 SE = D & Enable;
    assign #2 RE = (~D) & Enable;
    assign #2 Qi = Q;
    assign #2 Qbari = Qbar;
    assign #2 Q = ~(RE | Qbari);
    assign #2 Qbar = ~(SE | Qi);
endmodule
