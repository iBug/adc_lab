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
    input [15:0] sw,
    input clk,  // Please supply 100 MHz
    output [6:0] seg,
    output reg [7:0] an
    );
    
    reg [3:0] x;
    wire [3:0] x_s [7:0];
    wire [15:0] x_i [7:0];
    reg [7:0] an_s [7:0];
    reg [2:0] select;
    integer cycle;
    
    assign x_i[0] = (sw / 1);
    assign x_i[1] = (sw / 10);
    assign x_i[2] = (sw / 100);
    assign x_i[3] = (sw / 1000);
    assign x_i[4] = (sw / 10000);
    assign x_i[5] = (sw / 100000);
    assign x_i[6] = (sw / 1000000);
    assign x_i[7] = (sw / 10000000);
    
    assign x_s[0] = (x_i[0] % 10);
    assign x_s[1] = (x_i[1] == 0) ? 15 : (x_i[1] % 10);
    assign x_s[2] = (x_i[2] == 0) ? 15 : (x_i[2] % 10);
    assign x_s[3] = (x_i[3] == 0) ? 15 : (x_i[3] % 10);
    assign x_s[4] = (x_i[4] == 0) ? 15 : (x_i[4] % 10);
    assign x_s[5] = (x_i[5] == 0) ? 15 : (x_i[5] % 10);
    assign x_s[6] = (x_i[6] == 0) ? 15 : (x_i[6] % 10);
    assign x_s[7] = (x_i[7] == 0) ? 15 : (x_i[7] % 10);
    
    bcd_to_7_seg bcd(x, seg);
    
    initial begin
        an_s[0] = 8'hFE;
        an_s[1] = 8'hFD;
        an_s[2] = 8'hFB;
        an_s[3] = 8'hF7;
        an_s[4] = 8'hEF;
        an_s[5] = 8'hDF;
        an_s[6] = 8'hBF;
        an_s[7] = 8'h7F;
        cycle = 0;
    end
    
    always @ (posedge clk)
    begin
        cycle = (cycle + 1) % 10000;
        if (cycle == 0) begin
            select = select + 2'd1;
            x <= x_s[select];
        end
        else if (cycle == 1500) begin
            an = an_s[select];
        end
        else if (cycle == 9500) begin
            an = 8'hFF;
        end
    end
endmodule
