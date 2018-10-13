`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2018 10:36:46 AM
// Design Name: 
// Module Name: btn_increment
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


module btn_counter(
    input clk,
    input E,
    output reg [3:0] out
    );
    
    initial begin
       out <= 4'd0;
    end
    
    always @ (posedge clk or negedge E) begin
        if (!E)
            out <= 0;
        else if (out == 4'd9)
            out <= 4'd0;
        else
            out <= out + 4'd1;
    end
endmodule
