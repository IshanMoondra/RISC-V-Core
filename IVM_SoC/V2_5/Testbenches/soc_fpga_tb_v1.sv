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

	// DPI-C UART Terminal Control Stuff:
	bit dpi_clr_rx_rdy;
	int dpi_tx_buffer;
	bit dpi_start_transmit;

	// For VCD/FSDB Dumping
	string verdi_root;
	
	// The wires for the Setup 
	wire ser_rx;
	wire ser_tx;

	wire flash_csb;
	wire flash_clk;

	wire flash_io0;
	wire flash_io1;
	wire flash_io2;
	wire flash_io3;

	// Instantiate the Icebreaker with the SPI Flash
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

	// Testbench Side UART
	UART iTB_UART (
		.clk(clk),
		.rst_n(rst_n),
		.baud_we(tb_baud_we),
		.data_we(tb_data_we),
		.set_baud(tb_set_baud),
		.get_baud(),
		.data_tx(tb_tx_buffer),	// TO SOC
		.data_rx(tb_rx_buffer),	// FROM SOC
		// Note the reversed polarity
		.RX(ser_tx),
		.TX(ser_rx),
		.rx_rdy(tb_rx_rdy),
		.clr_rx_rdy(tb_clr_rx_rdy),
		.trmt(tb_trmt),
		.tx_done(tb_trmt_done)
	);
	
	// DPI-C Virtual UART Trials V2
	import "DPI-C" context function void dpi_hello_world_v4();

	// UART monitor: inputs from TB UART into C
	import "DPI-C" context function void dpi_uart_set_rx_inputs_v2
	(
		input bit rx_rdy,
		input int rx_buffer,   // 32-bit, C masks to 8 bits
		input bit tx_done
	);

	// UART monitor: outputs from C back into TB UART
	import "DPI-C" context function void dpi_uart_get_ctrl_outputs_v2
	(
		output bit clr_rx_rdy,
		output int tx_buffer,  // 32-bit, bottom 8 bits valid
		output bit start_transmit
	);
	
	// DPI-C is called on the negedge so that I prevent unnecessary race conditions. 
	always @(negedge clk) begin

		dpi_uart_set_rx_inputs_v2(
			tb_rx_rdy,
			tb_rx_buffer,
			tb_trmt_done
		);

		dpi_uart_get_ctrl_outputs_v2(
			dpi_clr_rx_rdy,
			dpi_tx_buffer,
			dpi_start_transmit
		);

		tb_clr_rx_rdy   <= dpi_clr_rx_rdy;
		tb_tx_buffer    <= dpi_tx_buffer;
		tb_trmt			<= dpi_start_transmit;
	end

	initial
	begin
		// Dumping the Waveforms // ModelSim dies around 47 ms
		if (!$value$plusargs("VERDI_ROOT=%s", verdi_root))
		begin
        	verdi_root = ".";   // Fallback
		end

		$dumpfile({verdi_root, "/verdi_build/soc_fpga_tb_v1.vcd"});
		$dumpvars(0, soc_fpga_tb_v1);

		// BOZO Does not work, some licence problem???
		// string verdi_dir = $getenv("VERDI_ROOT");
		// if (verdi_dir == "") verdi_dir = ".";
		// $dumpvars(0, soc_fpga_tb_v1);
		// $fsdbDumpfile({verdi_dir, "verdi_build/soc_fpga_tb_v1.fsdb"});

		// Calling the DPI-C Smoke Tester
		$display("Calling DPI-C Function: ");
		dpi_hello_world_v4();

		// Set up the basic Universal Signals
		clk     = 0;
		rst_n   = 0;
		count   = 0;

		// Hold SoC in RESET for 10 cycles
		repeat(10) @(negedge clk);
		rst_n   = 1;

		// SoC starts Program Execution
		@(posedge clk);
		// Fork Join for easy tracking
		fork
			begin: Timeout
				// while (count < 64'd2000000000)
				while (count < 64'd1000000000)
					begin
						@(posedge clk);
						count = count + 1;                    
					end
				$display("\nMore than %d cycles of simulation, timeout!", count);
				// $stop();
				$finish();
			end: Timeout
			begin: Testing
				@(posedge halt);
				disable Timeout;
				@(posedge clk);
				$display("\nProcessor Halted!");
				$display("Cycle Count: %d", count);
				@(posedge clk);
				$display("Cycle Count: %d", count);
				$display("Test done!");
				// $stop();
				$finish();
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
					// $display("Misalinged Memory access on: %h, at cycle %d", iSOC_FPGA.iSOC_FPGA.iSoC.pc_fetch, count); // BOZO Need to fix
					// $stop();
					$display("\nPanic Pin: High. Ejecting. Something went wrong. Check Misaligned Fetch or Panic Watchdog to figure out. ");	
					$finish();
				end				
		end
endmodule
