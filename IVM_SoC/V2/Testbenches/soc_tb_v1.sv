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

module soc_tb_v1;
	
	reg clk;
	reg rst_n;
	wire halt;
	wire misaligned_fetch;
	integer count;

	// What am I even testing here?
	// A SoC where I want a 'perfect' cache, ie, no cache :P
	// So SoC must have:
	// CPU, UART (for IO basics), Byte Addressable Code Memory
	// The 4KB of SRAM is untouched. 
	// Okay: So I can instantiate the ice_breaker itself, but to the 
	// SoC, add the faux cache memory. 
	
	// The wires for the Setup 
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

	assign flash_io0 = flash_io0_oe ? flash_io0_do : 1'bz;
	assign flash_io0_di = flash_io0;  // Read from the bus
	assign flash_io1 = flash_io1_oe ? flash_io1_do : 1'bz;
	assign flash_io1_di = flash_io1;
	assign flash_io2 = flash_io2_oe ? flash_io2_do : 1'bz;
	assign flash_io2_di = flash_io2;
	assign flash_io3 = flash_io3_oe ? flash_io3_do : 1'bz;
	assign flash_io3_di = flash_io3;

	// Instantiate the Icebreaker with the faux cache
	icebreaker_v1 uut 
	(
		.clk      (clk      ),
		.resetn	  (rst_n	),
		.halt	  (halt		),
		.misaligned_fetch(misaligned_fetch),
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

	spiflash spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(flash_io2),
		.io3(flash_io3)
	);

	initial
	begin

		// Dumping the Waveforms
		$dumpfile("soc_v1.vpd");
		$dumpvars(0, soc_tb_v1);

		// Set up the basic Universal Signals
		clk     = 0;
		rst_n   = 0;
		count   = 0;
		// Hold SoC in RESET for 10 cycles
		repeat(2) @(negedge clk);
		rst_n   = 1;

		// SoC starts Program Execution
		@(posedge clk);
		// Fork Join for easy tracking
		fork
			begin: Timeout            
				while (count < 3500)
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
			// Detect Load to Use Stalls
			if (uut.iSoC.iCPU.load_to_use_stall)
				begin
					$display("Load to Use Stall!");
					// $stop();
				end
			// Debug display for some buses. 
			$display("Fetch: %h", uut.iSoC.iCPU.code_fetch);
			$display("Decode: %h", uut.iSoC.iCPU.decode_code_bus);
			$display("Execute: %h", uut.iSoC.iCPU.execute_code_bus);
			$display("Memory: %h", uut.iSoC.iCPU.memory_code_bus);
			$display("Write Back: %h", uut.iSoC.iCPU.wb_code_bus);
			$display("Operand A: %d", uut.iSoC.iCPU.OperandA);
			$display("Operand B: %d", uut.iSoC.iCPU.OperandB);
			$display("RF: %d %d", uut.iSoC.iCPU.decode_rs1, uut.iSoC.iCPU.decode_rs2);
			$display("Memory ALU: %d", uut.iSoC.iCPU.memory_alu_res);
			$display("Write Back ALU: %d", uut.iSoC.iCPU.wb_alu_res);
			$display("Write Back Data: %d", uut.iSoC.iCPU.wb_data_res);			
			
			// Checks for misaligned code memory fetches
			if (misaligned_fetch)
				$display("Misalinged Memory access on: %d, at cycle %d", uut.iSoC.pc_fetch, count);
			
		end

endmodule
