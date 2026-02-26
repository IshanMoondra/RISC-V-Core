/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module i_cache_v2
	#(
		parameter int i_slice_size = 8192
	)
	(
		// Universal Signals
		input wire clk,
		input wire rst_n,
		// Byte Mask/Enables
		input wire data_enable,
		input wire data_read,
		// Data to/from Core
		input wire [31:0] ram_address,        
		input wire [31:0] ram_store,
		output logic [31:0] ram_fetch
	);

localparam i_addr_width = $clog2(i_slice_size);

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

saduvssd8ULTRALOW1p2048x32m16b1w0c1p1d0l0rm3sdrw11_core i_sram
	(
		.CLK(clk),
		.ME(data_enable),
		.WE(~data_read),
		.ADR(ram_address[(i_addr_width-1):2]),
		.D(ram_store),
		.Q(ram_fetch)
	);

endmodule
