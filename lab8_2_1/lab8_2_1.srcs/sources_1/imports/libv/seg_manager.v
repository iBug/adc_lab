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

module bcd_to_7_seg(
    input [3:0] x,
    output reg [6:0] seg
    );
    
    always @ (x)
    begin
        case (x)
            4'b0000: seg <= 7'b1000000;
            4'b0001: seg <= 7'b1111001;
            4'b0010: seg <= 7'b0100100;
            4'b0011: seg <= 7'b0110000;
            4'b0100: seg <= 7'b0011001;
            4'b0101: seg <= 7'b0010010;
            4'b0110: seg <= 7'b0000010;
            4'b0111: seg <= 7'b1111000;
            4'b1000: seg <= 7'b0000000;
            4'b1001: seg <= 7'b0010000;
            4'b1111: seg <= 7'b1111111;
            default: seg <= 7'b0111111;
        endcase
    end
endmodule

module seg_manager(
    input [3:0] x0, x1,
    input clk,  // Please supply 100 MHz
    output [6:0] seg,
    output reg [7:0] an
    );
    
    reg [3:0] x;
    wire [3:0] x_s [1:0];
    reg [7:0] an_s [1:0];
    reg select;
    integer cycle;

    assign x_s[0] = x0;
    assign x_s[1] = x1;
    
    bcd_to_7_seg bcd(x, seg);
    
    initial begin
        an_s[0] = 8'hFE;
        an_s[1] = 8'hFD;
        cycle = 0;
        select = 0;
    end
    
    always @ (posedge clk)
    begin
        cycle = (cycle + 1) % 10000;
        if (cycle == 0) begin
            select = select + 1'd1;
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
