/*
cache_controller_v1.sv
This file is the fall back Cache Controller for the IVM SOC V1
No frills, no thrills; a simple Direct Mapped Caching FSM, that
clock gates the core on any miss. No optimizations. Just plainly
does what it is told. 
*/

module cache_controller_v1
    (
        // Universal Signals
        input wire clk, 
        input wire rst_n,
        // I-cache Bus
        input wire [31:0] pc_fetch,         // PC_Fetch for I-Cache
        output logic [31:0] code_fetch,     // To CPU from I-Cache
        // MMIO Interfacing
        input wire [31:0] data_address,     // From the CPU for the MMIO usage & D-Cache hit
        input wire [31:0] data_store,       // For the Page Locks, Base-Bound Data
        output logic [31:0] data_fetch,     // For giving data on BB Pair values etc. 
        input wire [3:0] mem_wstrb,         // Write Strobe for D-Cache access.
        input wire data_read,               // Global Data Read from Core
        input wire data_enable,             // Global Data Enable from Core
        // SPI IO
        input wire [31:0] spi_fetch,        // For Loading the Caches
        output logic [31:0] spi_store,      // For Write Backs to SPI
        output logic [31:0] spi_address,    // To SPI Master
        output logic [3:0] write_strobe,    // To SPI Master for Dirty Write Back
        input wire spi_ready,               // From SPI Master on Word Ready
        output logic spi_addr_valid,         // To SPI Master to indicate valid Addr
        // Clock Gate Signals
        output logic set_clk_enable,
        output logic i_cache_miss,
        output logic d_cache_miss,
        // Core Stall Signals: For the Branch resolution by bubbling for 5 cycles
        output logic core_bubble        // Can do it later as well. 
    );

// Typedef for the FSM itself.
typedef enum reg [1:0] { IDLE, I_MISS, D_MISS, BUBBLE } FSM_ENUM;
FSM_ENUM iSTATE, iNEXT_STATE;
// Fixed BB Buffers to fix what page bounds are being loaded.
logic [31:0] base_buffer;
logic [31:0] bound_buffer;
// FSM SM's FF buffers
logic [31:0] addr_buffer;
logic [31:0] data_buffer;
logic [31:0] fsm_d_addr;
logic [31:0] fsm_d_store;
logic [31:0] d_cache_fetch [3:0];
// Based on the Memory Layout
logic d_cache_enable;
logic d_cache_read;

// For use in Generate For Loops
genvar num_i_slice;
genvar num_d_slice;

// Cache Way Select: Each Bit decides whether it is locked or not.
logic [31:0] i_cache_way;
logic [31:0] d_cache_way;

// Can use this as a bit wise for upto 32 ways, simply set that particular bit and that slice gets the values you want.
logic [31:0] i_refill;
logic [31:0] i_misaligned;
logic [31:0] i_base_we;
logic [31:0] i_bound_we;
logic [31:0] i_clk_en;
logic [31:0] i_miss;

// Same for D-Cache
logic [31:0] d_refill;
logic [31:0] d_misaligned;
logic [31:0] d_base_we;
logic [31:0] d_bound_we;
logic [31:0] d_clk_en;
logic [31:0] d_miss;

// Can make generate for loop for this too in the later revision.
// Instantiating the I-Cache Slices
i_cache_v1 iSlice0
    (
        // Universal Signals
        .clk(clk),
        .rst_n(rst_n),
        // Instructions to CPU
        .fetch_address(pc_fetch),
        .code_fetch(code_fetch),
        // Data from Cache Controller
        .refill_enable(i_refill[0]),
        .refill_data(data_buffer),
        .refill_address(addr_buffer),
        // Misaligned Access Warning
        .misaligned(i_misaligned[0]),
        // BB Register Pair MMIO
        .set_base_addr(base_buffer),
        .set_bound_addr(bound_buffer),
        // This is a problematic piece, need to think this... BOZO
        .get_base_addr(),
        .get_bound_addr(),
        // BB Register Pair Write Enables
        .base_addr_we(i_base_we[0]),
        .bound_addr_we(i_bound_we[0]),
        // I_Cache Slice Clk Enable
        .set_clk_enable(i_clk_en[0]),
        .i_cache_miss(i_miss[0])
    );

// Instantiating the D-Cache Slices
generate
    for (num_d_slice = 0; num_d_slice < 4; num_d_slice = num_d_slice + 1)
        begin   : d_slice_gen
            // Instantiating the D-Cache Slice
            d_cache_v1 d_slice_inst
                (
                    // Universal Signals
                    .clk(clk),
                    .rst_n(rst_n),
                    // Byte Mask + Enables: Need to add ports to cache controller for this
                    // .data_enable(d_cache_enable),
                    .data_enable(data_enable),
                    .data_read(d_cache_read),
                    .mem_wstrb(mem_wstrb),
                    // Data to/from Core
                    .ram_address(fsm_d_addr),
                    .ram_store(fsm_d_store),
                    // BOZO need to sort this out too.
                    .ram_fetch(d_cache_fetch[num_d_slice]),
                    // BB Register Pair MMIO
                    .set_base_addr(base_buffer),
                    .set_bound_addr(bound_buffer),
                    // BOZO need to sort this out
                    .get_base_addr(),
                    .get_bound_addr(),
                    // BB Register Pair Write Enables
                    .base_addr_we(d_base_we[num_d_slice]),
                    .bound_addr_we(d_bound_we[num_d_slice]),
                    // D-Cache Slice Clock Enables
                    .set_clk_enable(d_clk_en[num_d_slice]),
                    .d_cache_miss(d_miss[num_d_slice])
                );
        end     : d_slice_gen
endgenerate

always_ff @(posedge clk, negedge rst_n)
    begin : State_Machine_FF
        if (~rst_n)
            iSTATE <= IDLE;
        else
            iSTATE <= iNEXT_STATE;
    end   : State_Machine_FF

always_comb 
begin   : Controller_FSM
    // Setting up defaults
    iNEXT_STATE <= iSTATE;
    core_bubble <= 0;
    spi_addr_valid <= 0;

end     : Controller_FSM

// Clock Enable:
assign set_clk_enable = i_clk_en[0] || &i_clk_en[3:0];

endmodule