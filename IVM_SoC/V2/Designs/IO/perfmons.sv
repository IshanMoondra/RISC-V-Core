/*
perfmons.sv
This file contains the Performance Monitoring Timers & Counters for IVM SOC V1
*/

module perfmons
    (
			input soc_clk,
			input core_clk,
			input rst_n,
			input i_miss,
			input perfmons_enable,
			input non_nop_retired,
			input [6:0] addr_bus,
			input [31:0] data_store,
			output logic [31:0] data_fetch,
			output logic watchdog_panic,
			output logic dis_sram_gater 
    );

// Actual Timers/Counters
reg [63:0] soc_cycle_counter;
reg [63:0] core_cycle_counter;
reg [63:0] watchdog_threshold;

reg [31:0] programmable_scaler;
reg [31:0] programmable_timer;
reg [31:0] programmable_scaler_counter;
reg [31:0] programmable_timer_counter;

reg [31:0] perfmon_status;
reg [31:0] i_miss_counter;
reg [31:0] non_nop_retired_counter;

// Enables for various counters.
logic global_enable;
logic scalar_enable;
logic timer_enable;
logic retired_enable;
logic miss_enable;

// Overflow & Done bits for various Counters
logic soc_overflow;
logic core_overflow;
logic miss_overflow;
logic retired_overflow;

logic timer_complete;

// Setters for Programmable Timers
logic set_perfmon_status;
logic set_programmable_scalar;
logic set_programmable_timer;

logic set_watchdog_high;
logic set_watchdog_low;
logic pet_watchdog;

logic update_timer;
logic timer_done;

logic set_dis_sram_gater;
logic get_dis_sram_gater;

// Getters for Programmable Reads
logic get_soc_cycles_high;
logic get_soc_cycles_low;

logic get_core_cycles_high;
logic get_core_cycles_low;

logic get_watchdog_high;
logic get_watchdog_low;

logic get_programmable_scalar;
logic get_programmable_timer;

logic get_i_miss_count;
logic get_retired_count;

logic get_perfmon_status;

// Panic Watchdog Threshold Register
always_ff @( posedge core_clk, negedge rst_n)
	begin
		if (~rst_n)
			watchdog_threshold <= 64'd10000000;
		else if (set_watchdog_high)
			watchdog_threshold[63:32] <= data_store;
		else if (set_watchdog_low)
			watchdog_threshold[31:0] <= data_store;
	end

// SR FF for Watchdog Panic
always_ff @( posedge soc_clk, negedge rst_n )
	begin
		if (~rst_n)
			watchdog_panic <= 0;
		else if (pet_watchdog)
			watchdog_panic <= 0;
		else if (soc_cycle_counter == watchdog_threshold)
			watchdog_panic <= 1;
	end

// Always on SOC Cycle Counter: Since Power On Reset
always_ff @( posedge soc_clk, negedge rst_n )
	begin : soc_cycles
		if (~rst_n)
			soc_cycle_counter <= 0;
		else
			soc_cycle_counter <= soc_cycle_counter + 1;
	end 	: soc_cycles

// Gated Clock Core Cycle Counter: Since Power On Reset
always_ff @( posedge core_clk, negedge rst_n )
	begin : core_cycles
		if (~rst_n)
			core_cycle_counter <= 0;
		else
			core_cycle_counter <= core_cycle_counter + 1;
	end 	: core_cycles

// Programmable Scalar Register
always_ff @( posedge soc_clk, negedge rst_n)
	begin : Programmable_Scalar
		if (~rst_n)
			programmable_scaler <= 0;
		else if (scalar_enable)
		begin
			if (set_programmable_scalar)
				programmable_scaler <= data_store;
		end
		else if (~scalar_enable)
			programmable_scaler <= 0;
	end		: Programmable_Scalar

// Programmable Timer Register
always_ff @( posedge soc_clk, negedge rst_n)
	begin : Programmable_Timer
		if (~rst_n)
			programmable_timer <= 0;
		else if (timer_enable)
			begin 
				if (set_programmable_timer)
					programmable_timer <= data_store;
			end
		else if (~timer_enable)
			programmable_timer <= 0;
	end		: Programmable_Timer

