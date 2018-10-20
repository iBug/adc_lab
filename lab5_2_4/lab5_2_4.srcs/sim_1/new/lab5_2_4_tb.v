`timescale 1ns / 1ps

module lab5_2_4_tb;
    reg D, clk, ce, reset;
    wire Q;
    
    lab5_2_4 DUT (.D(D), .reset(reset), .ce(ce), .clk(clk), .Q(Q));
    
    initial begin
        D = 0; clk = 0; ce = 0; reset = 0;
        #10 clk = 1;
        #10 clk = 0; D = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; ce = 1;
        #10 clk = 1;
        #10 clk = 0; ce = 0;
        #10 clk = 1;
        #10 clk = 0; D = 0;
        #10 clk = 1;
        #10 clk = 0; reset = 1;
        #10 clk = 1;
        #10 clk = 0; reset = 0;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; ce = 1;
        #10 clk = 1;
        #10 clk = 0; ce = 0;
        #10 clk = 1;
        #10 clk = 0; D = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        #10 clk = 0; ce = 1;
        #10 clk = 1;
        #10 clk = 0; ce = 0;
        #10 clk = 1;
        #10 $finish();
    end
endmodule