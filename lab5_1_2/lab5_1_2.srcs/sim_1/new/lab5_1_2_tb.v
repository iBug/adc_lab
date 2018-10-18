`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 12:43:53 PM
// Design Name: 
// Module Name: lab5_1_2_tb
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


module lab5_1_2_tb;
   reg R, S, Enable;
   wire Q, Qbar;
   lab5_1_2 DUT (.S(S), .R(R), .E(Enable), .Q(Q), .Qbar(Qbar));
   
   initial begin
       R = 0; S = 0; Enable = 0;
       #10 S = 1;
       #10 Enable = 1;
       #10 S = 0;
       #10 R = 1;
       #10 Enable = 0;
       #10 R = 0; S = 1;
       #10 R = 1; S = 0;
       #10 R = 0; S = 1;
       #10 Enable = 1;
       #10 $finish;
   end
endmodule