assign update_timer = (programmable_scaler == 0) ? (1'b1) : (programmable_scaler_counter == programmable_scaler);
assign timer_done 	= (programmable_timer_counter == programmable_timer);

// Scalar Timer Counter: Runs on SOC Clock
always_ff @( posedge soc_clk, negedge rst_n)
	begin : Scalar_Counter
		if (~rst_n)
			programmable_scaler_counter <= 0;
		else if (scalar_enable)
		begin
			if (set_programmable_scalar | update_timer)
			programmable_scaler_counter <= 0;
			else
			programmable_scaler_counter <= programmable_scaler_counter + 1;
		end
	end		: Scalar_Counter

// Programmable Timer Counter: Runs on SOC Clock
always_ff @( posedge soc_clk, negedge rst_n)
	begin : Timer_Counter
		if (~rst_n)
			programmable_timer_counter <= 0;
		else if (timer_enable)
		begin
			if (update_timer)
			programmable_timer_counter <= programmable_timer_counter + 1;
		end
		else if (timer_done | ~timer_enable)
			programmable_timer_counter <= 0;
	end		: Timer_Counter

// I-Miss Counter: Runs on Core Clock so that I don't need to change the always on signal into a edge detector
always_ff @( posedge core_clk, negedge rst_n)
	begin
		if (~rst_n)
			i_miss_counter <= 0;		
		else if (miss_enable)
			begin
				if (i_miss)
					i_miss_counter <= i_miss_counter + 1;
			end
		else if (~miss_enable)
			i_miss_counter <= 0;
	end

// Non NOP Retired Instruction Counter
always_ff @( posedge core_clk, negedge rst_n)
	begin
		if (~rst_n)
			non_nop_retired_counter <= 0;
		else if (retired_enable)
			begin
				if (non_nop_retired)
					non_nop_retired_counter <= non_nop_retired_counter + 1;
			end
		else if (~retired_enable)
			non_nop_retired_counter <= 0;
	end

// Timer Complete SR FF
always_ff @( posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			timer_complete <= 0;
		else if (timer_done & timer_enable)
			timer_complete <= 1;
		else if (set_programmable_timer | ~timer_enable)
			timer_complete <= 0;
	end

// Assigning Overflow conditions
assign soc_overflow 		= &soc_cycle_counter;
assign core_overflow 		= &core_cycle_counter;
assign miss_overflow		= &i_miss_counter;
assign retired_overflow	= &non_nop_retired_counter;

// Perfmon Status Register
always_ff @( posedge soc_clk, negedge rst_n)
	begin
		if (~rst_n)
			perfmon_status <= '1;
		else if (set_perfmon_status)
			perfmon_status[15:0] <= data_store[15:0];
		else
			begin
				perfmon_status[16]	<= global_enable;
				perfmon_status[17]	<= scalar_enable;
				perfmon_status[18]	<= timer_complete;
				perfmon_status[19] 	<= miss_enable;
				perfmon_status[20] 	<= retired_enable;
				perfmon_status[21] 	<= update_timer;
				if (soc_overflow)
					perfmon_status[24] <= ~perfmon_status[24];
				if (core_overflow)
					perfmon_status[25] <= ~perfmon_status[25];
				if (miss_overflow)
					perfmon_status[26] <= ~perfmon_status[26];
				if (retired_overflow)
					perfmon_status[27] <= ~perfmon_status[27];
			end
	end

// Disable SRAM Gater Register
always_ff @( posedge core_clk, negedge rst_n)
	begin
		if (~rst_n)
			dis_sram_gater <= 0;
		else if (set_dis_sram_gater)
			dis_sram_gater <= data_store[0];
	end

assign global_enable 	= perfmon_status[0];
assign scalar_enable	= perfmon_status[1] && global_enable;
assign timer_enable		= perfmon_status[2] && global_enable;
assign miss_enable		= perfmon_status[3] && global_enable;
assign retired_enable = perfmon_status[4] && global_enable;

// Setter & Getter Address Decoding
assign set_perfmon_status 			= perfmons_enable && (addr_bus == 7'h00);
assign set_programmable_scalar	= perfmons_enable && (addr_bus == 7'h04);
assign set_programmable_timer		= perfmons_enable && (addr_bus == 7'h08);

assign get_perfmon_status				= perfmons_enable && (addr_bus == 7'h0C);

assign get_soc_cycles_high			= perfmons_enable && (addr_bus == 7'h10);
assign get_soc_cycles_low				= perfmons_enable && (addr_bus == 7'h14);

assign get_core_cycles_high			= perfmons_enable && (addr_bus == 7'h18);
assign get_core_cycles_low			= perfmons_enable && (addr_bus == 7'h1C);

assign get_programmable_scalar	= perfmons_enable && (addr_bus == 7'h20);
assign get_programmable_timer		= perfmons_enable && (addr_bus == 7'h24);

assign get_i_miss_count					= perfmons_enable && (addr_bus == 7'h28);
assign get_retired_count				= perfmons_enable && (addr_bus == 7'h2C);

assign pet_watchdog							= perfmons_enable && (addr_bus == 7'h30);
assign set_watchdog_high	 			= perfmons_enable && (addr_bus == 7'h34);
assign set_watchdog_low					= perfmons_enable && (addr_bus == 7'h38);

assign get_watchdog_high	 			= perfmons_enable && (addr_bus == 7'h3C);
assign get_watchdog_low					= perfmons_enable && (addr_bus == 7'h40);

assign set_dis_sram_gater				= perfmons_enable && (addr_bus == 7'h44);
assign get_dis_sram_gater				= perfmons_enable && (addr_bus == 7'h48);

// Final MMIO Output Mux
assign data_fetch	= 	(perfmons_enable) ? 
												(get_perfmon_status) 			? (perfmon_status) 						:
												(get_soc_cycles_high) 		? (soc_cycle_counter[63:32]) 	:						
												(get_soc_cycles_low) 			? (soc_cycle_counter[31:0]) 	:
												(get_core_cycles_high) 		? (core_cycle_counter[63:32]) :
												(get_core_cycles_low) 		? (core_cycle_counter[31:0]) 	:
												(get_programmable_scalar) ? (programmable_scaler) 			:
												(get_programmable_timer) 	? (programmable_timer) 				:
												(get_i_miss_count) 				? (i_miss_counter) 						:
												(get_retired_count) 			? (non_nop_retired_counter)		:
												(get_watchdog_high)				?	(watchdog_threshold[63:32])	:
												(get_watchdog_low)				?	(watchdog_threshold[31:0])	:
												(get_dis_sram_gater)			? (dis_sram_gater)						:
												(0) : 
											(0);

endmodule
