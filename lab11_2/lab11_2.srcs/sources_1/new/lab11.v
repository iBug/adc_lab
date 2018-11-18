`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2018 12:12:33 PM
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
    input [3:0] a, b,
    input start, add, shift, done,
    output [7:0] result
    );

    reg [7:0] r;
    assign result = r;
    reg [3:0] shl; // shift left

    wire [3:0] add_a, add_b, add_s;
    wire add_ci, add_co;
    adder_dyn #4 adder_core (add_a, add_b, add_s, add_ci, add_co);

    assign add_a = a & {4{b[shl]}}; // a or zero
    assign add_b = (r >> shl) & 4'hF;
    assign add_ci = 0;

    always @(posedge clk) begin
        if (start) begin
            shl <= 0;
            r <= 5'b0;
        end
        else if (add) begin
            r <= (r & ~(8'b11111 << shl)) | ({3'h0, add_co, add_s} << shl);
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
        A1 = 1, S1 = 2, A2 = 3, S2 = 4, A3 = 5, S3 = 6, A4 = 7, S4 = 8;
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
            A4: {s_start, s_add, s_shift, s_done} <= 4'b0100;
            S1: {s_start, s_add, s_shift, s_done} <= 4'b0010;
            S2: {s_start, s_add, s_shift, s_done} <= 4'b0010;
            S3: {s_start, s_add, s_shift, s_done} <= 4'b0010;
            S4: {s_start, s_add, s_shift, s_done} <= 4'b0010;
        endcase
    end

    always @(start or state) begin
        if (start)
            nextstate <= START;
        else begin
            case(state)
                DONE: nextstate <= DONE;
                START: nextstate <= A1;
                A1: nextstate <= S1;
                S1: nextstate <= A2;
                A2: nextstate <= S2;
                S2: nextstate <= A3;
                A3: nextstate <= S3;
                S3: nextstate <= A4;
                A4: nextstate <= S4;
                S4: nextstate <= DONE;
            endcase
        end
    end
endmodule


module lab11(
    input CLK100MHZ, start,
    input [3:0] aa, ab,
    output done,
    output [6:0] SEG,
    output DP,
    output [7:0] AN
    );

    wire CLK5MHZ;
    ip_clock clock_converter (CLK5MHZ, CLK100MHZ);

    reg [3:0] D_ROM [31:0];
    wire [7:0] result;
    wire [3:0] a, b;
    wire clk, c_start, c_add, c_shift, c_done;
    assign clk = CLK5MHZ;
    assign done = c_done;
    assign a = D_ROM[aa];
    assign b = D_ROM[5'h10 | ab];

    seg_manager seg_core(CLK5MHZ, result, SEG, AN);
    assign DP = 1; // keep it off

    multiplier_control controller (clk, start, c_start, c_add, c_shift, c_done);
    multiplier_data data_processor (clk, a, b, c_start, c_add, c_shift, c_done, result);

    initial
        $readmemh("ROM_data.txt", D_ROM, 0, 31);
endmodule
