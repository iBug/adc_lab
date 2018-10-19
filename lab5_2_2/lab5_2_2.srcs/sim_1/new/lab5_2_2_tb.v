`timescale 1ns / 1ps

module lab5_2_2_tb;
   reg clk, D;
   wire Qa, Qb, Qc;
   
   lab5_2_2 DUT (.clk(clk), .D(D), .Qa(Qa), .Qb(Qb), .Qc(Qc));
   
   initial begin
      clk = 0; D = 0;
      #15 D = 1;
      #5 clk = 1;
      #5 D = 0;
      #5 D = 1;
      #10 D = 0;
      #10 clk = 0;
      #5 D = 1;
      #10 D = 0;
      #5 D = 1;
      #5 D = 0;
      #5 clk = 1;
      #5 D = 1;
      #5 D = 0;
      #5 D = 1;
      #15 clk = 0;
      #5 D = 0;
      #15 $finish();
   end
endmodule