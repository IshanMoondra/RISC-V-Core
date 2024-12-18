`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 00:49:10
// Design Name: 
// Module Name: rv32_uart_test
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


module rv32_uart_test(
    input clk,
    input sw,
    output reg RsTx,
    input RsRx
    );

wire RsTx1;
wire RsRx1;    
wire [31:0] Data_RX;
reg New_data;
wire Ready;
reg [31:0] Data_TX;    

rv32_uart UART (
    .clk(clk),
    .RsRx(RsRx1),
    .RsTx(RsTx1),
    .data_rx(Data_RX),
    .new_data(New_data),
    .ready(Ready),
    .data_tx(Data_TX));

initial
begin
    New_data <= 0;
    Data_TX <= 0;
    RsTx <= 1;
end

always@(posedge clk)
begin
    RsTx <= RsTx1;
    Data_TX <= 65;
    if (Data_TX == 127)
        Data_TX <= 32;
    if (Ready & sw)
        New_data <= 1;
    else
    begin
        New_data <= 0;
        //Data_TX <= Data_TX + 1;
    end
end
    
endmodule
