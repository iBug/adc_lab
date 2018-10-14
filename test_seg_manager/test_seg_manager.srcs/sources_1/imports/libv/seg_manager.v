`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: seg_manager
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


module seg_manager(
    input [3:0] x0, x1, x2, x3,
    input clk,
    output [6:0] seg,
    output reg [7:0] an
    );
    
    wire [3:0] x_s, x_s0, x_s1, x_s2, x_s3;
    reg [1:0] select;
    reg [7:0] an_s [3:0];
    reg ctrl;
    
    assign x_s0 = {x3[0], x2[0], x1[0], x0[0]};
    assign x_s1 = {x3[1], x2[1], x1[1], x0[1]};
    assign x_s2 = {x3[2], x2[2], x1[2], x0[2]};
    assign x_s3 = {x3[3], x2[3], x1[3], x0[3]};
    assign x_s = {x_s3[select], x_s2[select], x_s1[select], x_s0[select]};
    
    bcd_to_7_seg bcd(x_s, seg);
    
    initial begin
        an_s[0] = 8'hFE;
        an_s[1] = 8'hFD;
        an_s[2] = 8'hFB;
        an_s[3] = 8'hF7;
    end
    
    always @ (posedge clk)
    begin
        if (ctrl == 0) begin
            ctrl <= 1;
            an = 8'hFF;
            select <= select + 2'd1;
        end
        else begin
            ctrl <= 0;
            #5000 an = an_s[select];
        end
    end
endmodule
