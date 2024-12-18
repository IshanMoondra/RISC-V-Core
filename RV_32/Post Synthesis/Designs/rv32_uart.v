`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 11:12:45
// Design Name: 
// Module Name: rv32_uart
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

//Remove Parity Entirely.
//Check NANDLAND's UART Implementation.
//Seems to be a synchronization issue. 
module rv32_uart(
    input clk,
    output reg RsTx,
    input RsRx,
    output reg [31:0] data_rx,
    input new_data,
    output reg ready,
    input [31:0] data_tx
    );

reg [31:0] buffer_tx;
reg [7:0] parity;
reg [13:0] count;
reg uart_clk;
reg [1:0] continue;
reg [2:0] state;
reg [4:0] data_index;

initial
begin
//Initalize the Line.
RsTx <= 1;      //Line Held Idle. 
data_rx <= 0;   //Intialised to no Data.

ready <= 1;
uart_clk <= 0;
count <= 0;       //Clock Division Counter. 10416 for 9600 Baud at 100MHz.
data_index <= 0;  //Data Buffer Register Indexing Counter. 
state <= 0;
continue <= 0;
buffer_tx <= 0;
parity <= 0;   
end

always@(posedge clk)
begin
    buffer_tx <= data_tx;
    if (count >= 10417)
    begin    
        uart_clk <= ~uart_clk;
        count <= 0;
    end
    else
        count <= count + 1;
end

//States for FSM: Idle, Start, Transmit, Parity, Stop, Continue.

always@(posedge uart_clk)
begin
    continue <= 3;
    if (buffer_tx < 16777216)       //Data is in 3 Octets.
        continue <= 2;
        if (buffer_tx < 65536)      //Data is in 2 Octets.
            continue <= 1;
            if (buffer_tx < 256)    //Data is in 1 Octet.
                continue <= 0;
    
    case(state)
    0: //IDLE
        begin
            RsTx <= 1;
            if (new_data)
            begin    
                state <= 1;
                ready <= 0;
            end    
            else
                state <= 0;
        end
    1: //START
        begin
            RsTx <= 0;
            state <= 2;
        end
    2: //TRANSMIT
        begin
            if (data_index != 0)
                if (data_index % 8 == 0)
                    state <= 5;
                else
                begin
                    RsTx <= buffer_tx[data_index];
                    parity[data_index % 8] <= buffer_tx[data_index];
                    state <= 2;
                end
            else
                RsTx <= buffer_tx[0];
            data_index <= data_index + 1;
        end
    3: //PARITY
        begin
            RsTx <= ^parity;
            state <= 4;
        end
    4: //STOP
        begin
            RsTx <= 1;
            state <= 5;
        end
    5: //CONTINUE
        begin
            RsTx <= 1;
            if (continue > 0)
            begin    
                continue <= continue - 1;
                state <= 1;
            end    
            else
                state <= 0;
                ready <= 1;
        end    
    endcase
end    
endmodule
