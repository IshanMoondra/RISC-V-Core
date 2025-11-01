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
        input   wire clk, 
        input   wire rst_n,
        // I-cache Bus
        input   wire    [31:0] pc_fetch,        // PC_Fetch for I-Cache
        output  logic   [31:0] code_fetch,      // To CPU from I-Cache
        // MMIO Interfacing
        input   wire    [4:0] data_address,    // From the CPU for the MMIO usage & D-Cache hit
        input   wire    [31:0] data_store,      // For the Page Locks, Base-Bound Data
        output  logic   [31:0] data_fetch,      // For giving data on BB Pair values etc. 
        input   wire    [3:0] mem_wstrb,        // Write Strobe for D-Cache access.
        input   wire    data_read,              // Global Data Read from Core
        input   wire    mmio_enable,            // MMIO Data Enable from MMIO Decoder
        input   wire    cache_enable,           // Cache Data Enable from MMIO Decoder
        input   wire    cache_enable_ff,           // Cache Data Enable FF from MMIO Decoder
        // SPI IO
        input   wire    [31:0] spi_fetch,       // For Loading the Caches
        output  logic   [31:0] spi_address,     // To SPI Master
        input   wire    spi_ready,              // From SPI Master on Word Ready
        output  logic   spi_addr_valid,         // To SPI Master to indicate valid Addr        
        output  logic   [31:0] spi_store,       // For Write Backs to SPI               // Unsupoorted for V1
        output  logic   [3:0] write_strobe,     // To SPI Master for Dirty Write Back   // Unsupoorted for V1 
        // Clock Gate Signals
        output  logic   set_clk_enable,
        output  logic   i_cache_miss,
        output  logic   d_cache_miss,
        // Core Stall Signals: For the Branch resolution by bubbling for 5 cycles
        output  logic   core_bubble             // Can do it later as well. 
    );

parameter num_i_ways = 1;
parameter num_d_ways = 4;
genvar i_idx, d_idx;

// Fresh Start: First the BB Pairs
    logic [31:0] i_base_0, i_bound_0;
    logic [31:0] d_base_0, d_bound_0;
    logic [31:0] d_base_1, d_bound_1;
    logic [31:0] d_base_2, d_bound_2;
    logic [31:0] d_base_3, d_bound_3;

    logic set_dis_i_cache;
    logic get_dis_i_cache;
    logic dis_i_cache;
    assign dis_i_cache = 0;
    // always_ff @(posedge clk, negedge rst_n)
    //     if (~rst_n)
    //         dis_i_cache = 0;
    //     else if (set_dis_i_cache)
    //         dis_i_cache = data_store[0];

// Dynamic Memory Space Base & Bound MMIO Registers
    logic [31:0] dynamic_base, dynamic_bound;
    logic set_dynamic_base, set_dynamic_bound;
    logic get_dynamic_base, get_dynamic_bound;

//     always_ff @(posedge clk, negedge rst_n)
//         if (~rst_n)
//             begin
//                 dynamic_base    <= 32'h0017F000; // Replace with the Linker Values
//                 dynamic_bound   <= 32'h00180000;
//             end
//         else if (set_dynamic_base)
//             dynamic_base    <= data_store;
//         else if (set_dynamic_bound)
//             dynamic_bound   <= data_store;

// Cache Way Locks
    logic [num_i_ways-1:0] i_lock;
    logic [num_d_ways-1:0] d_lock;
    logic set_i_lock, set_d_lock;   // MMIO Set Lock
    logic get_i_lock, get_d_lock;   // MMIO Get Lock

    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                i_lock <= 0;
                d_lock <= 0;
            end
        else if (set_i_lock)
            i_lock <= data_store[num_i_ways-1:0];
        else if (set_d_lock)
            d_lock <= data_store[num_d_ways-1:0];

// Cache Hit vectors // Combinational Hit/Miss Addr BB Checkers
    logic [num_i_ways-1:0] i_cache_hit, i_cache_hit_ff;
    logic [num_d_ways-1:0] d_cache_hit, d_cache_hit_ff;
    logic i_clk_en;
    logic d_clk_en;
    logic fsm_clk_en;

// To update the Base and Bound for Cache Slices
    logic [num_i_ways-1:0] set_i_base, set_i_bound;
    logic [4-1:0] set_d_base, set_d_bound;

