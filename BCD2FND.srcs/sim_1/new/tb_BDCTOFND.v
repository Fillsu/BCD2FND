`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 11:55:21
// Design Name: 
// Module Name: tb_BDCTOFND
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


module tb_BDCTOFND();

reg [1:0] i_digitSelect,i_en;
wire [3:0] o_digit;
reg [3:0] i_value;
wire [7:0] o_font;

BCD2FND_Decoder dut1(
.i_value( i_value),
.o_font(o_font) );


 FND_Select_Decoder dut2(
    .i_digitSelect(i_digitSelect),
    .i_en(i_en),
    .o_digit(o_digit)
    );

    initial begin
        #00 i_digitSelect=2'b00;i_en=1'b1;
        #10 i_digitSelect=2'b01;i_en=1'b1;
        #10 i_digitSelect=2'b10;i_en=1'b1;
        #10 i_digitSelect=2'b11;i_en=1'b1;
        #10 i_digitSelect=2'b00;i_en=1'b0;i_value=4'h1;
        #10 i_digitSelect=2'b01;i_en=1'b0;i_value=4'h2;
        #10 i_digitSelect=2'b10;i_en=1'b0;i_value=4'h3;
        #10 i_digitSelect=2'b11;i_en=1'b0;i_value=4'h4;
        #10 i_digitSelect=2'b00;i_en=1'b0;i_value=4'h5;
        #10 i_digitSelect=2'b01;i_en=1'b0;i_value=4'h6;
        #10 i_digitSelect=2'b10;i_en=1'b0;i_value=4'h7;
        #10 i_digitSelect=2'b11;i_en=1'b0;i_value=4'h8;
        #10 $finish;
    end

endmodule
