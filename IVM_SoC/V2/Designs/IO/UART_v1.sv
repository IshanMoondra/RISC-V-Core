

module UART_v1
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // MMIO Interface
        input wire [3:0] data_address,
        input wire [31:0] data_store,
        output logic [31:0] data_fetch,
        input data_read,
        input data_enable,
        // UART Signbals
        input wire ser_rx,
        output wire ser_tx
    );

logic [7:0]     uart_status;
logic [31:0]    get_baud;
logic [31:0]    get_char;
wire  [3:0]		data_address_internal;
assign data_address_internal = data_enable ? data_address[3:0] : 0;

wire uart_getchar_sel;
wire uart_setchar_sel;
wire uart_baud_sel;
wire uart_status_sel;

wire receive_done;
wire transmit_done;

assign uart_status      = {4'h0, ser_tx, ser_rx, receive_done, transmit_done};

assign uart_baud_sel    = data_address_internal[3:0] == 4'd0;
assign uart_getchar_sel = data_address_internal[3:0] == 4'd4;
assign uart_setchar_sel = data_address_internal[3:0] == 4'd8;
assign uart_status_sel  = data_address_internal[3:0] == 4'd12;

assign data_fetch       =   (data_enable && data_read) ? 
							    (uart_status_sel)   ? ({24'h0, uart_status})
                            :   (uart_baud_sel)     ? (get_baud)
                            :   (uart_getchar_sel)  ? (get_char)
                            :   (32'h0)
							:	(32'h0);

// Instantiating the UART and wrapping it neater
	UART iUART
		(
			// Universal Signals
			.clk(clk),
			.rst_n(rst_n),
			// Serial Data Signals
			.RX(ser_rx),
			.TX(ser_tx),
			// New Byte Rdy & Clear New Byte Rdy Signals
			.rx_rdy(receive_done),
			.clr_rx_rdy(uart_getchar_sel & data_enable & data_read),
			// Send new Byte & Transmit Done Signals
			.trmt(uart_setchar_sel & data_enable & ~data_read),
			.tx_done(transmit_done),
			// Baud Rate Config
			.baud_we(uart_baud_sel & ~data_read & data_enable),
			.set_baud(data_store),
			.get_baud(get_baud),
			// Data Buffers
			.data_we(uart_setchar_sel & ~data_read & data_enable),
			.data_rx(get_char),
			.data_tx(data_store)
		);

endmodule