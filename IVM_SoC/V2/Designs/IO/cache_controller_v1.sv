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
        input wire mmio_enable,             // MMIO Data Enable from MMIO Decoder
        input wire cache_enable,            // Cache Data Enable from MMIO Decoder
        // SPI IO
        input wire [31:0] spi_fetch,        // For Loading the Caches
        output logic [31:0] spi_store,      // For Write Backs to SPI
        output logic [31:0] spi_address,    // To SPI Master
        output logic [3:0] write_strobe,    // To SPI Master for Dirty Write Back
        input wire spi_ready,               // From SPI Master on Word Ready
        output logic spi_addr_valid,        // To SPI Master to indicate valid Addr
        // Clock Gate Signals
        output logic set_clk_enable,
        output logic i_cache_miss,
        output logic d_cache_miss,
        // Core Stall Signals: For the Branch resolution by bubbling for 5 cycles
        output logic core_bubble        // Can do it later as well. 
    );

// Typedef for the FSM itself.
typedef enum reg [3:0] { POR, IDLE, I_MISS, D_MISS, BUBBLE, WRBK, WAY_SEL, LCK_BB, FETCH, UPD_BB0, UPD_BB1 } FSM_ENUM;
FSM_ENUM iSTATE, iNEXT_STATE;
logic fsm_clk_en;
logic clr_bubble_counter;
logic clr_fetch_counter;
logic [2:0] bubble_counter;
logic [10:0] fetch_counter;
// Fixed BB Buffers to fix what page bounds are being loaded.
logic [31:0] set_base_addr;
logic update_base_addr;
logic clr_base_addr;
logic [31:0] base_buffer;
logic [31:0] bound_buffer;
// FSM SM's FF buffers
// These are for I-cache Refills, since direct port is present // Might need re-work.
logic fsm_update_addr;
logic fsm_clr_buffer;
logic [31:0] fsm_fetch_addr;
logic [31:0] addr_buffer;
logic [31:0] addr_buffer_ff;
logic [31:0] data_buffer;
logic [31:0] i_cache_base_fetch;
logic [31:0] i_cache_bound_fetch;
// These are the muxed wires that will select between who drives the D-cache slices. 
logic [31:0] fsm_d_addr;
logic [31:0] fsm_d_store;
logic [31:0] d_cache_fetch [3:0];
logic [31:0] d_cache_base_fetch [3:0];
logic [31:0] d_cache_bound_fetch [3:0];
// Based on the Memory Layout
logic d_cache_enable;
logic d_cache_read;

// For use in Generate For Loops
parameter num_i_slice = 1;
parameter num_d_slice = 4;
genvar i_slice_idx;
genvar d_slice_idx;

// Cache Way Select: Each Bit decides whether it is locked or not.
logic [31:0] i_cache_way;
logic [31:0] d_cache_way;
logic [31:0] i_lock_mode;
logic [31:0] d_lock_mode;

logic set_i_ways;
logic set_d_ways;

logic get_i_ways;
logic get_d_ways;

logic set_i_base;
logic set_i_bound;
logic get_i_base;
logic get_i_bound;

logic set_d_base;
logic set_d_bound;
logic get_d_base;
logic get_d_bound;

logic set_i_lock_mode;
logic get_i_lock_mode;

logic set_d_lock_mode;
logic get_d_lock_mode;

logic update_ways;

assign set_i_ways   = mmio_enable && (data_address[7:2] == 0);
assign set_d_ways   = mmio_enable && (data_address[7:2] == 4);
assign get_i_ways   = mmio_enable && (data_address[7:2] == 8);
assign get_d_ways   = mmio_enable && (data_address[7:2] == 12);

assign set_i_base   = mmio_enable && (data_address[7:2] == 16);
assign set_i_bound  = mmio_enable && (data_address[7:2] == 20);
assign get_i_base   = mmio_enable && (data_address[7:2] == 24);
assign get_i_bound  = mmio_enable && (data_address[7:2] == 28);

