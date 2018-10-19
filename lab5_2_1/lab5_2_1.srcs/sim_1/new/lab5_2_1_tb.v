`timescale 1ns / 1ps

module lab5_2_1_tb;
    reg clk;
    reg D;
    wire Q;
    
    lab5_2_1 DUT (.D(D), .clk(clk), .Q(Q));
    
    initial begin
       D = 0; clk = 0;
       #10 clk = 1;
       #10 clk = 0;
       #10 clk = 1; D = 1;
       #10 clk = 0;
       #10 clk = 1;
       #10 clk = 0; D = 0;
       #10 clk = 1;
       #10 clk = 0;
       #10 clk = 1;
       #10 clk = 0; D = 1;
       #10 clk = 1;
       #10 clk = 0; D = 0;
       #10 clk = 1;
       #10 clk = 0;
       #10 $finish();
    end
endmodule