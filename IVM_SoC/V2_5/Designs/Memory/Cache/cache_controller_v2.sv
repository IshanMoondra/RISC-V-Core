/*
cache_controller_v2.sv
This file contains the module that acts as the Cache Controller for IVM SOC V2+. 
This will talk to an inclusive, unified L2 while dealing with L1 I-$ and D-$ for 
optimal architecture. It will clock gate the RV32 core under any miss, allowing
refills from L2, which is also clock gated, or the L1 accesses.
It implements a tag-free cache architecture, allowing for area savings and performance improvements. 
It also has a few programmable features, thus it will also implement MMIO feature registers. 
*/

module cache_controller_v2
	#(
		parameter int num_d_ways 		= 1,
		parameter int num_i_ways		= 1,
		parameter int i_slice_size 	= 8192,
		parameter int d_slice_size 	= 8192,
		parameter int l2_64bit			= 1
	)
	(
		// Universal Signals
		input   wire clk, 
		input   wire rst_n,
		// I-cache Bus
		input   wire    [31:0] pc_fetch,        // PC_Fetch for I-Cache
		output  logic   [31:0] code_fetch,      // To CPU from I-Cache
		// MMIO Interfacing
		input   wire    [31:0] 	data_address,    // From the CPU for the MMIO usage & D-Cache hit
		input   wire    [31:0] 	data_store,      // For the Page Locks, Base-Bound Data
		output  logic   [31:0]	data_fetch,      // For giving data on BB Pair values etc. 
		input   wire    [3:0] 	mem_wstrb,       // Write Strobe for D-Cache access.
		input   wire    data_read,               // Global Data Read from Core
		input   wire    mmio_enable,             // MMIO Data Enable from MMIO Decoder
		input   wire    cache_enable,            // Cache Data Enable from MMIO Decoder
		input   wire    cache_enable_ff,         // Cache Data Enable FF from MMIO Decoder
		// Unified L2 Interface IO
		input   wire    				l2_cache_miss,		// Future use case when L2 itself has a miss. // FUTURE
		input   wire    [63:0] 	l2_fetch,        	// Fetching Data from the L2
		output  logic   [63:0] 	l2_store,        	// Storing Data into the L2 // BOZO Only 32 bits per cycle for now
		output  logic   [31:0] 	l2_address,      	// Address Bus for L2	// BOZO Need to ensure proper mask for 32 bit/cycle
		output 	logic		[7:0]		l2_write_strobe,
		output	logic 	l2_write_enable,				// L2 Global Write Enable signal
		output  logic   l2_clock_enable,        // L2 clock enable, only when required
		output  logic   l2_high_bit_enable,     // To tell the L2 which side of the SRAM is used. // Actually, not needed.  
		// Clock Gate Signals
		output  logic   set_clk_enable,
		output  logic   i_cache_miss,
		output  logic   d_cache_miss,
		output  logic   l2_cache_busy,
		// Core Stall Signals: For the Branch resolution by bubbling for 5 cycles
		output  logic   core_bubble             // Can do it later as well. 
	);

localparam d_addr_width = $clog2(d_slice_size);
localparam i_addr_width = $clog2(i_slice_size);
localparam d_words_size = (d_slice_size / 4);
localparam i_words_size = (i_slice_size / 4); 
genvar i_idx, d_idx;

// Fresh Start: First the BB Pairs
	logic [31:0]	i_base	[num_i_ways-1:0];
	logic [31:0]	i_bound	[num_i_ways-1:0];
	logic [31:0]	d_base	[num_d_ways-1:0];
	logic [31:0]	d_bound	[num_d_ways-1:0];

	logic set_dis_i_cache;
	logic get_dis_i_cache;
	logic dis_i_cache;
	// assign dis_i_cache = 0;	// BOZO: Need to think this out as well.

	always_ff @(posedge clk, negedge rst_n)
		if (~rst_n)
			dis_i_cache = 0;
		else if (set_dis_i_cache)
			dis_i_cache = data_store[0];

