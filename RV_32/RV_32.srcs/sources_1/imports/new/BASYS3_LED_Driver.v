`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 13:40:30
// Design Name: 
// Module Name: BASYS3_LED_Driver
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


module BASYS3_LED_Driver(
    input clk,
    input [15:0] data_in,
    output reg [15:0] led
    );
    
initial
begin
    led <= 16'hFFFF;
end    

always@(posedge clk)
begin
    led <= data_in;
end
    
endmodule
