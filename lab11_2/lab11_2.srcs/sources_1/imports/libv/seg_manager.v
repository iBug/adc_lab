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
    input clk,  // Please supply 5 MHz
    input [7:0] x,
    output [6:0] seg,
    output [7:0] an
    );
    
    wire [7:0] z;
    wire [3:0] x_s [2:0];
    wire [15:0] x_i [2:0];
    reg [1:0] select;
    integer cycle;
    
    assign x_i[0] = x / 1;
    assign x_i[1] = x / 10;
    assign x_i[2] = x / 100;
    
    assign x_s[0] = (x_i[0] % 10);
    assign x_s[1] = (x_i[1] == 0) ? 15 : (x_i[1] % 10);
    assign x_s[2] = (x_i[2] == 0) ? 15 : (x_i[2] % 10);

    assign an = (8'hFE & {8{select == 0}}) |
                (8'hFD & {8{select == 1}}) |
                (8'hFB & {8{select == 2}});
    assign z = (x_s[0] & {8{select == 0}}) |
               (x_s[1] & {8{select == 1}}) |
               (x_s[2] & {8{select == 2}});
    
    bcd_to_7_seg bcd(z, seg);
    
    initial begin
        cycle = 0;
        select = 0;
    end
    
    always @ (posedge clk)
    begin
        cycle = cycle + 1;
        if (cycle >= 5000) begin
            cycle = 0;
            select = select + 1;
            if (select == 3)
                select = 0;
        end
    end
endmodule
