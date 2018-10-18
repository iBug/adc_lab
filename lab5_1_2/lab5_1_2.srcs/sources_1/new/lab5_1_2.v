`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 12:39:13 PM
// Design Name: 
// Module Name: lab5_1_2
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


module lab5_1_2(
    input R,
    input S,
    input E,
    output Q,
    output Qbar
    );
    
    wire SE, RE, Qi, Qbari;
    
    assign #2 SE = S & E;
    assign #2 RE = R & E;
    assign #2 Qi = Q;
    assign #2 Qbari = Qbar;
    assign #2 Q = ~(RE | Qbari);
    assign #2 Qbar = ~(SE | Qi);
endmodule