// Buffers to hold new Base and Bound addresses
    logic [31:0] new_base;
    logic [21:0] new_page;
    logic [31:0] base_buffer, bound_buffer;
    logic set_base_buffer;

    // FF for Base Buffer:
        always_ff @(posedge clk, negedge rst_n)
            if (~rst_n)
                base_buffer = 0;
            else if (set_base_buffer)
                base_buffer = new_base;

    // Bound Buffer Logic
        assign bound_buffer = base_buffer + 2048;

// To select cache ways (ME) 
    logic [num_i_ways-1:0] i_way_sel;
    logic [num_d_ways-1:0] d_way_sel;

// & actually write to them (WE)
    logic [num_i_ways-1:0] i_way_we;
    // D-Cache wrapper can use d_way_sel and internal logic to prevent bad writes.
    logic [4-1:0] d_way_override;
    logic use_d_way_override;

// Inputs to Cache Ways
    logic [31:0] i_cache_store, i_cache_addr;
    logic [31:0] d_cache_store, d_cache_addr;

// Output Wire Set from Caches
    wire [31:0] i_way_out [num_i_ways-1:0];
    wire [31:0] d_way_out [num_d_ways-1:0];

// Unrolling Loops cause Synopsys hates it.
// I-Cache Instantiation   
    // generate
    //     for (i_idx = 0; i_idx < num_i_ways; i_idx = i_idx + 1)
    //         begin   : I_Slice_Gen
    //             saduvssd8ULTRALOW1p256x32m8b1w0c0p0d0l0rm3sdrw01_core i_slice_inst
    //                 (
    //                     .CLK    (clk                    ),
    //                     // .ME     (i_way_sel[i_idx]       ),
    //                     .ME     (1'b1                   ),
    //                     .WE     (i_way_we[i_idx]        ),
    //                     .Q      (i_way_out[i_idx]       ),
    //                     .D      (i_cache_store          ),
    //                     .ADR    (i_cache_addr[9:2]      )
    //                 );         
    //         end     : I_Slice_Gen
    // endgenerate

    // saduvssd8ULTRALOW1p256x32m8b1w0c0p0d0l0rm3sdrw01_core i_slice_inst
    //     (
    //         .CLK    (clk                    ),
    //         .ME     (1'b1                   ),
    //         .WE     (i_way_we[0]            ),
    //         .Q      (i_way_out[0]           ),
    //         .D      (i_cache_store          ),
    //         .ADR    (i_cache_addr[9:2]      )
    //     );

    saduvssd8ULTRALOW1p512x32m16b1w0c1p1d0l0rm3sdrw11_core i_slice_inst
        (
            .CLK    (clk                    ),
            .ME     (1'b1                   ),
            .WE     (i_way_we[0]            ),
            .Q      (i_way_out[0]           ),
            .D      (i_cache_store          ),
            .ADR    (i_cache_addr[10:2]      )
        ); 

    // saduvssd8ULTRALOW1p4096x32m16b1w0c1p1d0l0rm3sdrw11_core i_slice_inst
    //     (
    //         .CLK    (clk                    ),
    //         .ME     (1'b1                   ),
    //         .WE     (i_way_we[0]            ),
    //         .Q      (i_way_out[0]           ),
    //         .D      (i_cache_store          ),
    //         .ADR    (i_cache_addr[13:2]      )
    //     );

    // saduvssd8ULTRALOW1p1024x32m16b1w0c1p1d0l0rm3sdrw11_core i_slice_inst
    //     (
    //         .CLK    (clk                    ),
    //         .ME     (1'b1                   ),
    //         .WE     (i_way_we[0]            ),
    //         .Q      (i_way_out[0]           ),
    //         .D      (i_cache_store          ),
    //         .ADR    (i_cache_addr[11:2]      )
    // ); 

    assign d_cache_store       = (cache_enable | cache_enable_ff) ? (data_store) : (32'h0);
    assign d_cache_addr        = (cache_enable | cache_enable_ff) ? (data_address) : (32'h0);

// D-Cache Instantiation
    // generate
    //     for (d_idx = 0; d_idx < num_d_ways; d_idx = d_idx + 1)
    //         begin   : D_Slice_Gen
    //             d_cache_v1 d_slice_inst
    //                 (
    //                     // Universal Signals
    //                     .clk            (clk                ),
    //                     .rst_n          (rst_n              ),
    //                     // Memory Enable/Read/Write Signals
    //                     // .data_enable    (d_way_sel[d_idx]   ),
    //                     .data_enable    (d_cache_hit[d_idx] | d_cache_hit_ff[d_idx]),
    //                     .data_read      (data_read | ((~d_way_override[d_idx]) & use_d_way_override)),
    //                     .mem_wstrb      (mem_wstrb          ),
    //                     // Input Output Buses
    //                     .ram_store      (d_cache_store      ),
    //                     .ram_fetch      (d_way_out[d_idx]   ),
    //                     .ram_address    (d_cache_addr       )
    //                 );         
    //         end     : D_Slice_Gen
    // endgenerate

    // d_cache_v1 d_slice_0
    //     (
    //         // Universal Signals
    //         .clk            (clk                ),
    //         .rst_n          (rst_n              ),
    //         // Memory Enable/Read/Write Signals
    //         .data_enable    (d_cache_hit[0] | d_cache_hit_ff[0]),
    //         .data_read      (data_read),
    //         .mem_wstrb      (mem_wstrb          ),
    //         // Input Output Buses
    //         .ram_store      (d_cache_store      ),
    //         .ram_fetch      (d_way_out[0]       ),
    //         .ram_address    (d_cache_addr[9:2]  )
    //     );

    //     d_cache_v1 d_slice_1
    //     (
    //         // Universal Signals
    //         .clk            (clk                ),
    //         .rst_n          (rst_n              ),
    //         // Memory Enable/Read/Write Signals
    //         .data_enable    (d_cache_hit[1] | d_cache_hit_ff[1]),
    //         .data_read      (data_read),
    //         .mem_wstrb      (mem_wstrb          ),
    //         // Input Output Buses
    //         .ram_store      (d_cache_store      ),
    //         .ram_fetch      (d_way_out[1]       ),
    //         .ram_address    (d_cache_addr[9:2]  )
    //     );

    //     d_cache_v1 d_slice_2
    //     (
    //         // Universal Signals
    //         .clk            (clk                ),
    //         .rst_n          (rst_n              ),
    //         // Memory Enable/Read/Write Signals
    //         .data_enable    (d_cache_hit[2] | d_cache_hit_ff[2]),
    //         .data_read      (data_read),
    //         .mem_wstrb      (mem_wstrb          ),
    //         // Input Output Buses
    //         .ram_store      (d_cache_store      ),
    //         .ram_fetch      (d_way_out[2]       ),
    //         .ram_address    (d_cache_addr[9:2]  )
    //     );

    // d_cache_v1 d_slice_3
    // (
    //     // Universal Signals
    //     .clk            (clk                ),
    //     .rst_n          (rst_n              ),
    //     // Memory Enable/Read/Write Signals
    //     .data_enable    (d_cache_hit[3] | d_cache_hit_ff[3]),
    //     .data_read      (data_read),
    //     .mem_wstrb      (mem_wstrb          ),
    //     // Input Output Buses
    //     .ram_store      (d_cache_store      ),
    //     .ram_fetch      (d_way_out[3]       ),
    //     .ram_address    (d_cache_addr[9:2]  )
    // );

// BB for I-cache
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                i_base_0    <= '1;
                i_bound_0   <= '1;
            end
        else if (set_i_base[0])
            begin
                i_base_0    <= base_buffer;
                i_bound_0   <= bound_buffer;
            end

// BB For D-Cache Way 0
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                d_base_0    <= 32'h0017F000;
                d_bound_0   <= 32'h0017F400;
            end
        else if (set_d_base[0])
            begin
                d_base_0    <= base_buffer;
                d_bound_0   <= bound_buffer;
            end

// BB For D-Cache Way 1
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                d_base_1    <= 32'h0017F400;
                d_bound_1   <= 32'h0017F800;
            end
        else if (set_d_base[1])
            begin
                d_base_1    <= base_buffer;
                d_bound_1   <= bound_buffer;
            end

// BB For D-Cache Way 2
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                d_base_2    <= 32'h0017F800;
                d_bound_2   <= 32'h0017FC00;
            end
        else if (set_d_base[2])
            begin
                d_base_2    <= base_buffer;
                d_bound_2   <= bound_buffer;
            end

// BB For D-Cache Way 3
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            begin
                d_base_3    <= 32'h0017FC00;
                d_bound_3   <= 32'h00180000;
            end
        else if (set_d_base[3])
            begin
                d_base_3    <= base_buffer;
                d_bound_3   <= bound_buffer;
            end

// Cache Hit Checkers
    // I-Cache
        assign i_cache_hit[0] = (pc_fetch >= i_base_0) && (pc_fetch < i_bound_0);
    // // D-Cache
    //     assign d_cache_hit[0] = (data_address >= d_base_0) && (data_address < d_bound_0);
    //     assign d_cache_hit[1] = (data_address >= d_base_1) && (data_address < d_bound_1);
    //     assign d_cache_hit[2] = (data_address >= d_base_2) && (data_address < d_bound_2);
    //     assign d_cache_hit[3] = (data_address >= d_base_3) && (data_address < d_bound_3);
        assign d_cache_hit = 4'hF;
// Cache Hits Flopped, to select correct SRAM data: Both I & D
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            {d_cache_hit_ff, i_cache_hit_ff} <= 0;
        else
            {d_cache_hit_ff, i_cache_hit_ff} <= {d_cache_hit, i_cache_hit};

// FSM Stuff
    typedef enum reg [2:0] { IDLE, BUBBLE, WAY_SEL, LOCK_BB, FETCH, UPD_BB1, UPD_BB2 } iFSM;
    iFSM iSTATE, iNEXT_STATE;

    // State Machine FF
        always_ff @(posedge clk, negedge rst_n)
            if (~rst_n)
                iSTATE = IDLE;
            else if (dis_i_cache)
                iSTATE = IDLE;
            else
                iSTATE = iNEXT_STATE;

// SPI Helpers
    logic [12:0] fetch_count;
    logic clr_fetch_count;
    logic update_spi_address;
    logic [31:0] spi_address_ff;

    // Fetch Counter: To count upto 1023.
        always_ff @(posedge clk, negedge rst_n)
            if (~rst_n)
                fetch_count <= 0;
            else if (clr_fetch_count)
                fetch_count <= 0;
            else if (spi_ready)
                fetch_count <= fetch_count + 1;

    // SPI Address Buffer (Auto Increment on SPI Ready)
        always_ff @(posedge clk, negedge rst_n)
            if (~rst_n)
                spi_address <= 0;
            else if (dis_i_cache)
                spi_address <= pc_fetch;
            else if (update_spi_address)
                spi_address <= base_buffer;
            else if (spi_ready)
                spi_address <= spi_address + 4;
    
    // SPI Address Buffer Flopped, to fill I-cache properly
        always_ff @(posedge clk, negedge rst_n)
            if (~rst_n)
                spi_address_ff <= 0;
            else
                spi_address_ff <= spi_address;

// Bubble Counter
    logic [2:0] bubble_count;
    logic clr_bubble_count;
    
    always_ff @(posedge clk, negedge rst_n)
        if (~rst_n)
            bubble_count <= 0;
        else if (clr_bubble_count)
            bubble_count <= 0;
        else
            bubble_count <= bubble_count + 1;

// Actual FSM Comb Block
    always_comb 
    begin   : CC_FSM
        // Setting up safe defaults        
            clr_bubble_count    = 1;
            core_bubble         = 0;
            clr_fetch_count     = 1;
            update_spi_address  = 0;
            spi_addr_valid      = dis_i_cache;
            
            fsm_clk_en          = 0;
            
            set_i_base          = 0;
            set_i_bound         = 0;
            set_d_base          = 0;
            set_d_bound         = 0;

            new_base            = 0;
            // new_page            = (~|i_cache_hit) ? (pc_fetch[31:10]) : (data_address[31:10]);
            new_page            = (pc_fetch[31:11]);
            set_base_buffer     = 0;

            i_way_sel           = i_cache_hit;
            d_way_sel           = d_cache_hit;
            use_d_way_override  = 0;

            i_way_we            = 0;

            i_cache_store       = spi_fetch;
            i_cache_addr        = pc_fetch;

            // d_cache_store       = (cache_enable | cache_enable_ff) ? (data_store) : (32'h0);
            // d_cache_addr        = (cache_enable | cache_enable_ff) ? (data_address) : (32'h0);

            iNEXT_STATE         = iSTATE;
        
        // Casex Block for State Machine
            casex (iSTATE)
                IDLE    : 
                    begin
                        iNEXT_STATE = (~|i_cache_hit) ? (BUBBLE) : (IDLE); // (~|d_cache_hit && cache_enable) ? (WAY_SEL) : (IDLE);
                        fsm_clk_en  = 1'b1;
                    end                    
                BUBBLE  :
                    begin
                        clr_bubble_count    = 0;
                        core_bubble         = 1;
                        if (bubble_count == 4)
                            iNEXT_STATE     = WAY_SEL;
                    end
                WAY_SEL :
                    begin
                        iNEXT_STATE     = LOCK_BB;
                        set_base_buffer = 1;
                        new_base        = {new_page, {11{1'b0}}};
                        
                        if (~i_cache_hit[0])
                            i_way_sel   = 1; // Not used in initial run since only 1 slice.
                        
                        // BOZO to be re-worked in the future
                        // if (~|d_cache_hit)
                        //     use_d_way_override = 1;
                    end
                LOCK_BB :
                    begin
                        iNEXT_STATE         = FETCH;
                        update_spi_address  = 1;
                    end
                FETCH   :
                    begin
                        iNEXT_STATE     = (fetch_count == 512) ? (UPD_BB1  ) : (FETCH);
                        clr_fetch_count = (fetch_count == 512) ? (1'b1     ) : (1'b0 );
                        spi_addr_valid  = 1'b1;
                        if (~|i_cache_hit)
                            begin
                                i_way_we        = 1;
                                i_cache_addr    = spi_address_ff;
                                i_cache_store   = spi_fetch;
                            end
                        // else
                        //     begin
                        //         d_cache_addr        = spi_address_ff;
                        //         d_cache_store       = spi_fetch;
                        //         use_d_way_override  = 1;
                        //     end
                    end
                UPD_BB1 :
                    begin
                        iNEXT_STATE = UPD_BB2;
                        if (~|i_cache_hit)
                            set_i_base = 1;
                        // else
                        //     set_d_base = d_way_override;
                    end
                UPD_BB2 :
                    begin
                        iNEXT_STATE = IDLE;
                        if (~|i_cache_hit)
                            set_i_bound = 1;
                        // else
                        //     set_d_bound = d_way_override;
                    end
                default: iNEXT_STATE = IDLE;
            endcase
    end     : CC_FSM

// Selects D_Cache Ways to overwrite when a Miss happenes.
    // Way 0 is selected for anything that is not in the 3K pure dynamic space, aka the RO Streaming space.
    // assign d_way_override[0] = ((data_address <   dynamic_base)         & (data_address >= dynamic_bound)          );
    // assign d_way_override[1] = ((data_address >=  dynamic_base)         & (data_address < (dynamic_base + 1024))   );
    // assign d_way_override[2] = ((data_address >= (dynamic_base + 1024)) & (data_address < (dynamic_base + 2048))   );
    // assign d_way_override[3] = ((data_address >= (dynamic_base + 3072)) & (data_address < dynamic_bound)           );
    assign d_way_override = 4'h0;

assign code_fetch   =   (dis_i_cache) ? (spi_fetch) : (i_cache_hit_ff[0]) ? (i_way_out[0]) : (0);

assign data_fetch   =   (mmio_enable)   ? 
                            // (get_dynamic_base   ) ? (dynamic_base)  :
                            // (get_dynamic_bound  ) ? (dynamic_bound) :
                            (get_dis_i_cache    ) ? (dis_i_cache)   :
                            (0) :
                        // (cache_enable_ff)  ? 
                        //     (d_cache_hit_ff[0]) ? (d_way_out[0]) :
                        //     (d_cache_hit_ff[1]) ? (d_way_out[1]) :
                        //     (d_cache_hit_ff[2]) ? (d_way_out[2]) :
                        //     (d_cache_hit_ff[3]) ? (d_way_out[3]) :
                        //     (0) :
                            (0) ;

assign i_clk_en         = (dis_i_cache) ? (spi_ready) : (|i_cache_hit);
// assign d_clk_en         = (cache_enable) ? (|d_cache_hit) : (1'b1);
assign set_clk_enable   = i_clk_en && fsm_clk_en;

assign i_cache_miss     = ~i_clk_en;
// assign d_cache_miss     = ~d_clk_en;
assign d_cache_miss     = 0;

// Non Supported Features
assign spi_store        = 0;
assign write_strobe     = 0;

// MMIO Stuff to be done
assign set_i_lock           = 0;
assign set_d_lock           = 0;
assign get_i_lock           = 0;
assign get_d_lock           = 0;
assign set_dynamic_base     = mmio_enable && data_address[4:0] == 5'd0;
assign set_dynamic_bound    = mmio_enable && data_address[4:0] == 5'd4;
assign get_dynamic_base     = mmio_enable && data_address[4:0] == 5'd8;
assign get_dynamic_bound    = mmio_enable && data_address[4:0] == 5'd12;
assign set_dis_i_cache      = mmio_enable && data_address[4:0] == 5'd16;
assign get_dis_i_cache      = mmio_enable && data_address[4:0] == 5'd20;

endmodule