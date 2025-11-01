/*
gpio_v1.sv
This module will enable MMIO based Multiplexing of the QSPI pins for local GPIO usage. 
*/

module gpio_v1
	(
		// Universal Signals
		input soc_clk,
		input rst_n,
		// GPIO Vectors
		output logic [3:0] master_control,
		output logic [3:0] gpio_oe,
		output logic [3:0] gpio_output,
		input [3:0] gpio_inputs,
		// Flash Specific IO
		output logic [1:0] flash_control,
		output logic [1:0] flash_output,
		// MMIO Interfacing
		input gpio_enable,
		input [5:0] data_addr,
		input [31:0] data_store,
		output logic [31:0] data_fetch
	);

// One channel: Current Master Bit, Current OE bit, Current Input, Current Output, New Master, New OE, Reserved, New Output
logic [7:0] gpio_channel [0:3];
logic [7:0] flash_special;

// MMIO Address Decoder Setters/Getters
logic get_gpio_word;				// All four channels
logic get_gpio_half_high;		// Channels 2 & 3 together
logic get_gpio_half_low;		// Channels 0 & 1 together
logic get_gpio_chan0;				// Channel 0 individually
logic get_gpio_chan1;				// Channel 1 individually
logic get_gpio_chan2;				// Channel 2 individually
logic get_gpio_chan3;				// Channel 3 individually
logic get_flash_special;		// For Flash CSB and CLK Control

logic set_gpio_word;				// All four channels
logic set_gpio_half_high;		// Channels 2 & 3 together
logic set_gpio_half_low;		// Channels 0 & 1 together
logic set_gpio_chan0;				// Channel 0 individually
logic set_gpio_chan1;				// Channel 1 individually
logic set_gpio_chan2;				// Channel 2 individually
logic set_gpio_chan3;				// Channel 3 individually
logic set_flash_special;		// For Flash CSB and CLK Control

// Double Flopping the inputs to resolve metastability issues
reg [3:0] gpio_inputs_ff1;
reg [3:0] gpio_inputs_ff2;

