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