// Dynamic Memory Space Base & Bound MMIO Registers
	logic [31:0] dynamic_base, dynamic_bound;
	logic set_dynamic_base, set_dynamic_bound;
	logic get_dynamic_base, get_dynamic_bound;

	always_ff @(posedge clk, negedge rst_n)
		if (~rst_n)
			begin
				dynamic_base    <= 32'h0003E000; // Replace with the Linker Values // Nice feature for the future build flow.
				dynamic_bound   <= 32'h00040000;
			end
		else if (set_dynamic_base)
			dynamic_base    <= data_store;
		else if (set_dynamic_bound)
			dynamic_bound   <= data_store;

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
	logic d_cache_miss_active, i_cache_miss_active;
	logic i_clk_en;
	logic d_clk_en;
	logic fsm_clk_en;

// To update the Base and Bound for Cache Slices
	logic [num_i_ways-1:0] set_i_base, set_i_bound;
	logic [num_d_ways-1:0] set_d_base, set_d_bound;

// Buffers to hold new Base and Bound addresses
	logic [31:0] 												new_base_instr;
	logic [(31- (i_addr_width - 1)):0] 	new_page_instr;
	logic [31:0] 												new_base_data;
	logic [(31- (d_addr_width - 1)):0] 	new_page_data;
	logic [31:0] 												base_buffer_instr;
	logic [31:0] 												bound_buffer_instr;
	logic 															set_base_buffer_instr;
	logic [31:0] 												base_buffer_data;
	logic [31:0] 												bound_buffer_data;
	logic 															set_base_buffer_data;

	// FF for Base Buffer Instructions:
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				base_buffer_instr = 0;
			else if (set_base_buffer_instr)
				base_buffer_instr = new_base_instr;

	// FF for Base Buffer Data:
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				base_buffer_data = 0;
			else if (set_base_buffer_data)
				base_buffer_data = new_base_data;
		
	// Bound Buffer Logic: Instruction & Data
		assign bound_buffer_instr = base_buffer_instr + i_slice_size;
		assign bound_buffer_data	= base_buffer_data 	+ d_slice_size;

// To select cache ways (ME) 
	logic [num_i_ways-1:0] i_way_sel;
	logic [num_d_ways-1:0] d_way_sel;

// & actually write to them (WE)
	logic [num_i_ways-1:0] i_way_we;
	// D-Cache wrapper can use d_way_sel and internal logic to prevent bad writes.
	logic [num_d_ways-1:0] d_way_override;
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

	// I-Cache Instantiation: BOZO: Need to do this in the For Loop
	i_cache_v2 #(
		.i_slice_size(i_slice_size)
		) i_slice_inst
		(
			// Universal Signals
			.clk(clk										),
			.rst_n(rst_n								),
			// SRAM control Signals
			.data_enable(1'b1						),
			.data_read(~i_way_we[0]			),
			// SRAM Inputs & Outputs
			.ram_address(i_cache_addr		),
			.ram_store(i_cache_store		),
			.ram_fetch(i_way_out[0]			)
		);

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
	
	// // D-Cache Bus
	// assign d_cache_store       = (cache_enable | cache_enable_ff) ? (data_store) 		: (32'h0);
	// assign d_cache_addr        = (cache_enable | cache_enable_ff) ? (data_address) 	: (32'h0);

	d_cache_v2 #(
			.d_slice_size(d_slice_size)
		) d_slice_inst
		(
			// Universal Signals
			.clk            (clk                ),	// Need SRAM Clock Gating too
			.rst_n          (rst_n              ),
			// Memory Enable/Read/Write Signals
			.data_enable    (d_cache_hit[0] | d_cache_hit_ff[0]),
			.data_read      (data_read | ((~d_way_override[0]) & use_d_way_override)),
			.mem_wstrb      (mem_wstrb          ),
			// Input Output Buses
			.ram_store      (d_cache_store      ),
			.ram_fetch      (d_way_out[0]       ),
			.ram_address    (d_cache_addr			  )
		);

