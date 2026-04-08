/*
l1_way_picker.sv
This module will define the how we pick cache ways for eviction and cache replacement policies
for the L1 cache of the IVM SOC. The Module can work for both the L1 Instruction and Data Caches. 
We have multiple strageties that are defined at compile time, to give us multiple policies. 
For very simple structures, a direct method is given out. 
Other wise, we require more elaborate procedures. 
Output will be the selected way to be evicted, and be a one hot vector. 
*/

module l1_way_picker #(
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
	
endmodule