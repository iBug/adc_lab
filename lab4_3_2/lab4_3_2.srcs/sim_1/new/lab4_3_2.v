`timescale 1ns / 1ps

module lab4_3_2;
    reg A, G1, G2;
    
    initial begin
        A = 0; G1 = 0; G2 = 1;
        #40 A = 1;
        #20 G1 = 1;
        #20 G2 = 0;
        #20 A = 0;
        #20 G1 = 0;
        #20 G2 = 1;
        $display("Test passed!!!");
    end
endmodule