assign set_d_base   = mmio_enable && (data_address[7:2] == 32);
assign set_d_bound  = mmio_enable && (data_address[7:2] == 36);
assign get_d_base   = mmio_enable && (data_address[7:2] == 40);
assign get_d_bound  = mmio_enable && (data_address[7:2] == 44);

assign set_i_lock_mode = mmio_enable && (data_address[7:2] == 48);
assign get_i_lock_mode = mmio_enable && (data_address[7:2] == 52);

assign set_d_lock_mode = mmio_enable && (data_address[7:2] == 56);
assign get_d_lock_mode = mmio_enable && (data_address[7:2] == 60);

// MMIO Registers
always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        begin
            i_cache_way <= 0;
            d_cache_way <= 0;
            i_lock_mode <= 0;
            d_lock_mode <= 0;
        end
    else if (set_i_ways)
        i_cache_way <= data_store;
    else if (set_d_ways)
        d_cache_way <= data_store;
    else if (set_i_lock_mode)
        i_lock_mode <= data_store;
    else if (set_d_lock_mode)
        d_lock_mode <= data_store;

// Can use this as a bit wise for upto 32 ways, simply set that particular bit and that slice gets the values you want.
logic [31:0] set_i_refill;
logic [31:0] i_refill;
logic [31:0] i_misaligned;
logic [31:0] i_base_we;
logic [31:0] i_bound_we;
logic [31:0] i_clk_en;
logic [31:0] i_miss;

// Same for D-Cache
logic [31:0] set_d_refill;
logic [31:0] d_refill;
logic [31:0] d_base_we;
logic [31:0] d_bound_we;
logic [31:0] d_clk_en;
logic [31:0] d_miss;

assign d_cache_enable   = cache_enable;
assign d_cache_read     = data_read;

