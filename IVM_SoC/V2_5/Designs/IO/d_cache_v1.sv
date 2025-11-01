/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module d_cache_v1
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

// Byte addressable memory
logic mem_cancel;
wire [29:0] index;
assign index = ram_address[31:2];

// Problem possible
wire [7:0] byte_store [3:0];
wire [7:0] byte_fetch [3:0];

parameter num_byte = 4;
genvar idx;

generate
    for (idx = 0; idx < num_byte; idx = idx + 1)
        begin   : d_way
            saduvssd8ULTRALOW1p256x8m4b1w0c0p0d0l0rm3sdrw01_core d_byte
                (
                    .CLK    (clk                            ),
                    .ME     (data_enable),
                    .WE     (mem_wstrb[idx] & (~data_read)  ),
                    .ADR    (index[7:0]                     ),
                    .D      (byte_store[idx]                ),
                    .Q      (byte_fetch[idx]                )
                );
        end     : d_way
endgenerate

always_comb
    begin
        // Just to prevent any latches.
        // byte_store[0]   = 0;
        // byte_store[1]   = 0;
        // byte_store[2]   = 0;
        // byte_store[3]   = 0;
        mem_cancel      = 0;
        // Casex to route the correct data to the correct location.
        // casex (mem_wstrb)
        //     4'b0001: byte_store[0]                                                  = ram_store[7:0];  // Store Byte
        //     4'b0010: byte_store[1]                                                  = ram_store[7:0];  // Store Byte
        //     4'b0100: byte_store[2]                                                  = ram_store[7:0];  // Store Byte
        //     4'b1000: byte_store[3]                                                  = ram_store[7:0];  // Store Byte
        //     4'b0011: {byte_store[1], byte_store[0]}                                 = ram_store[15:0]; // Store Half Words
        //     4'b1100: {byte_store[3], byte_store[2]}                                 = ram_store[15:0]; // Store Half Words
        //     4'b1111: {byte_store[3], byte_store[2], byte_store[1], byte_store[0]}   = ram_store;       // Store Full Word
        //     // Default case to catch any bad write_strobes, will do cancel the write. 
        //     default: mem_cancel = 1;
        // endcase

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

assign byte_store[0] = (mem_wstrb == 4'b0001 || mem_wstrb == 4'b1111) ? (ram_store[7:0]) : 0;
assign byte_store[1] = (mem_wstrb == 4'b0010) ? (ram_store[7:0]) : (mem_wstrb == 4'b0011 || mem_wstrb == 4'b1111) ? (ram_store[15:8]) : 0;
assign byte_store[2] = (mem_wstrb == 4'b0100 || mem_wstrb == 4'b1100) ? (ram_store[7:0]) : (mem_wstrb == 4'b1111) ? (ram_store[23:16]) : 0;
assign byte_store[3] = (mem_wstrb == 4'b1000) ? (ram_store[7:0]) : (mem_wstrb == 4'b1100) ? (ram_store[15:8]) : (mem_wstrb == 4'b1111) ? (ram_store[31:24]) : 0;

assign ram_fetch = {byte_fetch[3], byte_fetch[2], byte_fetch[1], byte_fetch[0]};

endmodule