// GPIO Channel 0 
always_ff @ (posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			gpio_channel[0] <= 0;
		else if (set_gpio_chan0)
			gpio_channel[0] <= data_store[7:0];
		else if (set_gpio_half_low)
			gpio_channel[0] <= data_store[7:0];
		else if (set_gpio_word)
			gpio_channel[0] <= data_store[7:0];
		else
			begin
				gpio_channel[0][7] <= master_control	[0];
				gpio_channel[0][6] <= gpio_oe					[0];
				gpio_channel[0][5] <= gpio_inputs_ff2	[0];
				gpio_channel[0][4] <= gpio_output			[0];
			end
	end

// New values for the GPIO Channel 0
assign master_control	[0] = gpio_channel[0][3];
assign gpio_oe				[0]	= gpio_channel[0][2];
assign gpio_output		[0]	= gpio_channel[0][0];

// GPIO Channel 1 
always_ff @ (posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			gpio_channel[1] <= 0;
		else if (set_gpio_chan1)
			gpio_channel[1] <= data_store[7:0];
		else if (set_gpio_half_low)
			gpio_channel[1] <= data_store[15:8];
		else if (set_gpio_word)
			gpio_channel[1] <= data_store[15:8];
		else
			begin
				gpio_channel[1][7] <= master_control	[1];
				gpio_channel[1][6] <= gpio_oe					[1];
				gpio_channel[1][5] <= gpio_inputs_ff2	[1];
				gpio_channel[1][4] <= gpio_output			[1];
			end
	end

// New values for the GPIO Channel 1
assign master_control	[1] = gpio_channel[1][3];
assign gpio_oe				[1]	= gpio_channel[1][2];
assign gpio_output		[1]	= gpio_channel[1][0];

// GPIO Channel 2 
always_ff @ (posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			gpio_channel[2] <= 0;
		else if (set_gpio_chan2)
			gpio_channel[2] <= data_store[7:0];
		else if (set_gpio_half_high)
			gpio_channel[2] <= data_store[7:0];
		else if (set_gpio_word)
			gpio_channel[2] <= data_store[23:16];
		else
			begin
				gpio_channel[2][7] <= master_control	[2];
				gpio_channel[2][6] <= gpio_oe					[2];
				gpio_channel[2][5] <= gpio_inputs_ff2	[2];
				gpio_channel[2][4] <= gpio_output			[2];
			end
	end

// New values for the GPIO Channel 2
assign master_control	[2] = gpio_channel[2][3];
assign gpio_oe				[2]	= gpio_channel[2][2];
assign gpio_output		[2]	= gpio_channel[2][0];

// GPIO Channel 3
always_ff @ (posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			gpio_channel[3] <= 0;
		else if (set_gpio_chan3)
			gpio_channel[3] <= data_store[7:0];
		else if (set_gpio_half_high)
			gpio_channel[3] <= data_store[15:8];
		else if (set_gpio_word)
			gpio_channel[3] <= data_store[31:24];
		else
			begin
				gpio_channel[3][7] <= master_control	[3];
				gpio_channel[3][6] <= gpio_oe					[3];
				gpio_channel[3][5] <= gpio_inputs_ff2	[3];
				gpio_channel[3][4] <= gpio_output			[3];
			end
	end

// New values for the GPIO Channel 3
assign master_control	[3] = gpio_channel[3][3];
assign gpio_oe				[3]	= gpio_channel[3][2];
assign gpio_output		[3]	= gpio_channel[3][0];

// Flash Special
always_ff @ (posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			flash_special <= 0;
		else if (set_flash_special)
			flash_special <= data_store[7:0];
		else
			begin
				flash_special[4] <= flash_output[0];	// Flash CSB
				flash_special[5] <= flash_output[1];	// Flash CLK
				flash_special[6] <= flash_control[0];	// Flash CSB Control
				flash_special[7] <= flash_control[1];	// Flash CLK Control
			end
	end

assign flash_output 	= flash_special[1:0];
assign flash_control 	=	flash_special[3:2];

// Synchronizers work on SOC Clock, AON Domain
always_ff @( posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			begin
				gpio_inputs_ff1 <= 0;
				gpio_inputs_ff2 <= 0;
			end
		else
			begin
				gpio_inputs_ff1 <= gpio_inputs;
				gpio_inputs_ff2 <= gpio_inputs_ff1;
			end
	end

// Setter/Getter Address decoding
assign get_gpio_word 			= gpio_enable && (data_addr == 6'h00);
assign get_gpio_half_high = gpio_enable && (data_addr == 6'h04);
assign get_gpio_half_low	= gpio_enable && (data_addr == 6'h08);
assign get_flash_special	= gpio_enable && (data_addr == 6'h0C);
assign get_gpio_chan0			= gpio_enable && (data_addr == 6'h10);
assign get_gpio_chan1			= gpio_enable && (data_addr == 6'h14);
assign get_gpio_chan2			= gpio_enable && (data_addr == 6'h18);
assign get_gpio_chan3			= gpio_enable && (data_addr == 6'h1C);

assign set_gpio_word 			= gpio_enable && (data_addr == 6'h20);
assign set_gpio_half_high = gpio_enable && (data_addr == 6'h24);
assign set_gpio_half_low	= gpio_enable && (data_addr == 6'h28);
assign set_flash_special	= gpio_enable && (data_addr == 6'h2C);
assign set_gpio_chan0			= gpio_enable && (data_addr == 6'h30);
assign set_gpio_chan1			= gpio_enable && (data_addr == 6'h34);
assign set_gpio_chan2			= gpio_enable && (data_addr == 6'h38);
assign set_gpio_chan3			= gpio_enable && (data_addr == 6'h3C);

// Final MMIO Output Mux
assign data_fetch	= (gpio_enable)	?
											(get_gpio_word) 			? ({gpio_channel[3], gpio_channel[2], gpio_channel[1], gpio_channel[0]}) 	:
											(get_gpio_half_high)	? ({16'h0, gpio_channel[3], gpio_channel[2]})															:
											(get_gpio_half_low)		? ({16'h0, gpio_channel[1], gpio_channel[0]})															:
											(get_flash_special)		? ({24'h0, flash_special})																								:
											(get_gpio_chan0)			? ({24'h0, gpio_channel[0]})																							:
											(get_gpio_chan1)			? ({24'h0, gpio_channel[1]})																							:
											(get_gpio_chan2)			? ({24'h0, gpio_channel[2]})																							:
											(get_gpio_chan3)			? ({24'h0, gpio_channel[3]})																							:
											(0) :
										(0);

endmodule