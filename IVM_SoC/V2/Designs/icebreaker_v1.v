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

module icebreaker_v1 (
	input clk,
	input resetn, //sunmiao
	output wire halt, //IshanMoondra 
	output wire misaligned_fetch,

	output ser_tx,
	input ser_rx,

	output flash_csb,
	output flash_clk,

	output flash_io0_oe,
	output flash_io1_oe,
	output flash_io2_oe,
	output flash_io3_oe,

	output flash_io0_do,
	output flash_io1_do,
	output flash_io2_do,
	output flash_io3_do,

	input  flash_io0_di,
	input  flash_io1_di,
	input  flash_io2_di,
	input  flash_io3_di

);
	parameter integer MEM_WORDS = 1024;

	wire        iomem_valid;
	reg         iomem_ready;
	wire [3:0]  iomem_wstrb;
	wire [31:0] iomem_addr;
	wire [31:0] iomem_wdata;
	reg  [31:0] iomem_rdata;

	wire cim_mem_valid;
	assign cim_mem_valid = iomem_valid && (iomem_addr[31:24] == 8'h 03) && (iomem_addr[11:2] == 10'h070);
	wire cim_done;
	reg [31:0] cim_mem_wdata;
	wire [31:0] cim_mem_rdata;
	always @(posedge clk) begin
		if (!resetn) begin
			// gpio <= 0;
			iomem_ready <= 0; 
			iomem_rdata <= 0;
		end else begin // write data for cim core, there are should be the wire inst3aed of regs!!!
			if (iomem_valid && !iomem_ready && iomem_addr[31:24] == 8'h 03) begin
				// iomem_ready <= 1;
				// iomem_rdata <= gpio;
				if (iomem_wstrb[0]) cim_mem_wdata[ 7: 0] <= iomem_wdata[ 7: 0];
				if (iomem_wstrb[1]) cim_mem_wdata[15: 8] <= iomem_wdata[15: 8];
				if (iomem_wstrb[2]) cim_mem_wdata[23:16] <= iomem_wdata[23:16];
				if (iomem_wstrb[3]) cim_mem_wdata[31:24] <= iomem_wdata[31:24];
			end else begin // the cim co-processor send data out
			if (cim_done && iomem_addr[31:24] == 8'h 03) begin
				// iomem_ready <= 1;
				// iomem_rdata <= gpio;
				if (iomem_wstrb[0]) iomem_rdata[ 7: 0] <= cim_mem_rdata[ 7: 0];
				if (iomem_wstrb[1]) iomem_rdata[15: 8] <= cim_mem_rdata[15: 8];
				if (iomem_wstrb[2]) iomem_rdata[23:16] <= cim_mem_rdata[23:16];
				if (iomem_wstrb[3]) iomem_rdata[31:24] <= cim_mem_rdata[31:24];
			end
		end
		end
	end

	// // Add the CIM Wrapper Here
	// // We can interface it via RF to share data to & from CPU.

	// CIM_TOP_WRAPPER cim_top_wrap_inst (
	// 	.clk(clk),
	// 	.resetn(resetn),
	// 	.mem_valid(cim_mem_valid), 	// input
	// 	.mem_addr(iomem_addr),  	// input
	// 	.mem_wdata(cim_mem_wdata),  // input
	// 	.mem_wstrb(iomem_wstrb),
	// 	.mem_rdata(cim_mem_rdata),  // output
	// 	.cim_done(cim_done)
	// );


	ivm_soc_v1 iSoC 
	(
		.clk          (clk         ),
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
		.flash_io3_di (flash_io3_di),

		.iomem_valid  (iomem_valid ),
		.iomem_ready  (iomem_ready ),
		.iomem_wstrb  (iomem_wstrb ),
		.iomem_addr   (iomem_addr  ),
		.iomem_wdata  (iomem_wdata ),
		.iomem_rdata  (iomem_rdata )
	);

endmodule
