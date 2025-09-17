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
	// wire mem_instr;
	wire mem_ready;
	wire [31:0] mem_addr;
	wire [31:0] mem_wdata;
	wire [3:0] mem_wstrb;
	wire [31:0] mem_rdata;

	// SPI Flash Memory Stuff
	wire spimem_ready;
	wire [31:0] spimem_rdata;

	// SRAM Stuff
	reg ram_ready;
	wire [31:0] ram_rdata;

	// IO Bus stuff
	assign iomem_valid = mem_valid && (mem_addr[31:24] > 8'h 01);
	assign iomem_wstrb = mem_wstrb;
	assign iomem_addr = mem_addr;
	assign iomem_wdata = mem_wdata;

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

	// Control Registers for SPI & UART
	wire spimemio_cfgreg_sel = mem_valid && (mem_addr == 32'h 0200_0000);
	wire [31:0] spimemio_cfgreg_do;

	wire        simpleuart_reg_div_sel = mem_valid && (mem_addr == 32'h 0200_0004);
	wire [31:0] simpleuart_reg_div_do;

	wire        simpleuart_reg_dat_sel = mem_valid && (mem_addr == 32'h 0200_0008);
	wire [31:0] simpleuart_reg_dat_do;
	wire        simpleuart_reg_dat_wait;

	// UART Status Signals
	wire transmit_done;
	wire receive_done;

	// Logic to decide Driver Memory Bus 
	assign mem_ready = 		(iomem_valid && iomem_ready) 
						|| 	spimem_ready 
						|| 	ram_ready 
						|| 	spimemio_cfgreg_sel 
						||	simpleuart_reg_div_sel 
						|| (simpleuart_reg_dat_sel);

	// // Logic to decide Driver Memory Bus 
	// assign mem_ready = (iomem_valid && iomem_ready) || spimem_ready || ram_ready || spimemio_cfgreg_sel ||
	// 		simpleuart_reg_div_sel || (simpleuart_reg_dat_sel && !simpleuart_reg_dat_wait);

	// assign mem_rdata = (iomem_valid && iomem_ready) ? iomem_rdata : spimem_ready ? spimem_rdata : ram_ready ? ram_rdata :
	// 		spimemio_cfgreg_sel ? spimemio_cfgreg_do : simpleuart_reg_div_sel ? simpleuart_reg_div_do :
	// 		simpleuart_reg_dat_sel ? simpleuart_reg_dat_do : 32'h 0000_0000;

	// Flip Flops to allow correct peripheral to speak on the Mem read Bus
	reg spimemio_cfgreg_sel_ff;
	reg simpleuart_reg_div_sel_ff;
	reg simpleuart_reg_dat_sel_ff;

	always @(posedge clk, negedge resetn)
	begin
		if (~resetn)
			{spimemio_cfgreg_sel_ff, simpleuart_reg_dat_sel_ff, simpleuart_reg_div_sel_ff}	<= 0;
		else
			begin
				spimemio_cfgreg_sel_ff 		<= spimemio_cfgreg_sel;
				simpleuart_reg_dat_sel_ff 	<= simpleuart_reg_dat_sel;
				simpleuart_reg_div_sel_ff 	<= simpleuart_reg_div_sel;
			end
	end

	// Basically current processor strobes the memory during the address phase, & I need to flop the select signal to ensure 
	// that the correct peripheral's data is on the bus. 
	// assign mem_rdata = (iomem_valid_ff && iomem_ready_ff) ? iomem_rdata : ram_ready ? ram_rdata :
	// 	spimemio_cfgreg_sel_ff ? spimemio_cfgreg_do : simpleuart_reg_div_sel_ff ? simpleuart_reg_div_do :
	// 	simpleuart_reg_dat_sel_ff ? simpleuart_reg_dat_do : 32'h 0000_0000;

	assign mem_rdata = (iomem_valid_ff && iomem_ready_ff) ? iomem_rdata :
						spimemio_cfgreg_sel_ff ? spimemio_cfgreg_do :
						simpleuart_reg_div_sel_ff ? simpleuart_reg_div_do :
						simpleuart_reg_dat_sel_ff ? simpleuart_reg_dat_do : 
						ram_rdata;

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

	// Wires for the Faux Cache
	// wire misaligned_fetch;

	// SPI only returns Instructions!!!
	// assign instruction = (spimem_ready) ? (spimem_rdata) : (0);
	
	// Stall only when talking to slow IO // To be implemented	
	assign stall = 0;
	assign busy = stall;

	// Stall is made by decoding what type of IO is being accessed.
	// 1. UART IO, 2. SPI Control IO, 3. External I/O
	wire UART_data, UART_config; 
	wire SPI_config;
	wire External_IO;

	assign UART_data 	= (simpleuart_reg_dat_sel);
	assign UART_config	= simpleuart_reg_div_sel;
	assign SPI_config 	= spimemio_cfgreg_sel;
	assign External_IO	= iomem_valid;
	
	// assign stall = 	(UART_data)		? (~(simpleuart_reg_dat_sel && !simpleuart_reg_dat_wait)) :
	// 				(UART_config) 	? (simpleuart_reg_div_sel) :	// Config registers seem to be single cycle writes
	// 				(SPI_config)	? (spimemio_cfgreg_sel) :		// Config registers seem to be single cycle writes
	// 				(External_IO)	? (~(iomem_valid && iomem_ready)) : 
	// 				(1'b0);

	// assign stall = 	(UART_data)		? (~(simpleuart_reg_dat_sel)) :
	// 				(UART_config) 	? (simpleuart_reg_div_sel) :	// Config registers seem to be single cycle writes
	// 				(SPI_config)	? (spimemio_cfgreg_sel) :		// Config registers seem to be single cycle writes
	// 				(External_IO)	? (~(iomem_valid && iomem_ready)) : 
	// 				(1'b0);

	// Memory Address is Valid to peripheral whenever Data_Enable
	assign mem_valid = data_enable;
	
	// Write Strobe for Memory is alwasy 4'hF since we write whole words
	// assign mem_wstrb = 4'hF & ~{4{data_read}};

	// SRAM Bank Select Logic
	// SRAM Wires: To be coalesced into ram_rdata
	wire [31:0] SRAM0_out, SRAM1_out, SRAM2_out, SRAM3_out;

	wire [3:0] SRAM_select;
	reg [3:0] SRAM_select_ff;
	// Solves the SRAM Bank Select Logic!
	always @(posedge clk, negedge resetn)
	begin
		if (~resetn)
			SRAM_select_ff <= 4'b0001;
		else
			SRAM_select_ff <= SRAM_select;	
	end

	assign SRAM_select[0] = (mem_addr >= 4*0 	&& mem_addr < 4*256);
	assign SRAM_select[1] = (mem_addr >= 4*256 	&& mem_addr < 4*512);
	assign SRAM_select[2] = (mem_addr >= 4*512 	&& mem_addr < 4*768);
	assign SRAM_select[3] = (mem_addr >= 4*768 	&& mem_addr < 4*1024);

	assign ram_rdata = 	(SRAM_select_ff[0]) ? (SRAM0_out) :
						(SRAM_select_ff[1]) ? (SRAM1_out) :
						(SRAM_select_ff[2]) ? (SRAM2_out) :
						(SRAM_select_ff[3]) ? (SRAM3_out) : (0);

	// IVM RISC V Core: 5 Stage In Order
	rv32_cpu_top iCPU
		(
			// Universal Signals
			.clk(clk),
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

	// IVM Test Cache for CPU
	test_cache iCode
		(
			.clk(clk),
			.rst_n(resetn),
			.fetch_address(pc_fetch),
			.code_fetch(instruction),
			.refill_data(0),
			.refill_address(0),
			.misaligned(misaligned_fetch)
		); 


	spimemio spimemio (
		.clk    (clk),
		.resetn (resetn),
		// Valid Bit set via PC_Fetch
		.valid(~flush | ~branch),
		.ready  (spimem_ready),
		// SPI Memory
		.addr   (pc_fetch[23:0]),
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

	UART iUART
		(
			// Universal Signals
			.clk(clk),
			.rst_n(resetn),
			// Serial Data Signals
			.RX(ser_rx),
			.TX(ser_tx),
			// New Byte Rdy & Clear New Byte Rdy Signals
			.rx_rdy(receive_done),
			.clr_rx_rdy(simpleuart_reg_dat_sel & mem_valid & data_read),
			// Send new Byte & Transmit Done Signals
			.trmt(simpleuart_reg_dat_sel & mem_valid & ~data_read),
			.tx_done(transmit_done),
			// Baud Rate Config
			.baud_we(simpleuart_reg_div_sel & ~data_read),
			.set_baud(mem_wdata),
			.get_baud(simpleuart_reg_div_do),
			// Data Buffers
			.data_we(simpleuart_reg_dat_sel & ~data_read),
			.data_rx(simpleuart_reg_dat_do),
			.data_tx(mem_wdata)
		);

	always @(posedge clk)
		ram_ready <= mem_valid && !mem_ready && mem_addr < 4*1024;

	// SRAM0 
	d_cache SRAM0
		(
			.clk(clk),
			.rst_n(resetn),
			.data_enable(data_enable & SRAM_select[0]),
			.data_read(data_read),
			.mem_wstrb(mem_wstrb),
			.ram_address(mem_addr),
			.ram_fetch(SRAM0_out),
			.ram_store(mem_wdata)
		);
	// SRAM1 
	d_cache SRAM1
		(
			.clk(clk),
			.rst_n(resetn),
			.data_enable(data_enable & SRAM_select[1]),
			.data_read(data_read),
			.mem_wstrb(mem_wstrb),
			.ram_address(mem_addr),
			.ram_fetch(SRAM1_out),
			.ram_store(mem_wdata)
		);	
	// SRAM2 
	d_cache SRAM2
		(
			.clk(clk),
			.rst_n(resetn),
			.data_enable(data_enable & SRAM_select[2]),
			.data_read(data_read),
			.mem_wstrb(mem_wstrb),
			.ram_address(mem_addr),
			.ram_fetch(SRAM2_out),
			.ram_store(mem_wdata)
		);
	// SRAM3 
	d_cache SRAM3
		(
			.clk(clk),
			.rst_n(resetn),
			.data_enable(data_enable & SRAM_select[3]),
			.data_read(data_read),
			.mem_wstrb(mem_wstrb),
			.ram_address(mem_addr),
			.ram_fetch(SRAM3_out),
			.ram_store(mem_wdata)
		);

	// // SRAM0 
	// saduvssd8ULTRALOW1p256x32m4b1w0c0p0d0l0rm3sdrw01_core SRAM0
	// 	(
	// 		.CLK(clk),
	// 		.Q(SRAM0_out),
	// 		.D(mem_wdata),
	// 		.ME(data_enable & SRAM_select[0]),
	// 		.WE(~data_read),
	// 		.ADR(mem_addr[9:2])
	// 	);
	// // SRAM1 
	// saduvssd8ULTRALOW1p256x32m4b1w0c0p0d0l0rm3sdrw01_core SRAM1
	// 	(
	// 		.CLK(clk),
	// 		.Q(SRAM1_out),
	// 		.D(mem_wdata),
	// 		.ME(data_enable & SRAM_select[1]),
	// 		.WE(~data_read),
	// 		.ADR(mem_addr[9:2])
	// 	);	
	// // SRAM2 
	// saduvssd8ULTRALOW1p256x32m4b1w0c0p0d0l0rm3sdrw01_core SRAM2
	// 	(
	// 		.CLK(clk),
	// 		.Q(SRAM2_out),
	// 		.D(mem_wdata),
	// 		.ME(data_enable & SRAM_select[2]),
	// 		.WE(~data_read),
	// 		.ADR(mem_addr[9:2])
	// 	);
	// // SRAM3 
	// saduvssd8ULTRALOW1p256x32m4b1w0c0p0d0l0rm3sdrw01_core SRAM3
	// 	(
	// 		.CLK(clk),
	// 		.Q(SRAM3_out),
	// 		.D(mem_wdata),
	// 		.ME(data_enable & SRAM_select[3]),
	// 		.WE(~data_read),
	// 		.ADR(mem_addr[9:2])
	// 	);

endmodule
