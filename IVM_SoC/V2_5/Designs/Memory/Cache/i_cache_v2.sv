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

// Generate For Loop for Number of Ways // Or do we do that in Cache Controller? BOZO

generate
		case (i_slice_size)
			1024:
				begin : gen_icache_1k 
					saduvssd8ULTRALOW1p256x32m4b1w0c1p1d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			2048:
				begin : gen_icache_2k 
					saduvssd8ULTRALOW1p512x32m16b1w0c1p1d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			4096:
				begin :  gen_icache_4k 
					saduvssd8ULTRALOW1p1024x32m4b1w0c1p1d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			8192:
				begin : gen_icache_8k 
					saduvssd8ULTRALOW1p2048x32m16b1w0c1p1d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			16384:
				begin : gen_icache_16k 
					saduvssd8ULTRALOW1p4096x32m16b1w0c1p1d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			32768:
				begin : gen_icache_32k 
					saduvssd8ULTRALOW1p8192x32m16b4w0c1p0d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			65536:
				begin : gen_icache_64k 
					saduvssd8ULTRALOW1p16384x32m16b4w0c1p0d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			131072: 
				begin : gen_icache_128k 
					saduvssd8ULTRALOW1p32768x32m16b8w0c1p0d0l0rm3sdrw11_core i_sram
						(
							.CLK(clk),
							.ME(data_enable),
							.WE(~data_read),
							.ADR(ram_address[(i_addr_width-1):2]),
							.D(ram_store),
							.Q(ram_fetch)
						);
				end
			default: 
				begin : gen_dcache_invalid
					initial $error("Unsupported i_slice_size = %0d", i_slice_size);
				end
		endcase
endgenerate

endmodule
