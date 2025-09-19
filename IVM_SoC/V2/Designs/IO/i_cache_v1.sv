/*
test_cache.sv
This file module will implement a byte addressable code memory lookalike,
so that I can test the other parts of the system with proper C++ code, 
without having to worry about the cache itself. 
TLDR: Place Holder till Cache is ready
Needs some more stuff to make this a cache equivalent.
*/

module i_cache_v1
    #(cache_size = 256)
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // Instructions to CPU
        input wire [31:0] fetch_address,
        output logic [31:0] code_fetch,
        // Data from Cache Controller
        input wire refill_enable,
        input wire [31:0] refill_data,
        input wire [31:0] refill_address,
        // Misaligned access warning
        output logic misaligned,
        // Base Bound Register Pairs IO
        input wire [31:0] set_base_addr,
        input wire [31:0] set_bound_addr,
        output logic [31:0] get_base_addr,
        output logic [31:0] get_bound_addr,
        // Base Bound Register Pair Write Enables
        input wire base_addr_we,
        input wire bound_addr_we,
        // I_Cache Clock Enable Signal
        output wire set_clk_enable,
        output wire i_cache_miss
    );

logic [31:0] base_addr;
logic [31:0] bound_addr;

always_ff @(posedge clk, negedge rst_n)
begin
    if (~rst_n)
        begin
            base_addr <= 1024;
            bound_addr <= 2048;
        end
    else if (base_addr_we)
        base_addr <= set_base_addr;
    else if (bound_addr_we)
        bound_addr <= set_bound_addr;
end

assign get_base_addr    = base_addr;
assign get_bound_addr   = bound_addr;

assign set_clk_enable   = (fetch_address <= bound_addr) && (fetch_address >= base_addr);
assign i_cache_miss     = ~set_clk_enable;

// Word addressable I-Cache Slice
reg [31:0] i_cache_slice [0:cache_size-1];

always_ff @( posedge clk, negedge rst_n ) 
    begin : Code_Out
        if (~rst_n)
            {misaligned, code_fetch} <= 0;
        else if (refill_enable)
            i_cache_slice[refill_address] <= refill_data;
        else
            begin
                code_fetch <= i_cache_slice[fetch_address];
                misaligned <= ((|fetch_address[1:0]) != 0);
            end
    end : Code_Out

endmodule
