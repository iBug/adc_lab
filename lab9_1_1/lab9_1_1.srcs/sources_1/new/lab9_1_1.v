`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2018 11:38:55 AM
// Design Name: 
// Module Name: lab9_1_1
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


module lab9_1_1;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] p, g, c, s;
    wire cout;


    carry_lookahead #(1, 3, 4)
        carry_la (p, g, c, cin, cout);
    fa_1b #(1, 3, 4)
        fa0 (a[0], b[0], c[0], p[0], g[0], s[0]),
        fa1 (a[1], b[1], c[1], p[1], g[1], s[1]),
        fa2 (a[2], b[2], c[2], p[2], g[2], s[2]),
        fa3 (a[3], b[3], c[3], p[3], g[3], s[3]);

    integer i, j;

    initial begin
        cin = 0;
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                a = i; b = j;
                #20;
            end
        end
        $finish();
    end
endmodule
