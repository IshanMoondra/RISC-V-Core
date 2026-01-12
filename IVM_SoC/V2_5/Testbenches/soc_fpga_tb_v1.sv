/*
 *  PicoSoC - A simple example SoC using PicoRV32
 *
 *  Copyright (C) 2017  Claire Xenia Wolf <claire@yosyshq.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */

`timescale 1 ns / 1 ps

module soc_fpga_tb_v1;
	
	reg clk;
	reg rst_n;
	wire halt;
	wire misaligned_fetch;
	integer count;

	// TB_UART Signals
	logic tb_baud_we;
	logic tb_data_we;
	logic [31:0] tb_set_baud;
	wire tb_rx_rdy;
	logic tb_clr_rx_rdy;
	logic tb_trmt;
	wire tb_trmt_done;
	logic [31:0] tb_tx_buffer;
	wire [31:0] tb_rx_buffer;

	// What am I even testing here?
	// A SoC where I want a 'perfect' cache, ie, no cache :P
	// So SoC must have:
	// CPU, UART (for IO basics), Byte Addressable Code Memory
	// The 4KB of SRAM is untouched. 
	// Okay: So I can instantiate the ice_breaker itself, but to the 
	// SoC, add the faux cache memory. 
	
	// The wires for the Setup 
	wire ser_rx;
	// assign ser_rx = 1;
	wire ser_tx;

	wire flash_csb;
	wire flash_clk;

	wire flash_io0;
	wire flash_io1;
	wire flash_io2;
	wire flash_io3;

	// Instantiate the Icebreaker with the faux cache
	soc_fpga iSOC_FPGA 
	(
		.clk      (clk      ),
		.resetn	  (rst_n	),
		.halt	  (halt		),
		.misaligned_fetch(misaligned_fetch),
		.ser_rx   (ser_rx   ),
		.ser_tx   (ser_tx   ),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.flash_io2(flash_io2),
		.flash_io3(flash_io3)
		);

	spiflash spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(flash_io2),
		.io3(flash_io3)
	);

	UART iTB_UART (
		.clk(clk),
		.rst_n(rst_n),
		.baud_we(tb_baud_we),
		.data_we(tb_data_we),
		.set_baud(tb_set_baud),
		.get_baud(),
		.data_tx(tb_tx_buffer),
		.data_rx(tb_rx_buffer),
		// Note the reversed polarity
		.RX(ser_tx),
		.TX(ser_rx),
		.rx_rdy(tb_rx_rdy),
		.clr_rx_rdy(tb_clr_rx_rdy),
		.trmt(tb_trmt),
		.tx_done(tb_trmt_done)
	);

	// DPI-C Trials
	// Import the DPI-C function
	import "DPI-C" function void hello_world();

	initial
	begin
		$display("Calling DPI-C function: ");
		hello_world();
		$stop();
	end
	
	
	initial
	begin
		// // Dumping the Waveforms // ModelSim dies around 47 ms
		// $dumpfile("soc_v1.fsdb");
		// $dumpvars(0, soc_tb_v1);

		// Set up the basic Universal Signals
		clk     = 0;
		rst_n   = 0;
		count   = 0;

		// TB_UART Setup
		tb_baud_we = 0;
		tb_data_we = 0;
		tb_set_baud = 1000;
		tb_clr_rx_rdy = 0;
		tb_trmt = 0;
		tb_tx_buffer = 32'd65;

		// Hold SoC in RESET for 10 cycles
		repeat(10) @(negedge clk);
		rst_n   = 1;

		// SoC starts Program Execution
		@(posedge clk);
		// Fork Join for easy tracking
		fork
			begin: Timeout            
				while (count < 64'd2000000000)
					begin
						@(posedge clk);
						count = count + 1;                    
					end
				$display("More than %d cycles of simulation, timeout!", count);
				$stop();
			end: Timeout
			begin: Testing
				@(posedge halt);
				disable Timeout;
				@(posedge clk);
				$display("Processor Halted!");
				$display("Cycle Count: %d", count);
				@(posedge clk);
				$display("Cycle Count: %d", count);
				$display("Test done!");
				$stop();
				// $finish();
			end: Testing
		join
	end

	// Clock Generator
	always
    	#5 clk <= ~clk;

	// Misaligned Memory Events
	always @(posedge clk)
		begin
			// Checks for misaligned code memory fetches
			if (misaligned_fetch)
				begin
					$display("Misalinged Memory access on: %h, at cycle %d", uut.iSoC.pc_fetch, count);
					$stop();			
				end				
		end

	// Bare bones UART Transmit
	always @(posedge clk)
		begin
			if (count === 0999)
				tb_data_we = 1;
			if (count === 1000)
			begin
				// tb_baud_we = 1;
				// tb_set_baud = 50;
				// tb_tx_buffer = 32'd65;
				tb_trmt = 1;
			end
			if (count === 1001)
			begin
				tb_baud_we = 0;
				tb_trmt = 0;
			end
		end

endmodule
