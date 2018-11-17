`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2018 02:50:56 PM
// Design Name: 
// Module Name: lab10_3_1
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


module lab10_3_1(
    input clk,
    input reset,
    output reg [2:0] x
    );
    reg [2:0] state, nextstate;
    reg [2:0] NEXT [5:0];
    reg [2:0] OUT [5:0];

    initial begin
        state = 0;
        nextstate = 0;
        $readmemb("/home/vmware/adc_lab/lab10_3_1/lab10_3_1.srcs/sources_1/new/output.txt", OUT, 0, 5);
        $readmemh("/home/vmware/adc_lab/lab10_3_1/lab10_3_1.srcs/sources_1/new/next.txt", NEXT, 0, 5);
        //$readmemb("output.txt", OUT, 0, 5);
        //$readmemh("next.txt", NEXT, 0, 5);
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 0;
        else
            state <= nextstate;
    end

    always @(state) begin
        nextstate <= NEXT[state];
        x <= OUT[state];
    end
endmodule
