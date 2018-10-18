`timescale 1ns / 1ps

module lab5_1_3_tb;
   reg D, Enable;
   wire Q, Qbar;
   
   lab5_1_3 DUT(.D(D), .Enable(Enable), .Q(Q), .Qbar(Qbar));
   
   initial begin
       D = 0; Enable = 0;
       #10 D = 1;
       #10 Enable = 1;
       #10 D = 0;
       #10 D = 1;
       #10 Enable = 0;
       #10 D = 0;
       #10 D = 1;
       #10 D = 0;
       #10 Enable = 1;
       #10 D = 1;
       #10 D = 0;
       #40 $finish();
   end
endmodule