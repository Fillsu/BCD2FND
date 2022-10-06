`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 11:34:17
// Design Name: 
// Module Name: FullAdders
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


module FullAdders(
    
    input i_switch_8_mode,
    input i_switch_0,
    input i_switch_1,
    input i_carry,
    output o_sum,o_carry

    );
    wire ex_i_switch_1;
    
    wire w_sum_0,w_carry_0,w_carry_1;
    assign ex_i_switch_1=i_switch_1^i_switch_8_mode;
    
    HalfAdders HF_0(

     .i_switch_0(i_switch_0),
     .i_switch_1(ex_i_switch_1),
    .o_sum(w_sum_0),.o_carry(w_carry_0)

    );

    HalfAdders HF_1(

     .i_switch_0(w_sum_0),
     .i_switch_1(i_carry),
    .o_sum(o_sum),.o_carry(w_carry_1)

    );

    assign o_carry= w_carry_1 | w_carry_0;
    
endmodule
