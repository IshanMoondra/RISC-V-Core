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
reg  i_cache_miss_ff1;
wire d_cache_miss;
wire core_bubble;
wire 	[31:0] spi_addr;
wire spimem_ready;
wire 	[3:0] uart_mem_addr;
wire 	[4:0] cc_mem_addr;
wire 	[6:0] perfmons_addr;
wire 	[5:0] gpio_addr;
wire	[3:0] master_control;
wire	[3:0] gpio_oe;
wire	[3:0] gpio_output;
wire	[3:0] gpio_inputs;
wire	[1:0] flash_control;
wire	[1:0] flash_output;
wire 	[31:0] spimem_rdata;
wire 	[31:0] ram_rdata;
wire 	[31:0] cc_rdata;
wire 				 watchdog_panic;
wire 	[31:0] perfmons_rdata;
reg 	[31:0] perfmons_rdata_ff;
wire 	[31:0] gpio_rdata;
reg 	[31:0] gpio_rdata_ff;
reg 	[31:0] cc_rdata_ff;
wire 	cache_access;
reg 	cache_access_ff;

assign cache_access = (mem_addr >= 32'h0017E000) && (mem_addr < 32'h00180000);

always @(posedge clk, negedge resetn) begin
	if (~resetn)
		cache_access_ff <= 0;
	else
		cache_access_ff <= cache_access;
end

// Flip Flops to allow correct peripheral to speak on the Mem read Bus
wire 	[31:0] mmio_vector;
wire 	[31:0] mmio_data_fetch;
reg 	[31:0] mmio_data_fetch_ff;
reg 	[31:0] mmio_vector_ff;

// IO Bus stuff
assign iomem_valid 	= |mmio_vector[31:6];
assign iomem_wstrb 	= mem_wstrb;
assign iomem_addr 	= mem_addr;
assign iomem_wdata 	= mem_wdata;

reg iomem_ready_ff; 
reg iomem_valid_ff;
reg [31:0] iomem_rdata_ff;

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
wire 	[31:0] spi_config_data_fetch;
reg 	[31:0] spi_config_data_fetch_ff;
wire 	[31:0] spimemio_cfgreg_do;

// UART Status Signals
wire 	[31:0] uart_rdata;
reg 	[31:0] uart_rdata_ff;

assign mmio_vector[0] = (mem_addr >= 32'h00200000) && (mem_addr < 32'h00200400);	// For MMIO Decoder
assign mmio_vector[1] = (mem_addr >= 32'h00200400) && (mem_addr < 32'h00200800);	// For Cache Controller
assign mmio_vector[2] = (mem_addr >= 32'h00200800) && (mem_addr < 32'h00200C00);	// For UART
assign mmio_vector[3] = (mem_addr >= 32'h00200C00) && (mem_addr < 32'h00201000);	// For SPI Master
assign mmio_vector[4] = (mem_addr >= 32'h00201000) && (mem_addr < 32'h00201400);	// For Perfmons
assign mmio_vector[5] = (mem_addr >= 32'h00201400) && (mem_addr < 32'h00201800);	// For GPIO
assign mmio_vector[31:6] = 0;														// GPIO ++ Future Accelerators

always @(posedge clk, negedge resetn) 
begin
	if (~resetn)
		begin
			mmio_vector_ff 						<= 0;
			uart_rdata_ff 						<= 0;
			cc_rdata_ff 							<= 0;
			perfmons_rdata_ff					<= 0;
			gpio_rdata_ff							<= 0;
			spi_config_data_fetch_ff	<= 0;
			mmio_data_fetch_ff 				<= 0;
			iomem_rdata_ff 						<= 0;
		end			
	else
		begin
			mmio_vector_ff 						<= mmio_vector;
			uart_rdata_ff 						<= uart_rdata;
			cc_rdata_ff								<= cc_rdata;
			perfmons_rdata_ff					<= perfmons_rdata;
			gpio_rdata_ff							<= gpio_rdata;
			spi_config_data_fetch_ff	<= spi_config_data_fetch;
			mmio_data_fetch_ff				<= mmio_data_fetch;
			iomem_rdata_ff						<= iomem_rdata;
		end			
end

