`timescale 1ns / 1ps

module lab4_3_1;
    reg [3:0] a, b;
    wire [3:0] s;
    reg ci, sub;
    wire co;
    
    lab2_3_1 DUT(.a(a), .b(b), .s(s), .ci(ci), .co(co), .sub(sub));
    
    task check_result;
        input [3:0] actual;
        input [3:0] expected;
        
        begin
            if (actual == expected)
                $display("Test passed");
            else
                $display("Error: Got %b, expected %b", actual, expected);
        end
    endtask
    
    initial begin
       a = 4'd0; b = 4'd0; ci = 1'd0; sub = 1'd0;
       #10 check_result(s, 4'd0);
       a = 4'd7; b = 4'd8; ci = 1'd0;
       #10 check_result(s, 4'd15);
       a = 4'd8; b = 4'd10; ci = 1'd1;
       #10 check_result(s, 4'd3); check_result(co, 1);
       sub = 1'd1;
       #10 check_result(s, 4'd13); check_result(co, 1);
    end
endmodule