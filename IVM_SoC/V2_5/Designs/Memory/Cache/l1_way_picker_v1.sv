/*
l1_way_picker_v1.sv
This module will define the how we pick cache ways for eviction and cache replacement policies
for the L1 cache of the IVM SOC. The Module can work for both the L1 Instruction and Data Caches. 
We have multiple strageties that are defined at compile time, to give us multiple policies. 
For very simple structures, a direct method is given out. 
Other wise, we require more elaborate procedures. 
Output will be the selected way to be evicted, and be a one hot vector. 
*/

module l1_way_picker_v1 #(
												parameter int num_ways 			= 1,		// Number of Cache Ways for the associated Cache
												parameter int cache_policy	= 1			// Cache Eviction/Replacement Policy
											) 
											(
												// Universal Signals
												input 	wire 					clk,
												input 	wire 					rst_n,
												// MMIO Interfacing Signals
												input 	wire					mmio_enable,	// Enabled from the Cache Controller, as it is Parent Module
												input		wire					data_read,
												input		wire	[ 4:0]	data_address,	// Local Programmable Features, hence reduced bus. 
												input		wire	[31:0]	data_store,		// CPU to MMIO
												output 	logic [31:0]	data_fetch,		// MMIO to CPU
												// Input from Cache Controller
												input		wire 	[num_ways-1:0]	cache_hit_ff,			// To track which is the most recently used cache way.
												input		wire 	[num_ways-1:0]	cache_way_lock, 	// To track which cache ways are currently locked.
												output	logic	[num_ways-1:0]	cache_way_evict,	// Final Output to the Cache Controller
												// Some additional wires for tracking/Hashing (Future)
												input 	wire	[31:0]	pc_fetch,			// Program Counter Value, useful for Hashing	(FUTURE)
												input 	wire	[31:0]	code_fetch		// Instruction on the Bus, useful for Hashing	(FUTURE)
											);

generate
	case (num_ways)
		1: 
			begin	: Gen_Direct_Mapped
				// Only 1 Way, thus direct solution. 
				direct_mapped_replacement iDirect_Mapped
					(
						// Universal Signals
						.clk(clk),
						.rst_n(rst_n),
						// MMIO Interfacing Signals
						.mmio_enable(mmio_enable),
						.data_read(data_read),
						.data_address(data_address),
						.data_store(data_store),
						.data_fetch(data_fetch),
						// Main Output for the Cache Controller
						.cache_way_evict(cache_way_evict)
					);
			end		: Gen_Direct_Mapped
		2:
			begin	: Gen_Two_Sets
				// 2 Ways, so Non MRU is LRU policy, easy. 
				// However, needs to look at the cache locks. 
				two_way_replacement iTwo_Way
					(
						// Universal Signals
						.clk							(clk							),
						.rst_n						(rst_n						),
						// MMIO Interfacing Signals
						.mmio_enable			(mmio_enable			),
						.data_read				(data_read				),
						.data_address			(data_address			),
						.data_store				(data_store				),
						.data_fetch				(data_fetch				),
						// Main Output for the Cache Controller
						.cache_hit_ff			(cache_hit_ff			),
						.cache_way_lock		(cache_way_lock		),
						.cache_way_evict	(cache_way_evict	)
					);
			end 	: Gen_Two_Sets
		3: 
			begin	: Gen_Three_Sets
				// OOF. Need to really think for N > 2. 
				initial $error("BOZO, Need to do this! Num_Ways = %0d", num_ways);
			end		: Gen_Three_Sets
		default: 
			begin	: Gen_Invalid
				initial $error("Unsupported number of Ways = %0d", num_ways);
			end		: Gen_Invalid
	endcase
endgenerate
endmodule

