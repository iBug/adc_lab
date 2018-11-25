`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2018 01:27:37 PM
// Design Name: 
// Module Name: lab10_1_1
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


module lab10_1_1(
    input clk,
    input reset,
    input a,
    output reg y,
    output reg [3:0] count
    );
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    reg [1:0] state, nextstate;

    initial begin
        state = S0;
        nextstate = S0;
        count = 0;
    end

    // always block to apply next state
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            state <= S0;
            nextstate <= S0;
        end
        else begin
            count <= count + a;
            state <= nextstate;
        end
    end

    // always block to compute next state
    always @(state or a) begin
        if (a)
            case(state)
                S0: nextstate <= S1;
                S1: nextstate <= S2;
                S2: nextstate <= S3;
                S3: nextstate <= S1;
            endcase
        else
            nextstate <= state;
    end

    // always block to compute output
    always @(state or a) begin
        case(state)
            S0: y <= ~a;
            S1: y <= 0;
            S2: y <= 0;
            S3: y <= a;
        endcase
    end
endmodule
