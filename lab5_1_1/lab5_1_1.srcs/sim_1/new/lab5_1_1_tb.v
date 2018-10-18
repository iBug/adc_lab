`timescale 1ns / 1ps

module lab5_1_1_tb;
    reg S, R;
    wire Q, Qbar;
    lab5_1_1 DUT(S, R, Q, Qbar);
    
    initial begin
        S = 0; R = 0;
        #10 S = 1;
        #10 S = 0;
        #10 R = 1;
        #10 R = 0; S = 1;
        #10 S = 0; R = 1;
        #10 R = 0; S = 1;
        #10 S = 0; R = 1;
        #10 S = 1;
    end
endmodule