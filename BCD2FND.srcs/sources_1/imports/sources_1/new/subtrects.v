`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 15:34:31
// Design Name: 
// Module Name: subtrects
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


module subtrects(
    input i_switch_8_mode,
    input i_switch_0,
    input i_switch_1,
    input i_switch_2,
    input i_switch_3,
    input i_switch_4,
    input i_switch_5,
    input i_switch_6,
    input i_switch_7,
    
    
    input [1:0] i_digitSelect,
    input i_en,
    output[3:0] o_digit,
    output[7:0] o_font,
    
    input i_carry,
    
    output [3:0]o_sum
    );
    
 


    wire w_carry_00,w_carry_01,w_carry_10;

    FullAdders fa0(
    .i_switch_8_mode(i_switch_8_mode),
    .i_switch_0(i_switch_0),
    .i_switch_1(i_switch_1),
    .i_carry(i_carry),
    .o_sum(o_sum[0]),
    .o_carry(w_carry_00)
    );
    
    
    FullAdders fa1(
        .i_switch_8_mode(i_switch_8_mode),
    .i_switch_0(i_switch_2),
    .i_switch_1(i_switch_3),
    .i_carry(w_carry_00),
    .o_sum(o_sum[1]),
    .o_carry(w_carry_01)
    );
    FullAdders fa2(
        .i_switch_8_mode(i_switch_8_mode),
    .i_switch_0(i_switch_4),
    .i_switch_1(i_switch_5),
    .i_carry(w_carry_01),
    .o_sum(o_sum[2]),
    .o_carry(w_carry_10)
    );    
    
    FullAdders fa3(
    .i_switch_8_mode(i_switch_8_mode),
    .i_switch_0(i_switch_6),
    .i_switch_1(i_switch_7),
    .i_carry(w_carry_10),
    .o_sum(o_sum[3]),
    .o_carry(o_carry)
    );
    
      BCDTOFND FND(
    .i_digitSelect(i_digitSelect),
    .i_value(o_sum),
    .i_en(i_en),
    .o_digit(o_digit),
    .o_font(o_font)
    );
endmodule
