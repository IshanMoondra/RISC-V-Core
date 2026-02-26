/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module d_cache
    #(cache_size = 256)
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
        output logic [31:0] ram_fetch,
        // Misaligned access warning
        output logic misaligned
    );

// Byte addressable memory
wire [29:0] index; 
assign index = ram_address[31:2];
// assign index = ram_address;
reg [7:0] byte0 [0:cache_size-1];
reg [7:0] byte1 [0:cache_size-1];
reg [7:0] byte2 [0:cache_size-1];
reg [7:0] byte3 [0:cache_size-1];

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        begin
            misaligned  <= 0;
            ram_fetch   <= 0;
        end
    else if (data_read && data_enable)
        ram_fetch <= {
                        byte3[index],
                        byte2[index],
                        byte1[index],
                        byte0[index]
                    };
    else if (~data_read && data_enable)
        casex (mem_wstrb)
            4'b0001: byte0[index] <= ram_store[7:0]; // Store Byte
            4'b0010: byte1[index] <= ram_store[7:0]; // Store Byte
            4'b0100: byte2[index] <= ram_store[7:0]; // Store Byte
            4'b1000: byte3[index] <= ram_store[7:0]; // Store Byte
            4'b0011: {byte1[index], byte0[index]} <= ram_store[15:0]; // Store Half Words
            4'b1100: {byte3[index], byte2[index]} <= ram_store[15:0]; // Store Half Words
            4'b1111: {byte3[index], byte2[index], byte1[index], byte0[index]} <= ram_store; // Store Full Word
            // Default case to catch any bad write_strobes, will do nothing. 
            default: {byte3[index], byte2[index], byte1[index], byte0[index]} <= {byte3[index], byte2[index], byte1[index], byte0[index]};
        endcase

endmodule
/*
Base Bound Register
Instruction PC = 45 
Is (Base < PC < Bound) ? (SRAM[PC[10:2]]) : (0)

I-Cache: Tag Array - Physical Offset

SRAM cell 256 instructions
*/