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

module testbench_v0;
	reg clk;
	reg resetn;
	wire halt;

	always #5 clk = (clk === 1'b0);

	localparam ser_half_period = 53;
	event ser_sample;

	initial begin
		$dumpfile("testbench.vcd");
		$dumpvars(0, testbench_v0);
		resetn = 0;
		repeat(10) @(negedge clk);
		resetn = 1;
		// Simulation Runs now
		// Second Initial Block will track halt signal.
		repeat (6) begin
			repeat (6000) @(posedge clk);
			$display("+6000 cycles");
		end
		$finish;
	end
	// Initial Block to track the Halt Signal
	initial begin
		@ (posedge halt); 
		repeat(10) @(posedge clk);
		$display("Program Complete!");
		$stop;
	end

	integer cycle_cnt = 0;

	always @(posedge clk) begin
		cycle_cnt <= cycle_cnt + 1;
	end


	wire ser_rx;
	wire ser_tx;

	wire flash_csb;
	wire flash_clk;

	wire flash_io0;
	wire flash_io1;
	wire flash_io2;
	wire flash_io3;

	wire flash_io0_oe;
	wire flash_io1_oe;
	wire flash_io2_oe;
	wire flash_io3_oe;
	wire flash_io0_do;
	wire flash_io1_do;
	wire flash_io2_do;
	wire flash_io3_do;
	wire flash_io0_di;
	wire flash_io1_di;
	wire flash_io2_di;
	wire flash_io3_di;

	icebreaker_v0 #(
		.MEM_WORDS(1024)
	) uut (
		.clk      (clk      ),
		.resetn	  (resetn	),
		.halt	  (halt		),
		.ser_rx   (ser_rx   ),
		.ser_tx   (ser_tx   ),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0_oe(flash_io0_oe),
		.flash_io1_oe(flash_io1_oe),
		.flash_io2_oe(flash_io2_oe),
		.flash_io3_oe(flash_io3_oe),
		.flash_io0_do(flash_io0_do),
		.flash_io1_do(flash_io1_do),
		.flash_io2_do(flash_io2_do),
		.flash_io3_do(flash_io3_do),
		.flash_io0_di(flash_io0_di),
		.flash_io1_di(flash_io1_di),
		.flash_io2_di(flash_io2_di),
		.flash_io3_di(flash_io3_di)
	);

assign flash_io0 = flash_io0_oe ? flash_io0_do : 1'bz;
assign flash_io0_di = flash_io0;  // Read from the bus
assign flash_io1 = flash_io1_oe ? flash_io1_do : 1'bz;
assign flash_io1_di = flash_io1;
assign flash_io2 = flash_io2_oe ? flash_io2_do : 1'bz;
assign flash_io2_di = flash_io2;
assign flash_io3 = flash_io3_oe ? flash_io3_do : 1'bz;
assign flash_io3_di = flash_io3;


	spiflash spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(flash_io2),
		.io3(flash_io3)
	);

	reg [7:0] buffer;

	always begin
		@(negedge ser_tx);

		repeat (ser_half_period) @(posedge clk);
		-> ser_sample; // start bit

		repeat (8) begin
			repeat (ser_half_period) @(posedge clk);
			repeat (ser_half_period) @(posedge clk);
			buffer = {ser_tx, buffer[7:1]};
			-> ser_sample; // data bit
		end

		repeat (ser_half_period) @(posedge clk);
		repeat (ser_half_period) @(posedge clk);
		-> ser_sample; // stop bit

		if (buffer < 32 || buffer >= 127)
			$display("Serial data: %d", buffer);
		else
			$display("Serial data: '%c'", buffer);
	end

endmodule
