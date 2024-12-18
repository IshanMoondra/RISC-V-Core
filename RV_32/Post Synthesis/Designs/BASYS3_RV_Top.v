`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 23:50:24
// Design Name: 
// Module Name: BASYS3_RV_Top
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


module BASYS3_RV_Top(
    input clk,
    input [15:0] sw,
    output [15:0] led,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );

wire [15:0] SWITCH;
wire [4:0] BUTTONS;
wire [15:0] OUT;

RV_Mux MUX(
    .clk(clk),
    .mux_in(SWITCH),
    .out(OUT)
    );
    
BASYS3_7Seg_Driver Display(
    .clk(clk),
    .display(OUT),
    .seg(seg),
    .dp(dp),
    .an(an)
    );    
    
BASYS3_Switch_Buttons_Driver_r3 SB(
    .clk(clk),
    .sw(sw),
    .btnC(1'b0),
    .btnU(1'b0),
    .btnR(1'b0),
    .btnD(1'b0),
    .btnL(1'b0),
    .switch(SWITCH),
    .buttons(BUTTONS)
    );    

BASYS3_LED_Driver LED(
    .clk(clk),
    .data_in(SWITCH),
    .led(led)
    );
    
endmodule
