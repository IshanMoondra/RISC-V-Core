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

module ivm_soc_v1 (
	input clk,
	input resetn,
	output wire halt,
	output wire misaligned_fetch,

	output        iomem_valid,
	input         iomem_ready,
	output [ 3:0] iomem_wstrb,
	output [31:0] iomem_addr,
	output [31:0] iomem_wdata,
	input  [31:0] iomem_rdata,

	output ser_tx,
	input  ser_rx,

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

	wire mem_valid;
	wire mem_ready;
	wire [31:0] mem_addr;
	wire [31:0] mem_wdata;
	wire [3:0]  mem_wstrb;
	wire [31:0] mem_rdata;

	// Cache Controller Stuff + SPI Master Stuff
	wire spi_valid;
	wire core_clk_en;
	wire gated_clk;
	wire i_cache_miss;
	wire d_cache_miss;
	wire core_bubble;
	wire [31:0] spi_addr;
	wire spimem_ready;
	wire [31:0] spimem_rdata;
	wire [31:0] ram_rdata;
	wire cache_access;
	wire cache_access_ff;

	// Flip Flops to allow correct peripheral to speak on the Mem read Bus
	wire 	[31:0] mmio_vector;
	wire 	[31:0] mmio_data_fetch;
	reg 	[31:0] mmio_vector_ff;

	// IO Bus stuff
	assign iomem_valid 	= |mmio_vector[31:6];
	assign iomem_wstrb 	= mem_wstrb;
	assign iomem_addr 	= mem_addr;
	assign iomem_wdata 	= mem_wdata;

	reg iomem_ready_ff; 
	reg iomem_valid_ff;

	always @(posedge clk, negedge resetn)
	begin
		if (~resetn)
			{iomem_ready_ff, iomem_valid_ff} <= 2'b00;
		else
			begin
				iomem_ready_ff <= iomem_ready;
				iomem_valid_ff <= iomem_valid;
			end	
	end

	// Control Registers for SPI
	wire spimemio_cfgreg_sel;
	wire [31:0] spi_config_data_fetch;
	wire [31:0] spimemio_cfgreg_do;

	assign spimemio_cfgreg_sel 		= mmio_vector_ff[3] && (mem_addr[3:0] == 4'h0);
	assign spi_config_data_fetch 	= (spimemio_cfgreg_sel) ? (spimemio_cfgreg_do) : (0); 

	// UART Status Signals
	wire [31:0] uart_rdata;
	
	always @(posedge clk, negedge resetn)
	begin
		if (~resetn)
			mmio_vector_ff <= 0;
		else
			mmio_vector_ff <= mmio_vector;
	end

	assign mem_rdata = (iomem_valid_ff && iomem_ready_ff)	? iomem_rdata :
						mmio_vector_ff[3] 					? spi_config_data_fetch :
						mmio_vector_ff[2]	 				? uart_rdata :
						mmio_vector_ff[1]	 				? ram_rdata : 
						mmio_vector_ff[0]	 				? mmio_data_fetch : 
						cache_access_ff		 				? ram_rdata : 
						0;

	assign gated_clk = clk & core_clk_en;

	// Wires for IVM RISC V 32 Core
	// Code Fetch Stage
	wire [31:0] pc_fetch;
	wire [31:0] instruction;
	// Data Memory Interface
	wire [31:0] data_addr;
	wire [31:0] data_store;
	wire [31:0] data_fetch;
	wire data_enable;
	wire data_read;
	// CPU Control/Status Signals
	wire flush;
	wire branch;
	wire stall;
	wire busy;

	// CPU Results
	wire [31:0] wb_result;
	
	// Stall only when talking to slow IO // To be implemented	
	assign stall 	= 0;
	assign busy 	= stall;	

	// IVM RISC V Core: 5 Stage In Order
	rv32_cpu_top iCPU
		(
			// Universal Signals
			.clk(gated_clk),
			.rst_n(resetn),
			// Ports for Code Memory
			.pc_fetch(pc_fetch),
			.code_fetch(instruction),
			// Ports for Data Memory
			.data_enable(data_enable),
			.data_read(data_read),
			.data_strobe(mem_wstrb),
			.data_addr(mem_addr),
			.data_store(mem_wdata),
			.data_fetch(mem_rdata),
			// CPU Control/Status Signals
			.flush(flush),
			.branch(branch),
			.stall(stall),
			.busy(busy),
			.halt(halt),
			// CPU Output
			.wb_result(wb_result)
		);

	// Instantiating my MMIO Decoder V1
	mmio_decoder_v1 iMMIO_DECODER
		(
			// Universal Signals
			.clk(clk),
			.rst_n(resetn),
			// MMIO Interfacing Stuff
			.data_enable(data_enable),
			.data_read(data_read),
			.data_address(mem_addr),
			.data_store(mem_wdata),
			.data_fetch(mmio_data_fetch),
			// MMIO Vectors Module Selects
			.mmio_vector(mmio_vector),
			.cache_access(cache_access),
			.cache_access_ff(cache_access_ff)
		);

	// Instantiating my Cache Controller V1
	cache_controller_v1 iCC_V1
		(
			// Universal Signals
			.clk(clk),
			.rst_n(resetn),
			// I-Cache Bus
			.pc_fetch(pc_fetch),
			.code_fetch(instruction),
			// MMIO Interfacing
			.data_address(mem_addr),
			.data_store(mem_wdata),
			.data_fetch(ram_rdata),
			.mem_wstrb(mem_wstrb),
			.data_read(data_read),
			.cache_enable(cache_access),
			.mmio_enable(mmio_vector[1]),
			// SPI IO
			.spi_fetch(spimem_rdata),
			.spi_store(),							// Unconnected since RO File System
			.spi_address(spi_addr),					
			.write_strobe(),						// Unconnected since RO File System
			.spi_ready(spimem_ready),
			.spi_addr_valid(spi_valid),				
			// Clock Gate Signals
			.set_clk_enable(core_clk_en),			
			.i_cache_miss(i_cache_miss),			// Create the counter!
			.d_cache_miss(d_cache_miss),			// Create the counter!
			// Core Stall Signals: For Branch Resolution by bubbling for 5 cycles
			.core_bubble(core_bubble)				// Unconnected for now, but can add later.
		);

	// RO SPI Master from PicoSOC
	spimemio spimemio (
		.clk    (clk),
		.resetn (resetn),
		// Valid Bit set via PC_Fetch
		.valid(spi_valid),
		.ready  (spimem_ready),
		// SPI Memory
		.addr   (spi_addr[23:0]),
		.rdata  (spimem_rdata),

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

		.cfgreg_we(spimemio_cfgreg_sel ? mem_wstrb : 4'b 0000),
		.cfgreg_di(mem_wdata),
		.cfgreg_do(spimemio_cfgreg_do)
	);

	// Instantiating my UART V1 (Thanks Prof Eric Hoffman!)
	UART_v1 iUART
		(
			// Universal Signals
			.clk			(clk),
			.rst_n			(resetn),
			// Serial Data Signals
			.ser_rx			(ser_rx),
			.ser_tx			(ser_tx),
			// MMIO Interfacing
			.data_enable	(mmio_vector[2]),
			.data_read		(data_read),
			.data_address	(mem_addr),
			.data_store		(mem_wdata),
			.data_fetch		(uart_rdata)
		);

endmodule
