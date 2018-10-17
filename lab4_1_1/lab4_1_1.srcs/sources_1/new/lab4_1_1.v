`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 19:05:11 PM
// Design Name: 
// Module Name: add_two_values_task
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


module add_two_values_task(
    input [3:0] ain, bin,
    output reg [3:0] sum,
    output reg cout
    );
    task add_two_values;
        input [3:0] ain, bin;
        output [3:0] sum;
        output cout;

        reg [4:0] as, bs, s;

        begin
            as = {1'b0, ain};
            bs = {1'b0, bin};
            s = as + bs;
            sum = s[3:0];
            cout = s[4];
        end
    endtask
    
    always @*
        add_two_values(ain, bin, sum, cout);
endmodule
