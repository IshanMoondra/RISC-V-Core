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

module soc_fpga (
	input clk,
	input resetn, //sunmiao
	output wire halt, //IshanMoondra 
	output wire misaligned_fetch,

	output ser_tx,
	input ser_rx,

	output flash_csb,
	output flash_clk,

	inout flash_io0,
	inout flash_io1,
	inout flash_io2,
	inout flash_io3
);

	wire rst_n;

	reset_button iReset
		(
			.reset_n(resetn),
			.clk(clk),
			.rst_n(rst_n)
		);

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

	assign flash_io0 = flash_io0_oe ? flash_io0_do : 1'bz;
	assign flash_io0_di = flash_io0;  // Read from the bus
	
	assign flash_io1 = flash_io1_oe ? flash_io1_do : 1'bz;
	assign flash_io1_di = flash_io1;
	
	assign flash_io2 = flash_io2_oe ? flash_io2_do : 1'bz;
	assign flash_io2_di = flash_io2;
	
	assign flash_io3 = flash_io3_oe ? flash_io3_do : 1'bz;
	assign flash_io3_di = flash_io3;


	icebreaker_v1 iSoC_FPGA 
	(
		.clk          (clk         ),
		// .resetn       (rst_n	   ),
		.resetn       (resetn      ),
		.halt(halt),
		.misaligned_fetch(misaligned_fetch),

		.ser_tx       (ser_tx      ),
		.ser_rx       (ser_rx      ),

		.flash_csb    (flash_csb   ),
		.flash_clk    (flash_clk   ),

		.flash_io0_oe (flash_io0_oe),
		.flash_io1_oe (flash_io1_oe),
		.flash_io2_oe (flash_io2_oe),
		.flash_io3_oe (flash_io3_oe),

		.flash_io0_do (flash_io0_do),
		.flash_io1_do (flash_io1_do),
		.flash_io2_do (flash_io2_do),
		.flash_io3_do (flash_io3_do),

		.flash_io0_di (flash_io0_di),
		.flash_io1_di (flash_io1_di),
		.flash_io2_di (flash_io2_di),
		.flash_io3_di (flash_io3_di)
	);

endmodule

module reset_button 
	(
		input reset_n, 
		input clk,
		output rst_n
	);

reg reset_n_ff0;
reg reset_n_ff1;
reg reset_n_ff2;

always @(posedge clk)
begin
	if (~reset_n)
	begin
		reset_n_ff0 <= 0;
		reset_n_ff1 <= 0;
		reset_n_ff2 <= 0;
	end	
	else
	begin
		reset_n_ff0 <= reset_n;
		reset_n_ff1 <= reset_n_ff0;
		reset_n_ff2 <= reset_n_ff1;
	end
end

assign rst_n = reset_n_ff2;
endmodule