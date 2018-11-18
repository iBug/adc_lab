`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2018 11:00:32 AM
// Design Name: 
// Module Name: lab11
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


module adder_dyn #(parameter WIDTH = 1)(
    input [WIDTH-1:0] a, b,
    output [WIDTH-1:0] s,
    input ci,
    output co
    );
    assign {co, s} = {1'b0, a} + {1'b0, b} + ci;
endmodule


module multiplier_data(
    input clk,
    input [2:0] a, b,
    input start, add, shift, done,
    output [5:0] result
    );

    reg [6:0] r; // result register, 1 bit longer
    assign result = r[5:0];
    reg [3:0] shl; // shift left

    wire [2:0] add_a, add_b, add_s;
    wire add_ci, add_co;
    adder_dyn #3 adder_core (add_a, add_b, add_s, add_ci, add_co);

    assign add_a = a & {3{b[shl]}}; // a or zero
    assign add_b = (r >> shl) & 3'h7;
    assign add_ci = 0;

    always @(posedge clk) begin
        if (start) begin
            shl <= 0;
            r <= 7'b0;
        end
        else if (add) begin
            r <= (r & ~(7'b1111 << shl)) | ({3'h0, add_co, add_s} << shl);
        end
        else if (shift) begin
            shl <= shl + 1;
        end
        else if (done) begin
            // boo
        end
    end
endmodule


module multiplier_control(
    input clk, start,
    output reg s_start, s_add, s_shift, s_done
    );

    parameter DONE = 0, START = 15,
        A1 = 1, S1 = 2, A2 = 3, S2 = 4, A3 = 5, S3 = 6;
    reg [3:0] state, nextstate;

    initial begin
        state = DONE;
        nextstate = DONE;
    end

    always @(posedge clk) begin
        state <= nextstate;
    end

    always @(state) begin
        case(state)
            DONE: {s_start, s_add, s_shift, s_done} <= 4'b0001;
            START: {s_start, s_add, s_shift, s_done} <= 4'b1000;
            A1: {s_start, s_add, s_shift, s_done} <= 4'b0100;
            A2: {s_start, s_add, s_shift, s_done} <= 4'b0100;
            A3: {s_start, s_add, s_shift, s_done} <= 4'b0100;
            S1: {s_start, s_add, s_shift, s_done} <= 4'b0010;
            S2: {s_start, s_add, s_shift, s_done} <= 4'b0010;
            S3: {s_start, s_add, s_shift, s_done} <= 4'b0010;
        endcase
    end

    always @(start or state) begin
        if (state == DONE) begin
            if (start)
                nextstate <= START;
            else
                nextstate <= DONE;
        end
        else begin
            // ignore [start] signal
            case(state)
                START: nextstate <= A1;
                A1: nextstate <= S1;
                S1: nextstate <= A2;
                A2: nextstate <= S2;
                S2: nextstate <= A3;
                A3: nextstate <= S3;
                S3: nextstate <= DONE;
            endcase
        end
    end
endmodule


module lab11(
    input clk, start,
    input [2:0] a, b,
    output done,
    output [5:0] r
    );

    wire c_start, c_add, c_shift, c_done;
    multiplier_control controller (clk, start, c_start, c_add, c_shift, c_done);
    multiplier_data data_processor (clk, a, b, c_start, c_add, c_shift, c_done, r);
    assign done = c_done;
endmodule
