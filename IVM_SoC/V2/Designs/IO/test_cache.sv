/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module test_cache
    #(cache_size = 1024)
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // Instructions to CPU
        input wire [31:0] fetch_address,
        output logic [31:0] code_fetch,
        // Data from Cache Controller
        input wire [31:0] refill_data,
        input wire [31:0] refill_address,
        // Misaligned access warning
        output logic misaligned
    );

// Byte addressable memory
reg [7:0] memory [0:cache_size-1];

initial
    begin
        // Loading the C++ code.
        $readmemh("./Testbenches/firmware.hex", memory);
        $display("Code Memory Loaded successfully!");
    end

always_ff @( posedge clk, negedge rst_n ) 
    begin : Code_Out
        if (~rst_n)
            {misaligned, code_fetch} <= 0;
        else
            begin
                // Need to test and figure out what way is LE
                code_fetch <= { memory[fetch_address+3],
                                memory[fetch_address+2],
                                memory[fetch_address+1],
                                memory[fetch_address+0] };
                misaligned <= ((fetch_address % 4) != 0);
            end
    end : Code_Out

endmodule
