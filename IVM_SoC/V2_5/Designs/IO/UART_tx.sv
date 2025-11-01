module UART_tx(
	input  logic clk,
  input  logic rst_n,
  input wire [31:0] BAUD_PERIOD,
	input  logic trmt,
	input  logic [7:0] tx_data,
	output logic tx_done,
	output logic TX
);

  // localparam BAUD_PERIOD = 12'ha2c - 1;

  typedef enum reg [1:0] { 
    IDLE     = 2'b00,
		WAIT     = 2'b01, 
    TRANSMIT = 2'b10,
		DONE     = 2'b11
  }state_t; // state of state machine

  state_t state, nextstate;
  reg [11:0] baud_cnt;
  reg [8:0]  tx_shift_reg;
  reg [3:0]  bit_cnt;
  reg init, shift, set_done;
  
  // continuous assignment for TX to LSB of shift_reg
  assign TX = tx_shift_reg[0];

  // dff for updating state
  always_ff @(posedge clk, negedge rst_n)
    if(!rst_n) state <= IDLE;
    else state <= nextstate;

  // baud counter
  always_ff @(posedge clk, negedge rst_n)
    if (~rst_n) baud_cnt <= 0;
    else if(init | shift) baud_cnt <= 0;
    else baud_cnt <= baud_cnt + 1;

  always_ff @(posedge clk, negedge rst_n)
    if (~rst_n) bit_cnt <= 0;
    else if(init) bit_cnt <= 0;
    else if (shift) bit_cnt <= bit_cnt + 1;

  // shifter
  always_ff @(posedge clk, negedge rst_n)
    if (!rst_n) tx_shift_reg <= 9'h1ff;
    else if (init) tx_shift_reg <= {tx_data, 1'b0};
    else if (shift) tx_shift_reg <= {1'b1, tx_shift_reg[8:1]};

  // dff for setting done flag
  always_ff @(posedge clk, negedge rst_n)
    if (!rst_n) tx_done <= 0;
    else if (init) tx_done <= 0;
    else if (set_done) tx_done <= 1;

  // SM logic for UART_tx
  always_comb begin
    init = 0;
    nextstate = state;
    shift = 0;
    set_done = 0;
    case(state)
      IDLE: 
        if(trmt) begin
          nextstate = WAIT;
          init = 1;
        end
      WAIT:
        if(baud_cnt == BAUD_PERIOD)
	  nextstate = TRANSMIT;
      TRANSMIT: begin
	shift = 1;
        nextstate = WAIT;
        if (bit_cnt == 9) begin
          set_done = 1;
          nextstate = IDLE;
        end
      end
      default:
        nextstate = IDLE;
    endcase
  end

endmodule

