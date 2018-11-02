`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2018 02:45:13 PM
// Design Name: 
// Module Name: lab5_2_2
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


module lab5_2_2(
    input D,
    input clk,
    input S,
    output reg Qa,
    output reg Qb,
    output reg Qc,
    output reg Qd
    );
    
    always @(clk or D or S) begin
        if (clk) begin
            Qa = D;
            if (D & ~S) begin
                Qd = 0;
            end
            else if (S & ~D) begin
                Qd = 1;
            end
            else if (S & D) begin
                Qd = 1'bx;
            end
            else begin
                Qd = Qd;  // Nothing changed
            end
        end
    end
    always @ (posedge clk) begin
        Qb = D;
    end
    always @ (negedge clk) begin
        Qc = D;
    end
endmodule