// BB for I-cache // BOZO: Need to wrap this in a For Loop
	always_ff @(posedge clk, negedge rst_n)
		if (~rst_n)
				begin
					i_base[0]    <= '1;
					i_bound[0]   <= '1;
				end
		else if (set_i_base[0])
			begin
				i_base[0]    <= base_buffer_instr;
				i_bound[0]   <= bound_buffer_instr;
			end

// BB For D-Cache // BOZO: Need to wrap this in a For Loop
	always_ff @(posedge clk, negedge rst_n)
		if (~rst_n)
			begin
				d_base[0]    <= 32'h0003E000;		// BOZO Need to find the right Address
				d_bound[0]   <= 32'h00040000;
			end
		else if (set_d_base[0])
			begin
				d_base[0]    <= base_buffer_data;
				d_bound[0]   <= bound_buffer_data;
			end

// Cache Hit Checkers // BOZO: Need to wrap this in a For Loop
    // I-Cache
			assign i_cache_hit[0] = (pc_fetch >= i_base[0]) && (pc_fetch < i_bound[0]);
    // D-Cache
			assign d_cache_hit[0] = (data_address >= d_base[0]) && (data_address < d_bound[0]);
		// assign d_cache_hit = '1;
	
	assign i_cache_miss_active 	= ~|i_cache_hit;
	assign d_cache_miss_active 	= (~|d_cache_hit) && (cache_enable | cache_enable_ff);

// Cache Hits Flopped, to select correct SRAM data: Both I & D
	always_ff @(posedge clk, negedge rst_n)
		if (~rst_n)
			{d_cache_hit_ff, i_cache_hit_ff} <= 0;
		else
			{d_cache_hit_ff, i_cache_hit_ff} <= {d_cache_hit, i_cache_hit};

// FSM Stuff
	typedef enum reg [3:0] { IDLE, I_MISS, D_MISS, BUBBLE, WR_BK, WAY_SEL, LOCK_BB, FETCH, UPD_BB1, UPD_BB2 } iFSM;
	iFSM iSTATE, iNEXT_STATE;

	// State Machine FF
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				iSTATE = IDLE;
			else if (dis_i_cache)
				iSTATE = IDLE;
			else
				iSTATE = iNEXT_STATE;