// Can make generate for loop for this too in the later revision.
// Instantiating the I-Cache Slices
i_cache_v1 iSlice0
    (
        // Universal Signals
        .clk(clk),
        .rst_n(rst_n),
        // Instructions to CPU
        .fetch_address({2'b00, pc_fetch[31:2]}),
        .code_fetch(code_fetch),
        // Data from Cache Controller
        .refill_enable(i_refill[0]),
        .refill_data(data_buffer),
        .refill_address({2'b00, addr_buffer_ff[31:2]}),
        // Misaligned Access Warning
        .misaligned(i_misaligned[0]),
        // BB Register Pair MMIO
        .set_base_addr(base_buffer),
        .set_bound_addr(bound_buffer),
        // This is a problematic piece, need to think this... BOZO
        .get_base_addr(i_cache_base_fetch),
        .get_bound_addr(i_cache_bound_fetch),
        // BB Register Pair Write Enables
        .base_addr_we(i_base_we[0]),
        .bound_addr_we(i_bound_we[0]),
        // I_Cache Slice Clk Enable
        .set_clk_enable(i_clk_en[0]),
        .i_cache_miss(i_miss[0])
    );

// Instantiating the D-Cache Slices
generate
    for (d_slice_idx = 0; d_slice_idx < num_d_slice; d_slice_idx = d_slice_idx + 1)
        begin   : d_slice_gen
            // Instantiating the D-Cache Slice
            d_cache_v1 d_slice_inst
                (
                    // Universal Signals
                    .clk(clk),
                    .rst_n(rst_n),
                    // Byte Mask + Enables: Need to add ports to cache controller for this
                    .override(d_refill[d_slice_idx]),
                    .data_enable(d_cache_enable),
                    // .data_enable(data_enable),
                    .data_read(d_cache_read),
                    .mem_wstrb(mem_wstrb),
                    // Data to/from Core
                    .ram_address(fsm_d_addr),
                    .ram_store(fsm_d_store),
                    // BOZO need to sort this out too.
                    .ram_fetch(d_cache_fetch[d_slice_idx]),
                    // BB Register Pair MMIO
                    .set_base_addr(base_buffer),
                    .set_bound_addr(bound_buffer),
                    // BOZO need to sort this out
                    .get_base_addr(d_cache_base_fetch[d_slice_idx]),
                    .get_bound_addr(d_cache_bound_fetch[d_slice_idx]),
                    // BB Register Pair Write Enables
                    .base_addr_we(d_base_we[d_slice_idx]),
                    .bound_addr_we(d_bound_we[d_slice_idx]),
                    // D-Cache Slice Clock Enables
                    .set_clk_enable(d_clk_en[d_slice_idx]),
                    .d_cache_miss(d_miss[d_slice_idx])
                );
        end     : d_slice_gen
endgenerate

always_ff @(posedge clk, negedge rst_n)
    begin : State_Machine_FF
        if (~rst_n)
            iSTATE <= POR;
        else
            iSTATE <= iNEXT_STATE;
    end   : State_Machine_FF

always_ff @(posedge clk, negedge rst_n)
    begin   : SPI_Buffers
        if (~rst_n)
            begin
                addr_buffer     <= 0;
                data_buffer     <= 0;
                fetch_counter   <= 0;
            end
        else if (spi_ready)
            begin
                fetch_counter <= fetch_counter + 1;
                data_buffer <= spi_fetch;
                addr_buffer <= addr_buffer + 4; 
            end
        else if (fsm_update_addr)
            addr_buffer <= base_buffer;
        else if (clr_fetch_counter)
            fetch_counter <= 0;
    end     : SPI_Buffers

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        addr_buffer_ff <= 0;
    else
        addr_buffer_ff <= addr_buffer;

always_ff @(posedge clk, negedge rst_n)
    begin   : BB_Buffers
        if (~rst_n)
            base_buffer <= 0;
        else if (update_base_addr)
            base_buffer <= set_base_addr;
    end     : BB_Buffers

assign bound_buffer = base_buffer + 1024;

always_ff @(posedge clk, negedge rst_n)
    begin   : WAY_SELECT_LOCK
        if (~rst_n)
            begin
                i_refill = 0;
                d_refill = 0;
            end 
        else if (update_ways)
            begin
                i_refill = set_i_refill;
                d_refill = set_d_refill;
            end
    end     : WAY_SELECT_LOCK

always_comb 
begin   : Controller_FSM
    // Setting up defaults
    iNEXT_STATE     = iSTATE;
    fsm_clk_en      = 0;
    fsm_fetch_addr  = 0;
    // Future Variant
    core_bubble     = 0;
    clr_bubble_counter  = 1;
    clr_fetch_counter = 1;    
    // SPI Mem IO Interface Inputs
    spi_addr_valid  = 0;
    spi_address     = 32'h0;
    // I-Cache Specifics
    set_i_refill    = 0;
    i_base_we       = 0;
    i_bound_we      = 0;
    // D-Cache Specifics
    fsm_d_addr      = (&d_miss[3:0]) ? (addr_buffer) : (data_address);
    fsm_d_store     = (&d_miss[3:0]) ? (data_buffer) : (data_store);
    d_base_we       = 0;
    d_bound_we      = 0;

    update_ways     = 0;
    casex (iSTATE)
        POR : 
            begin
                iNEXT_STATE     = I_MISS;
                set_i_refill    = 1;
                update_ways     = 1;
            end
        IDLE : 
            begin
                fsm_clk_en = 1;
                if (i_miss[0])
                    iNEXT_STATE = I_MISS;
                else if (&d_miss[3:0])
                    iNEXT_STATE = D_MISS;
            end
        I_MISS : 
            begin
                clr_bubble_counter  = 1;
                update_base_addr    = 1;
                set_base_addr       = {pc_fetch[31:10], {10{1'b0}}};
                iNEXT_STATE         = LCK_BB;
            end
        D_MISS :
            begin
                iNEXT_STATE = WAY_SEL;
                update_base_addr    = 1;
                set_base_addr       = {data_address[31:10], {10{1'b0}}};
            end
        BUBBLE :
            begin
                core_bubble = 1;
                iNEXT_STATE = (bubble_counter == 4) ? (WAY_SEL) : (BUBBLE);
            end
        WAY_SEL :
            begin
                iNEXT_STATE = LCK_BB;
                if (i_miss[0])
                    set_i_refill = 1;
                else
                    set_d_refill = 1'b1 << base_buffer[11:10];
            end
        LCK_BB :
            begin
                clr_fetch_counter   = 1;
                iNEXT_STATE         = FETCH;
            end
        FETCH : 
            begin
                spi_addr_valid  = 1;
                spi_address     = addr_buffer;
                iNEXT_STATE     = (fetch_counter == 1023) ? (UPD_BB0) :(FETCH);
                clr_fetch_counter   = (fetch_counter == 1023) ? (1'b1) : (1'b0);
            end
        UPD_BB0 :
            begin
                iNEXT_STATE = UPD_BB1;
                update_ways = 1;
                if (i_miss[0])
                    i_base_we[0] = 1;
                else
                    casex (d_miss[3:0])
                        4'b0001: d_base_we[0] = 1;
                        4'b0010: d_base_we[1] = 1;
                        4'b0100: d_base_we[2] = 1;
                        4'b1000: d_base_we[3] = 1; 
                        default: d_base_we[0] = 1;
                    endcase
            end
        UPD_BB1 :
            begin
                iNEXT_STATE = IDLE;
                if (i_miss[0])
                    i_bound_we[0] = 1;
                else
                    casex (d_miss[3:0])
                        4'b0001: d_bound_we[0] = 1;
                        4'b0010: d_bound_we[1] = 1;
                        4'b0100: d_bound_we[2] = 1;
                        4'b1000: d_bound_we[3] = 1; 
                        default: d_bound_we[0] = 1;
                    endcase
            end
        default: iNEXT_STATE = IDLE; 
    endcase
end     : Controller_FSM

// Clock Enable:
assign set_clk_enable   = (i_clk_en[0]) && (&d_clk_en[3:0]) && fsm_clk_en;
// Final Output Mux
// assign data_fetch       =   (mmio_enable)       ? 
//                             (get_i_ways)        ? (i_cache_way) :
//                             (get_d_ways)        ? (d_cache_way) :
//                             (get_i_lock_mode)   ? (i_lock_mode) :
//                             (get_d_lock_mode)   ? (d_lock_mode) :
//                             (cache_enable)      ? (
//                             (d_clk_en[0])       ? (d_cache_fetch[0]) :
//                             (d_clk_en[1])       ? (d_cache_fetch[1]) :
//                             (d_clk_en[2])       ? (d_cache_fetch[2]) :
//                             (d_clk_en[3])       ? (d_cache_fetch[3]) :
//                             (32'h0)) : (32'h0);

// Final Output Mux
always_comb
    begin
        if (mmio_enable)
            begin
                if (get_i_ways)
                    data_fetch = i_cache_way;
                else if (get_d_ways)
                    data_fetch = d_cache_way;
                else if (get_i_lock_mode)
                    data_fetch = i_lock_mode;
                else if (get_d_lock_mode)
                    data_fetch = d_lock_mode;
                else
                    data_fetch = 0;
            end
        else if (cache_enable)
            begin
                if (d_clk_en[0])
                    data_fetch = d_cache_fetch[0];
                else if (d_clk_en[1])
                    data_fetch = d_cache_fetch[1];
                else if (d_clk_en[2])
                    data_fetch = d_cache_fetch[2];
                else if (d_clk_en[3])
                    data_fetch = d_cache_fetch[3];
                else
                    data_fetch = 0;
            end
        else
            data_fetch = 0;
    end

endmodule