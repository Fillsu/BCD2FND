`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 10:41:11
// Design Name: 
// Module Name: HalfAdders
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


module HalfAdders(
  
    input i_switch_0,
    input i_switch_1,
    output o_sum,o_carry

    );
    assign o_sum= i_switch_0 ^ i_switch_1;
    assign o_carry=i_switch_0 & i_switch_1;
    
endmodule
