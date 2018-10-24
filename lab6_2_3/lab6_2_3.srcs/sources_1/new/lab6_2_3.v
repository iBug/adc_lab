`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 11:19:14 PM
// Design Name: 
// Module Name: lab6_2_3
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


module lab6_2_3(
    input clk,
    input clr,
    input E,
    input load,
    output [3:0] Q
    );
    
    reg [3:0] count;
    wire cnt_done;
    assign cnt_done = ~| count;
    assign Q = count;
    
    always @(posedge clk) begin
        if (clr)
            count <= 0;
        else if (E)
            if (load | cnt_done)
                count <= 4'd10;
            else
                count <= count - 1;
    end
endmodule
