`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 10:22:19 PM
// Design Name: 
// Module Name: lab6_1_5
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


module lab6_1_5(
    input clk,
    input se,
    input si,
    output [3:0] po,
    output so
    );
    reg [3:0] r;
    assign so = r[3];
    assign po = r;
    
    always @ (posedge clk) begin
        if (se)
            r <= {r[2:0], si};
    end
endmodule
