`timescale 1ns / 1ps

module lab5_2_3_tb;
    reg clk, D, reset;
    wire Q;
    
    lab5_2_3 DUT (.D(D), .clk(clk), .reset(reset), .Q(Q));
    
    initial begin
        clk = 0; D = 0; reset = 0;
        #10 clk = 1;
        #10 clk = 0; D = 1;
        #10 clk = 1;
        #5 reset = 1;
        #5 clk = 0; reset = 0;
        #5 reset = 1;
        #5 clk = 1;
        #5 reset = 0;
        #5 clk = 0;
        #10 clk = 1;
        #10 clk = 0;
        #5 D = 0;
        #2 reset = 1;
        #3 clk = 1;
        #2 reset = 0;
        #8 $finish();
    end
endmodule