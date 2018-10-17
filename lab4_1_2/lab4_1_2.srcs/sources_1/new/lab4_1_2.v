`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2018 07:39:15 PM
// Design Name: 
// Module Name: lab4_1_2
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


module calc_even_parity_task(
    input [7:0] ain,
    output reg parity
    );
    
    task calc_even_parity;
        input [7:0] a;
        output p;
        
        begin
            p = ^a;
        end
    endtask
    
    always @ ain
        calc_even_parity(ain, parity);
endmodule