assign spimemio_cfgreg_sel 		= mmio_vector_ff[3] && (mem_addr[3:0] == 4'h0);
assign spi_config_data_fetch 	= (spimemio_cfgreg_sel) ? (spimemio_cfgreg_do) : (0); 

assign mem_rdata = 	(iomem_valid_ff && iomem_ready_ff)	? iomem_rdata_ff 						:
										mmio_vector_ff[5] 									? gpio_rdata_ff			 				:
										mmio_vector_ff[4] 									? perfmons_rdata_ff 				:
										mmio_vector_ff[3] 									? spi_config_data_fetch_ff 	:
										mmio_vector_ff[2]	 									? uart_rdata_ff 						:
										mmio_vector_ff[1]	 									? cc_rdata_ff 							: 
										mmio_vector_ff[0]	 									? mmio_data_fetch_ff 				: 
										cache_access_ff		 									? ram_rdata 								:
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
	
// CPU Metrics for PerfMons
wire non_nop_retired;

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
		.wb_result(wb_result),
		// CPU Metrics for PerfMons
		.non_nop_retired(non_nop_retired)
	);

// // Instantiating my MMIO Decoder V1
// mmio_decoder_v1 iMMIO_DECODER
// 	(
// 		// Universal Signals
// 		.clk(clk),
// 		.rst_n(resetn),
// 		// MMIO Interfacing Stuff
// 		.data_enable(data_enable),
// 		.data_read(data_read),
// 		.data_address(mem_addr),
// 		.data_store(mem_wdata),
// 		.data_fetch(mmio_data_fetch),
// 		// MMIO Vectors Module Selects
// 		.mmio_vector(mmio_vector),
// 		.cache_access(cache_access),
// 		.cache_access_ff(cache_access_ff)
// 	);

assign cc_mem_addr = mmio_vector[1] ? mem_addr[4:0] : 0;

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
		.data_address(cc_mem_addr),
		.data_store(mem_wdata),
		.data_fetch(cc_rdata),
		.mem_wstrb(mem_wstrb),
		.data_read(data_read),
		.cache_enable(cache_access),
		.cache_enable_ff(cache_access_ff),
		.mmio_enable(mmio_vector[1]),
		// SPI IO
		.spi_fetch(spimem_rdata),
		.spi_store(),							  // Unconnected since RO File System
		.spi_address(spi_addr),					
		.write_strobe(),						// Unconnected since RO File System
		.spi_ready(spimem_ready),
		.spi_addr_valid(spi_valid),				
		// Clock Gate Signals
		.set_clk_enable(core_clk_en),			
		.i_cache_miss(i_cache_miss),			// Create the counter! // Done!
		.d_cache_miss(d_cache_miss),			// Create the counter!
		// Core Stall Signals: For Branch Resolution by bubbling for 5 cycles
		.core_bubble(core_bubble)				  // Unconnected for now, but can add later.
	);

// Wires for Pin Muxing of the QSPI Interface
wire spi_csb;
wire spi_clk;

wire spi_io0_oe;
wire spi_io1_oe;
wire spi_io2_oe;
wire spi_io3_oe;

wire spi_io0_do;
wire spi_io1_do;
wire spi_io2_do;
wire spi_io3_do;

wire spi_io0_di;
wire spi_io1_di;
wire spi_io2_di;
wire spi_io3_di;

// RO SPI Master from PicoSOC
spimemio spimemio 
	(
		.clk    (clk),
		.resetn (resetn),
		// Valid Bit set via PC_Fetch
		.valid(spi_valid),
		.ready  (spimem_ready),
		// SPI Memory
		.addr   (spi_addr[23:0]),
		.rdata  (spimem_rdata),

		.flash_csb    (spi_csb   ),
		.flash_clk    (spi_clk   ),

		.flash_io0_oe (spi_io0_oe),
		.flash_io1_oe (spi_io1_oe),
		.flash_io2_oe (spi_io2_oe),
		.flash_io3_oe (spi_io3_oe),

		.flash_io0_do (spi_io0_do),
		.flash_io1_do (spi_io1_do),
		.flash_io2_do (spi_io2_do),
		.flash_io3_do (spi_io3_do),

		.flash_io0_di (spi_io0_di),
		.flash_io1_di (spi_io1_di),
		.flash_io2_di (spi_io2_di),
		.flash_io3_di (spi_io3_di),

		.cfgreg_we(spimemio_cfgreg_sel ? mem_wstrb : 4'b 0000),
		.cfgreg_di(mem_wdata),
		.cfgreg_do(spimemio_cfgreg_do)
	);

assign uart_mem_addr = (mmio_vector[2]) ? (mem_addr[3:0]) : (0);

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
		.data_address	(uart_mem_addr),
		.data_store		(mem_wdata),
		.data_fetch		(uart_rdata)
	);

