`timescale 1ns / 1ps

module lab5_2_2_tb;
   reg clk, D, S;
   wire Qa, Qb, Qc, Qd;
   
   lab5_2_2 DUT (.clk(clk), .D(D), .S(S), .Qa(Qa), .Qb(Qb), .Qc(Qc), .Qd(Qd));
   
   initial begin
       clk = 0; D = 0; S = 0;
       #50 D = 1;
       #20 D = 0;
       #10 D = 1;
       #10 S = 1;
       #10 D = 0;
       #30 D = 1;
       #20 D = 0; S = 0;
       #10 D = 1;
       #10 D = 0;
       #20 D = 1;
       #10 D = 0;
       #10 D = 1;
       #10 S = 1;
       #30 D = 0;
       #40 S = 0;
       #10 $finish();
   end

   always #60 clk = ~clk;
endmodule
