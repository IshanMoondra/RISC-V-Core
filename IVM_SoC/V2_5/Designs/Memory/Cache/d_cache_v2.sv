/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module d_cache_v2
	#(
		parameter int d_slice_size = 8192
	)
	(
		// Universal Signals
		input wire clk,
		input wire rst_n,
		// Byte Mask/Enables
		input wire data_enable,
		input wire data_read,
		input wire [3:0] mem_wstrb,
		// Data to/from Core
		input wire [31:0] ram_address,        
		input wire [31:0] ram_store,
		output logic [31:0] ram_fetch
	);

localparam d_addr_width = $clog2(d_slice_size);

// Byte addressable memory
logic mem_cancel;

wire [7:0] byte_store0;
wire [7:0] byte_store1;
wire [7:0] byte_store2;
wire [7:0] byte_store3;

wire [7:0] byte_fetch0;
wire [7:0] byte_fetch1;
wire [7:0] byte_fetch2;
wire [7:0] byte_fetch3;

// Generate For Loop for Number of Ways // Or do we do that in Cache Controller? BOZO

generate
	case (d_slice_size)
		1024: begin : gen_dcache_1k
			saduvssd8ULTRALOW1p256x32m4b1w1c1p1d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		2048: begin : gen_dcache_2k
			saduvssd8ULTRALOW1p512x32m16b1w1c1p1d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		4096: begin : gen_dcache_4k
			saduvssd8ULTRALOW1p1024x32m4b1w1c1p1d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		8192: begin : gen_dcache_8k
			saduvssd8ULTRALOW1p2048x32m16b1w1c1p1d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		16384: begin : gen_dcache_16k
			saduvssd8ULTRALOW1p4096x32m16b1w1c1p1d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				// .ME(data_enable & ~mem_cancel),					// BOZO NOT WORKING
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		32768: begin : gen_dcache_32k
			saduvssd8ULTRALOW1p8192x32m16b4w1c1p0d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		65536: begin : gen_dcache_64k
			saduvssd8ULTRALOW1p16384x32m16b4w1c1p0d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		131072: begin : gen_dcache_128k
			saduvssd8ULTRALOW1p32768x32m16b8w1c1p0d0l0rm3sdrw11_core d_sram
			(
				.CLK(clk),
				.ME(data_enable),
				.WE(~data_read),
				.WEM({{8{mem_wstrb[3]}}, {8{mem_wstrb[2]}}, {8{mem_wstrb[1]}}, {8{mem_wstrb[0]}}}),
				.ADR(ram_address[(d_addr_width-1):2]),
				.D({byte_store3, byte_store2, byte_store1, byte_store0}),
				.Q({byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0})
			);
		end
		default: begin : gen_dcache_invalid
			initial $error("Unsupported d_slice_size = %0d", d_slice_size);
		end
	endcase
endgenerate

always_comb
	begin
			// Just to prevent any latches.
			mem_cancel      = 0;
			casex (mem_wstrb)
				4'b0001: mem_cancel = 0; // Store Byte
				4'b0010: mem_cancel = 0; // Store Byte
				4'b0100: mem_cancel = 0; // Store Byte
				4'b1000: mem_cancel = 0; // Store Byte
				4'b0011: mem_cancel = 0; // Store Half Words
				4'b1100: mem_cancel = 0; // Store Half Words
				4'b1111: mem_cancel = 0; // Store Full Word
				// Default case to catch any bad write_strobes, will do cancel the write. 
				default: mem_cancel = 1;
			endcase
	end

// Needs some updates if the fan out is resolved via the flopping. 
assign byte_store0 = (mem_wstrb == 4'b0001 || mem_wstrb == 4'b1111) ? (ram_store[7:0]) : 0;
assign byte_store1 = (mem_wstrb == 4'b0010) ? (ram_store[7:0]) : (mem_wstrb == 4'b0011 || mem_wstrb == 4'b1111) ? (ram_store[15:8]) : 0;
assign byte_store2 = (mem_wstrb == 4'b0100 || mem_wstrb == 4'b1100) ? (ram_store[7:0]) : (mem_wstrb == 4'b1111) ? (ram_store[23:16]) : 0;
assign byte_store3 = (mem_wstrb == 4'b1000) ? (ram_store[7:0]) : (mem_wstrb == 4'b1100) ? (ram_store[15:8]) : (mem_wstrb == 4'b1111) ? (ram_store[31:24]) : 0;

assign ram_fetch = {byte_fetch3, byte_fetch2, byte_fetch1, byte_fetch0};

endmodule
