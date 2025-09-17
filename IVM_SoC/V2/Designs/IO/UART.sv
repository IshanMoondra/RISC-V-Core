module UART
    (   
        input wire clk,
        input wire rst_n,
        input wire baud_we,
        input wire data_we,
        input wire [31:0] set_baud,
        output wire [31:0] get_baud,
        input wire [31:0] data_tx,
        output wire [31:0] data_rx,
        input wire RX,
        output wire TX,
        output wire rx_rdy,
        input wire clr_rx_rdy,
        input trmt,
        output wire tx_done
    );

reg trmt_ff;
reg [31:0] baud_rate;
reg [31:0] transmit_buffer;
reg [31:0] receive_buffer;

wire [7:0] rx_data;
wire [7:0] tx_data;

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        trmt_ff <= 0;
    else
        trmt_ff <= trmt;

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        begin
            baud_rate <= 1000;
            transmit_buffer <= 0;
            // receive_buffer <= '1;
        end
    else if (baud_we)
        baud_rate <= set_baud;
    else if (data_we)
        transmit_buffer <= data_tx;

assign receive_buffer = {{24{1'b0}}, rx_data};
assign tx_data = transmit_buffer[7:0];
assign data_rx = receive_buffer;
assign get_baud = baud_rate;

//////////////////////////////
// Instantiate Transmitter //
////////////////////////////
UART_tx iTX
    (
        .clk(clk),
        .rst_n(rst_n),
        .TX(TX),
        .BAUD_PERIOD(baud_rate),
        .trmt(trmt_ff),
        // .tx_data(tx_data),
        .tx_data(transmit_buffer[7:0]),
        .tx_done(tx_done)
    );

///////////////////////////
// Instantiate Receiver //
/////////////////////////
UART_rx iRX
    (
        .clk(clk),
        .rst_n(rst_n),
        .RX(RX),
        .BAUD_PERIOD(baud_rate),
        .HALF_BAUD_PERIOD((baud_rate >> 1)),
        .rdy(rx_rdy),
        .clr_rdy(clr_rx_rdy),
        .rx_data(rx_data)
    );

endmodule
