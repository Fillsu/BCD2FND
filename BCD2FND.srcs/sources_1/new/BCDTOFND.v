`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:37:07
// Design Name: 
// Module Name: BCDTOFND
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


module BCDTOFND(
    input [1:0] i_digitSelect,
    input[3:0] i_value,
    input i_en,
    output[3:0] o_digit,
    output[7:0] o_font
    );

    FND_Select_Decoder SEL(
        .i_digitSelect(i_digitSelect),
   .i_en(i_en),
    .o_digit(o_digit)

    );

    BCD2FND_Decoder BCD(
    .i_value(i_value) ,
    .i_en(i_en),
    .o_font(o_font) 
     );
endmodule
