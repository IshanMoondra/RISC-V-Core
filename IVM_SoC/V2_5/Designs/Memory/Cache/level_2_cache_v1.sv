/*
level_2_cache_v1.sv
This file contains the module definitions for the L2 cache for IVM SOC. 
This L2 is an Inclusive and Unified Cache, that in the V2 set up acts, 
as a LLC before going to access the DRAM on the FPGA platform. 
Also, a good spot to benchmark system performance for embedded workloads. 
*/

module l2_cache_v1
	#(
		parameter int l2_slice_size = 262144,	// 256KB
		parameter int l2_64bit			= 1
	)
	(
		// Universal Signals
		input wire clk,
		input wire rst_n,
		// Byte Mask/Enables
		input wire data_enable,
		input wire data_read,
		input wire [7:0] mem_wstrb,
		// Data to/from Cache Controller
		input wire [31:0] ram_address,      
		input wire [63:0] ram_store,
		output logic [63:0] ram_fetch
	);

localparam l2_addr_width = $clog2(l2_slice_size);

wire [63:0] l2_byte_strobe;
assign l2_byte_strobe	[7:0] 	= {8{mem_wstrb[0]}};
assign l2_byte_strobe	[15:8] 	= {8{mem_wstrb[1]}};
assign l2_byte_strobe	[23:16] = {8{mem_wstrb[2]}};
assign l2_byte_strobe	[31:24] = {8{mem_wstrb[3]}};
assign l2_byte_strobe	[39:32] = {8{mem_wstrb[4]}};
assign l2_byte_strobe	[47:40] = {8{mem_wstrb[5]}};
assign l2_byte_strobe	[57:48] = {8{mem_wstrb[6]}};
assign l2_byte_strobe	[63:58] = {8{mem_wstrb[7]}};

// parameter num_byte = 4;
// genvar idx;

// generate
//     for (idx = 0; idx < num_byte; idx = idx + 1)
//         begin   : d_way
//             saduvssd8ULTRALOW1p256x8m4b1w0c0p0d0l0rm3sdrw01_core d_byte
//                 (
//                     .CLK    (clk                            ),
//                     .ME     (data_enable),
//                     .WE     (mem_wstrb[idx] & (~data_read)  ),
//                     .ADR    (index[7:0]                     ),
//                     .D      (byte_store[idx]                ),
//                     .Q      (byte_fetch[idx]                )
//                 );
//         end     : d_way
// endgenerate

saduvssd8ULTRALOW1p32768x64m16b8w1c1p0d0l0rm3sdrw11_core l2_sram
	(
		.CLK(clk),
		.ME(data_enable),
		.WE(~data_read),
		.WEM(l2_byte_strobe),
		.ADR(ram_address[(l2_addr_width-1):3]),	// BOZO Check granularity! Should work??
		.D(ram_store),
		.Q(ram_fetch)
	);

string firmware_file;	// Just holds the string of the file path, not a real memory copy.
initial
	begin
		if (!$value$plusargs("L2_HEX=%s", firmware_file))
			begin
				firmware_file = "/raid2/IVM_SOC/Tapeout_V1/RISC-V-Core/IVM_SoC/Firmware/build/hex/l2_firmware.hex";
			end
		$display("Loading Hex file for L2: %s", firmware_file);
		$readmemh(firmware_file, l2_sram.ram_core);
	end

endmodule