// Module for Direct Mapped Replacement Policy. Pretty simple. 
	module direct_mapped_replacement 
		(
			// Universal Signals
			input 	wire 					clk						,
			input 	wire 					rst_n					,
			// MMIO Interfacing Signals
			input 	wire					mmio_enable		,		// Enabled from the Cache Controller, as it is Parent Module
			input		wire					data_read			,
			input		wire	[ 4:0]	data_address	,		// Local Programmable Features, hence reduced bus. 
			input		wire	[31:0]	data_store		,		// CPU to MMIO
			output 	logic [31:0]	data_fetch		,		// MMIO to CPU
			// Input from Cache Controller
			output	logic	cache_way_evict						// Final Output to the Cache Controller
		);

		// Direct Mapped Cache, thus has no need to think. 
		assign cache_way_evict = 1'b1;
		
		wire get_replacement_policy	;
		wire set_replacement_policy	;
		wire get_mru_way						;
		wire get_next_evict_way			;

		assign get_mru_way 						= (mmio_enable) && (data_address == 5'd00);
		assign get_next_evict_way 		= (mmio_enable) && (data_address == 5'd04);
		assign get_replacement_policy	= (mmio_enable) && (data_address == 5'd08);
		assign set_replacement_policy	= (mmio_enable) && (data_address == 5'd12);

		assign data_fetch       			=   (mmio_enable && data_read) ? 
																					(get_mru_way						)  ? (32'd1)
																				: (get_next_evict_way			)  ? (32'd1)
																				: (get_replacement_policy	)  ? (32'd0)
																				: (32'h0)
																				:	(32'h0);
	endmodule

// Module for Two Way Cache Replacement Policy. ~MRU = LRU. And Lock checking. 
	module two_way_replacement 
		(
			// Universal Signals
			input 	wire 					clk						,
			input 	wire 					rst_n					,
			// MMIO Interfacing Signals
			input 	wire					mmio_enable		,		// Enabled from the Cache Controller, as it is Parent Module
			input		wire					data_read			,
			input		wire	[ 4:0]	data_address	,		// Local Programmable Features, hence reduced bus. 
			input		wire	[31:0]	data_store		,		// CPU to MMIO
			output 	logic [31:0]	data_fetch		,		// MMIO to CPU
			// Input from Cache Controller
			input		wire 	[1:0]	cache_hit_ff		,		// To track which is the most recently used cache way.
			input		wire 	[1:0]	cache_way_lock	, 	// To track which cache ways are currently locked.
			output	logic	[1:0]	cache_way_evict			// Final Output to the Cache Controller
		);
		
		logic [1:0] mru_tracker			;
		logic [1:0] lru_tracker			;
		logic [1:0] available_ways	;
		logic [1:0] valid_ways			;

		always_ff @( posedge clk, negedge rst_n ) 
			begin : MRU_TRACKER
				if (~rst_n)
					mru_tracker <= 1;
				else if (cache_hit_ff[0])
					mru_tracker <= 1;
				else if (cache_hit_ff[1])
					mru_tracker <= 2;
			end	 	: MRU_TRACKER
		
		assign lru_tracker 		= ~mru_tracker		;
		assign available_ways	= ~cache_way_lock	;
		assign valid_ways			= lru_tracker & available_ways	;

		always_ff @(posedge clk, negedge rst_n)
			begin
				if (~rst_n)
					cache_way_evict <= 1;
				else if (|valid_ways)
					cache_way_evict	<= valid_ways;
				else if (cache_way_lock[0])
					cache_way_evict <= 2;
				else if (cache_way_lock[1])
					cache_way_evict <= 1;
			end

		// MMIO Stuff.
		wire get_replacement_policy	;
		wire set_replacement_policy	;
		wire get_mru_way						;
		wire get_next_evict_way			;

		assign get_mru_way 						= (mmio_enable) && (data_address == 5'd00);
		assign get_next_evict_way 		= (mmio_enable) && (data_address == 5'd04);
		assign get_replacement_policy	= (mmio_enable) && (data_address == 5'd08);
		assign set_replacement_policy	= (mmio_enable) && (data_address == 5'd12);

		assign data_fetch       			=   (mmio_enable && data_read) ? 
																					(get_mru_way						)  ? ({30'h0, mru_tracker}		)
																				: (get_next_evict_way			)  ? ({30'h0, cache_way_evict})
																				: (get_replacement_policy	)  ? (32'd1										)
																				: (32'h0)
																				:	(32'h0);
	endmodule