`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 07:22:51
// Design Name: 
// Module Name: sum_rest
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


module sum_rest(
    input [3:0] a,b,
    input sum_rest,
    input clk,
    );
    wire [3:0] out;
    wire [3:0] co;
        
    adder_subs i_adder_subs(
        .a(a),
        .b(b),
        .sel(sum_rest),
        .s(out),
        .co(co[0])
    );

    controller_4_display i_controller_4_display(
        .a(a),
        .b(b),
        .d(out),
        .c(co),
        .clk(clk)
    );
    
endmodule