assign perfmons_addr = (mmio_vector[4]) ? (mem_addr[6:0]) : (0);

always @(posedge clk, negedge resetn)
  begin
    if (~resetn)
      i_cache_miss_ff1 <= 0;
    else
      i_cache_miss_ff1 <= i_cache_miss;
  end

// Instantiating the Perfmons Module
perfmons iPerfMons
	(
		// Universal Signals
		.soc_clk(clk),
		.core_clk(gated_clk),
		.rst_n(resetn),
		// Perfmon Tracker Bits
		.i_miss(i_cache_miss_ff1),							// Check Correctness! // Done!
		.non_nop_retired(non_nop_retired),		  // Create the Signal bit from CPU! // Done!
		// MMIO Interfacing
		.perfmons_enable(mmio_vector[4]),
		.addr_bus(perfmons_addr),
		.data_store(mem_wdata),
		.data_fetch(perfmons_rdata),
		// Watchdog Panic
		.watchdog_panic(watchdog_panic)
	);

assign gpio_addr = (mmio_vector[5]) ? (mem_addr[5:0]) : (0);

// Instantiating the GPIO Module
gpio_v1 iGPIO
	(
		// Universal Signals
		.soc_clk(clk),
		.rst_n(resetn),
		// GPIO Vectors
		.master_control(master_control),
		.gpio_oe(gpio_oe),
		.gpio_output(gpio_output),
		.gpio_inputs(gpio_inputs),
		// Flash Specific IO
		.flash_control(flash_control),
		.flash_output(flash_output),
		// MMIO Interfacing
		.gpio_enable(mmio_vector[5]),
		.data_addr(gpio_addr),
		.data_store(mem_wdata),
		.data_fetch(gpio_rdata)
	);

