module UART_rx(
	input  logic clk, 
	input  logic rst_n,
  input  wire [31:0] BAUD_PERIOD,
  input  wire [31:0] HALF_BAUD_PERIOD,
	input  logic RX, 
	input  logic clr_rdy,
	output logic rdy,
	output logic [7:0] rx_data
); 

  // localparam BAUD_PERIOD      = 12'ha2c - 1;
  // localparam HALF_BAUD_PERIOD = 12'h516;

  typedef enum reg [1:0] { 
        IDLE     = 2'b00,
			  INIT     = 2'b01,
			  WAIT     = 2'b10, 
        RECEIVE  = 2'b11
  }state_t; // state of state machine

  state_t state, nextstate;
  reg [11:0] baud_cnt;
  reg [8:0]  rx_shift_reg;
  reg [3:0]  bit_cnt;
  reg start, shift, set_rdy;
  reg rx_hold, rx_read; 

  // continuous assign for rx_data
  assign rx_data = rx_shift_reg[7:0]; 

  // dff to update state
  always_ff @(posedge clk, negedge rst_n)
    if(!rst_n) state <= IDLE;
    else state <= nextstate;

  // dff for bit counter
  always_ff @(posedge clk, negedge rst_n)
    if (~rst_n) bit_cnt <= 0;
    else if(start) bit_cnt <= 0;
    else if (shift) bit_cnt <= bit_cnt + 1;

  // dff for baud counter
  always_ff @(posedge clk, negedge rst_n)
    if (~rst_n) baud_cnt <= 0;
    else if(start | shift) baud_cnt <= 0;
    else baud_cnt <= baud_cnt + 1;

  // shifter for rx_data
  always_ff @(posedge clk, negedge rst_n)
    if (~rst_n) rx_shift_reg <= 9'h1ff;
    else if (start) rx_shift_reg <= 9'h1ff;
    else if (shift) rx_shift_reg <= {rx_read, rx_shift_reg[8:1]};
  
  // dff for meta-stability & preset
  always_ff @(posedge clk, negedge rst_n)
    if (!rst_n) begin
      rx_hold <= 1;
      rx_read <= 1;
    end
    else begin
      rx_read <= rx_hold;
      rx_hold <= RX;
    end 

  // dff for rdy flag
  always_ff @(posedge clk, negedge rst_n)
    if(!rst_n) rdy <= 0;
    else if (clr_rdy) rdy <= 0;
    else if (set_rdy) rdy <= 1;
  
  // combinational state machine
  always_comb begin
    nextstate = state;
    start = 0; 
    set_rdy = 0; 
    shift = 0;
    case (state)
      IDLE:
        if(!rx_read) begin
          start = 1;
	  nextstate = INIT;
	end
      INIT:
	if(baud_cnt == HALF_BAUD_PERIOD) begin
          shift = 1;
          nextstate = WAIT;
	end
      WAIT:
	if(baud_cnt == BAUD_PERIOD) begin
 	  nextstate = RECEIVE; 
	  shift = 1;
        end
      RECEIVE:
        if(bit_cnt == 10) begin
	  set_rdy = 1;
	  nextstate = IDLE;
 	end
	else
	  nextstate = WAIT;
    endcase
  end

endmodule