// L2 Helpers
	logic [i_addr_width:0] fetch_count_instr;
	logic [d_addr_width:0] fetch_count_data;
	logic enable_counter_data;
	logic enable_counter_instr;
	logic clr_fetch_count_instr;
	logic clr_fetch_count_data;

	// // Need a 32 bit logic as well for that case.
	// High Low Bufferring can be done later. For V1, just use the WEM. 
	// logic [63:0] 	l2_line_buffer;
	// logic [31:0] 	l2_high_buffer;
	// logic 				set_l2_low_buffer;
	// logic [31:0] 	l2_low_buffer;
	logic 				l2_full_word_ready;

	// For storing two words, just hold the L2 SRAM at the same effective line. 
	// Later, we can clock gate after the first access to save power. 
	logic 				update_l2_address;
	logic [31:0] 	l2_address_ff;
	logic [31:0] 	l2_base_buffer;

	assign l2_base_buffer = (d_cache_miss_active) ? (base_buffer_data) 	: 
													(i_cache_miss_active) ? (base_buffer_instr) : 
																									(l2_address);

	// FEATURE DEFERRED
	// // L2 32 Bit L2 Low Buffer
	// 	always_ff @(posedge clk, negedge rst_n)
	// 		begin
	// 			if (~rst_n)
	// 				l2_low_buffer <= 0;
	// 			else if (set_l2_low_buffer)
	// 				l2_low_buffer <= 0;
	// 		end

	// // L2 Full Line Buffer
	// assign l2_line_buffer = {l2_high_buffer, l2_low_buffer};
	 
	// Fetch Counter: To count upto Size of L1 Instruction Caches.
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				fetch_count_instr <= 0;
			else if (clr_fetch_count_instr)
				fetch_count_instr <= 0;
			else if (enable_counter_instr)
				fetch_count_instr <= fetch_count_instr + 1;

	// Fetch Counter: To count upto Size of L1 Data Caches.
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				fetch_count_data <= 0;
			else if (clr_fetch_count_data)
				fetch_count_data <= 0;
			else if (enable_counter_data)
				fetch_count_data <= fetch_count_data + 1;

	// L2 Address Buffer (Auto Increment on Odd Address, because 64 bit Shift Reg ready)
		always_ff @(posedge clk, negedge rst_n)
			if (~rst_n)
				l2_address <= 0;
			else if (dis_i_cache)
				l2_address <= pc_fetch;
			else if (update_l2_address)
				l2_address <= l2_base_buffer;
			else if (l2_full_word_ready)
				// l2_address <= l2_address + 8;
				l2_address <= l2_address + 4;
	
	// L2 Address Buffer Flopped, to fill the Caches properly
		always_ff @(posedge clk, negedge rst_n)
				if (~rst_n)
					l2_address_ff <= 0;
				else
					l2_address_ff <= l2_address;

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
				// Bubble Defaults
				clr_bubble_count    	= 1;
				core_bubble         	= 0;
				
				// L2 Helper Defaults
				clr_fetch_count_instr	= 1;
				clr_fetch_count_data	= 1;
				enable_counter_instr	= 0;
				enable_counter_data		= 0;
				update_l2_address 		= 0;
				l2_full_word_ready		= 0;	// Possible BOZO // DEFERRED
				l2_store							= 0;
				l2_high_bit_enable		= 0;
				
				fsm_clk_en          = 0;
				
				set_i_base          = 0;
				set_i_bound         = 0;
				set_d_base          = 0;
				set_d_bound         = 0;

				new_base_instr			= 0;
				new_page_instr	    = (pc_fetch[31:i_addr_width]); 			// Should work
				
				new_base_data       = 0;
				new_page_data				= (d_cache_addr[31:d_addr_width]);	// Should work

				set_base_buffer_instr	= 0;
				set_base_buffer_data	= 0;

				i_way_sel           = i_cache_hit;
				d_way_sel           = d_cache_hit;
				use_d_way_override  = 0;

				i_way_we            = 0;

				i_cache_store       = (l2_address_ff[1]) ? (l2_fetch[63:32]) : (l2_fetch[31:0]);
				i_cache_addr        = pc_fetch;

				d_cache_store       = (cache_enable | cache_enable_ff) ? (data_store) 	: (32'h0);
				d_cache_addr        = (cache_enable | cache_enable_ff) ? (data_address) : (32'h0);

				iNEXT_STATE         = iSTATE;
			
	// Casex Block for State Machine
			casex (iSTATE)
				IDLE    : 
					begin
						iNEXT_STATE = (d_cache_miss_active && cache_enable) ? (D_MISS) : (i_cache_miss_active) ? (I_MISS) : (IDLE); 
						fsm_clk_en  = 1'b1;
					end 
				I_MISS  : 
					begin
						iNEXT_STATE = (BUBBLE);
					end
				D_MISS  : 
					begin
						iNEXT_STATE = (WAY_SEL); 
					end
				BUBBLE  :
					begin
						clr_bubble_count  = 0;
						core_bubble       = 1;
						fsm_clk_en				= 1;
						if (bubble_count == 4)
							iNEXT_STATE     = WAY_SEL;
					end
				WAY_SEL :
					begin
						iNEXT_STATE	= (d_cache_miss_active && cache_enable) ? (WR_BK) : (LOCK_BB);
						if (d_cache_miss_active)
							begin
								set_base_buffer_data 	= 1;
								new_base_data					= {new_page_data, {d_addr_width{1'b0}}};
								d_way_override				= 1;
							end
						else if (i_cache_miss_active)
							begin
								set_base_buffer_instr	= 1;
								new_base_instr				= {new_page_instr, {i_addr_width{1'b0}}};
								i_way_sel							= 1;
							end
					end
				WR_BK  : 
					begin
						// BOZO: No Write Back for now, will get to it later. 
						iNEXT_STATE = (LOCK_BB); // Directly going to Lock BB for now, will come back Write Back
					end
				LOCK_BB :
					begin
						iNEXT_STATE        = FETCH;
						update_l2_address  = 1;
					end
				FETCH   :
					begin
						// l2_full_word_ready 	= l2_address[2];
						// l2_high_bit_enable	= l2_address[2]; 
						l2_full_word_ready		= 1'b1;
						if (d_cache_miss_active)
							begin
								use_d_way_override 		= 1;
								clr_fetch_count_data	= 0;
								enable_counter_data		= 1;
								d_cache_addr 					= l2_address_ff;
								d_cache_store					= (l2_address_ff[2]) ? (l2_fetch[63:32]) : (l2_fetch[31:0]);
								// l2_full_word_ready		= fetch_count_data[0];
								// l2_high_bit_enable		= fetch_count_data[0];

								iNEXT_STATE						= (fetch_count_data == d_words_size) ? (UPD_BB1	) : (FETCH);
								clr_fetch_count_data	= (fetch_count_data == d_words_size) ? (1'b1		) : (1'b0	);
							end
						else if (i_cache_miss_active)
							begin
								i_way_we        			= 1;
								clr_fetch_count_instr	= 0;
								enable_counter_instr	= 1;
								i_cache_addr    			= l2_address_ff;
								i_cache_store   			= (l2_address_ff[2]) ? (l2_fetch[63:32]) : (l2_fetch[31:0]);
								// l2_full_word_ready		= fetch_count_instr[0];
								// l2_high_bit_enable		= fetch_count_instr[0];

								iNEXT_STATE						= (fetch_count_instr == i_words_size) ? (UPD_BB1	) : (FETCH);
								clr_fetch_count_instr	= (fetch_count_instr == i_words_size) ? (1'b1			) : (1'b0	);
							end
					end
				UPD_BB1 :
					begin
						iNEXT_STATE = UPD_BB2;
						if (d_cache_miss_active)
							set_d_base = 1;
						else if (i_cache_miss_active)
							set_i_base = 1;
					end
				UPD_BB2 :
					begin
						iNEXT_STATE = IDLE;
						if (d_cache_miss_active)
							set_d_bound = d_way_override;
						else if (i_cache_miss_active)
							set_i_bound = 1;
					end
				default: iNEXT_STATE = IDLE;
			endcase
		end     : CC_FSM

// assign d_way_override = 4'h0;

assign code_fetch   =   (dis_i_cache) ? (l2_address_ff[2] ? (l2_fetch[63:32]) : (l2_fetch[31:0])) : (i_cache_hit_ff[0]) ? (i_way_out[0]) : (0);

assign data_fetch   =   (mmio_enable)   ? 
                            // (get_dynamic_base   ) ? (dynamic_base)  :
                            // (get_dynamic_bound  ) ? (dynamic_bound) :
                            (get_dis_i_cache    ) ? (dis_i_cache)   :
                            (0) :
                        (cache_enable_ff)  ? 
                            (d_cache_hit_ff[0]) ? (d_way_out[0]) :
                            // (d_cache_hit_ff[1]) ? (d_way_out[1]) :
                            // (d_cache_hit_ff[2]) ? (d_way_out[2]) :
                            // (d_cache_hit_ff[3]) ? (d_way_out[3]) :
                            (0) :
                            (0) ;

assign i_clk_en         = (dis_i_cache) ? (l2_full_word_ready) : (|i_cache_hit);
assign d_clk_en         = (cache_enable) ? (|d_cache_hit) : (1'b1);
assign set_clk_enable   = d_clk_en && i_clk_en && fsm_clk_en;

assign i_cache_miss     = ~i_clk_en;
assign d_cache_miss     = ~d_clk_en;
// assign d_cache_miss     = 0;

// Non Supported Features
assign l2_write_strobe		= 0;
assign l2_write_enable		= 0;
assign l2_clock_enable		= 1;
assign l2_cache_busy			= 1;

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