// Pin Muxing Control portion of the SOC!
assign flash_csb = 	(flash_control[0]) 	? (flash_output[0]) :
										(|master_control) 	? (1'b1) 						:
										(spi_csb); // : (spi_csb);

assign flash_clk = 	(flash_control[1]) 	? (flash_output[1]) :
										(|master_control) 	? (1'b0) 						:
										(spi_clk); // : (spi_clk);

assign flash_io0_oe = (master_control[0]) ? (gpio_oe[0]) : (spi_io0_oe);
assign flash_io1_oe = (master_control[1]) ? (gpio_oe[1]) : (spi_io1_oe);
assign flash_io2_oe = (master_control[2]) ? (gpio_oe[2]) : (spi_io2_oe);
assign flash_io3_oe = (master_control[3]) ? (gpio_oe[3]) : (spi_io3_oe);

assign flash_io0_do	= (master_control[0]) ? (gpio_output[0]) : (spi_io0_do);
assign flash_io1_do	= (master_control[1]) ? (gpio_output[1]) : (spi_io1_do);
assign flash_io2_do	= (master_control[2]) ? (gpio_output[2]) : (spi_io2_do);
assign flash_io3_do	= (master_control[3]) ? (gpio_output[3]) : (spi_io3_do);

assign gpio_inputs[0] = (master_control[0]) ? (flash_io0_di) : 1'b0;
assign gpio_inputs[1] = (master_control[1]) ? (flash_io1_di) : 1'b0;
assign gpio_inputs[2] = (master_control[2]) ? (flash_io2_di) : 1'b0;
assign gpio_inputs[3] = (master_control[3]) ? (flash_io3_di) : 1'b0;

assign spi_io0_di		= (~master_control[0]) ? (flash_io0_di) : 1'b0;
assign spi_io1_di		= (~master_control[1]) ? (flash_io1_di) : 1'b0;
assign spi_io2_di		= (~master_control[2]) ? (flash_io2_di) : 1'b0;
assign spi_io3_di		= (~master_control[3]) ? (flash_io3_di) : 1'b0;

wire [8:0] sram_mem_addr [0:3];
wire [31:0] sram_fetch0;
wire [31:0] sram_fetch1;
wire [31:0] sram_fetch2;
wire [31:0] sram_fetch3;
wire [3:0] sram_gated_clk;
wire [3:0] sram_bank_sel;
reg  [3:0] sram_bank_sel_ff;

assign sram_gated_clk = {4{gated_clk}} & (sram_bank_sel | sram_bank_sel_ff);

assign sram_bank_sel[0] = (mem_addr >= 32'h0017E000) && (mem_addr < 32'h0017E800);
assign sram_bank_sel[1] = (mem_addr >= 32'h0017E800) && (mem_addr < 32'h0017F000);
assign sram_bank_sel[2] = (mem_addr >= 32'h0017F000) && (mem_addr < 32'h0017F800);
assign sram_bank_sel[3] = (mem_addr >= 32'h0017F800) && (mem_addr < 32'h00180000);

assign sram_mem_addr[0] = sram_bank_sel[0] ? (mem_addr[10:2]) : (0);
assign sram_mem_addr[1] = sram_bank_sel[1] ? (mem_addr[10:2]) : (0);
assign sram_mem_addr[2] = sram_bank_sel[2] ? (mem_addr[10:2]) : (0);
assign sram_mem_addr[3] = sram_bank_sel[3] ? (mem_addr[10:2]) : (0);

always @(posedge clk, negedge resetn)
	begin
		if (~resetn)
			sram_bank_sel_ff <= 0;
		else
			sram_bank_sel_ff <= sram_bank_sel;
	end

// TCM SRAM Banks
	d_cache_v1 sram_b0
		(
			// Universal Signals
			.clk(sram_gated_clk[0]),
			.rst_n(resetn),
			// Read/Write/Mask
			.data_read(data_read),
			.data_enable(sram_bank_sel[0] | sram_bank_sel_ff[0]),
			.mem_wstrb(mem_wstrb),
			// Data/Address Buses
			.ram_address(sram_mem_addr[0]),
			.ram_store(mem_wdata),
			.ram_fetch(sram_fetch0)
		);

	d_cache_v1 sram_b1
			(
				// Universal Signals
				.clk(sram_gated_clk[1]),
				.rst_n(resetn),
				// Read/Write/Mask
				.data_read(data_read),
				.data_enable(sram_bank_sel[1] | sram_bank_sel_ff[1]),
				.mem_wstrb(mem_wstrb),
				// Data/Address Buses
				.ram_address(sram_mem_addr[1]),
				.ram_store(mem_wdata),
				.ram_fetch(sram_fetch1)
			);

	d_cache_v1 sram_b2
			(
				// Universal Signals
				.clk(sram_gated_clk[2]),
				.rst_n(resetn),
				// Read/Write/Mask
				.data_read(data_read),
				.data_enable(sram_bank_sel[2] | sram_bank_sel_ff[2]),
				.mem_wstrb(mem_wstrb),
				// Data/Address Buses
				.ram_address(sram_mem_addr[2]),
				.ram_store(mem_wdata),
				.ram_fetch(sram_fetch2)
			);

	d_cache_v1 sram_b3
			(
				// Universal Signals
				.clk(sram_gated_clk[3]),
				.rst_n(resetn),
				// Read/Write/Mask
				.data_read(data_read),
				.data_enable(sram_bank_sel[3] | sram_bank_sel_ff[3]),
				.mem_wstrb(mem_wstrb),
				// Data/Address Buses
				.ram_address(sram_mem_addr[3]),
				.ram_store(mem_wdata),
				.ram_fetch(sram_fetch3)
			);

assign ram_rdata = 	sram_bank_sel_ff[0]	? sram_fetch0 :
					sram_bank_sel_ff[1] ? sram_fetch1 :
					sram_bank_sel_ff[2] ? sram_fetch2 :
					sram_bank_sel_ff[3] ? sram_fetch3 :
					32'h0;

assign misaligned_fetch = (pc_fetch[1:0] != 2'h0) | watchdog_panic;

endmodule
