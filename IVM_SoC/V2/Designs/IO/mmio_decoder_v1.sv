/* 
mmio_decoder_v1.sv
This file is the address decoder for MMIO accesses for IVM SOC V1
*/

module mmio_decoder_v1
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // MMIO Address Bus
        input wire [31:0] data_address,
        input wire [31:0] data_store,
        output logic [31:0] data_fetch,
        input data_read,
        input data_enable,
        // MMIO Vectors Module Selects
        output logic [31:0] mmio_vector,    // To go to every indepdent IO Device // Needs to be pipelined on SOC Top for Muxing
        output logic cache_access,          // To go to Cache Controller to access Cache
        output logic cache_access_ff        // To go to top level MUX to write correct data back
    );

// MMIO Base and Bound Pair
logic [31:0] MMIO_base;
logic [31:0] MMIO_bound;
logic MMIO_RANGE_VALID;
logic MMIO_UPDATE_VALID;
logic is_MMIO;

genvar i;

// Shadow MMIO Base and Bound Pair
logic [31:0] shadow_MMIO_base;
logic [31:0] shadow_MMIO_bound;
logic SHADOW_RANGE_VALID;

// Assign wires to enable MMIO BB updates
logic update_MMIO_base;
logic update_MMIO_bound;
logic read_MMIO_base;
logic read_MMIO_bound;
// These allow programmer to update MMIO fence at boot up or program switch based on hardware.
assign update_MMIO_base     = (data_address == (MMIO_base    ));
assign update_MMIO_bound    = (data_address == (MMIO_base + 4));
assign read_MMIO_base       = (data_address == (MMIO_base + 8));
assign read_MMIO_bound      = (data_address == (MMIO_base + 12));
assign mmio_vector[0]       = ((data_address >= MMIO_base) && (data_address < (shadow_MMIO_base + 16)));

// Programmer can read current MMIO Base and Bound Values
assign data_fetch           = (read_MMIO_base) ? (MMIO_base) : (read_MMIO_bound) ? (MMIO_bound) : (0); 
assign MMIO_UPDATE_VALID    = (MMIO_bound > MMIO_base);

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        begin
            MMIO_base   <= 32'h00200000;  // Default Base is  2 MiB
            MMIO_bound  <= 32'h00400000;  // Default Bound is 4 MiB
        end
    else if (data_enable && ~data_read)
        begin
            if (update_MMIO_base)
                MMIO_base   <= data_store;
            if (update_MMIO_bound)
                MMIO_bound  <= data_store;         
        end

// Shadow MMIO BB Pair prevents bad firmware from bricking the device.
always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        begin
            shadow_MMIO_base    <= 32'h00200000;
            shadow_MMIO_bound   <= 32'h00400000;
        end
    else if (MMIO_UPDATE_VALID)
        begin
            shadow_MMIO_base    <= MMIO_base;
            shadow_MMIO_bound   <= MMIO_bound;
        end

// This goes to Cache Controller to make it's life easier. 
assign SHADOW_RANGE_VALID   = ((data_address >= shadow_MMIO_base)   && (data_address < shadow_MMIO_bound));
assign MMIO_RANGE_VALID     = ((data_address >= MMIO_base)          && (data_address < MMIO_bound)       );
// Cache is enabled for non MMIO regions. Update Valid and Shadow pair ensures bad firmware does not brick SOC.
// Can optimize the logic equation further. Future work.
assign is_MMIO              = (MMIO_UPDATE_VALID) ? (MMIO_RANGE_VALID) : (SHADOW_RANGE_VALID);
assign cache_access         = (~(is_MMIO)) && data_enable;

// Cache Access Signal Flopped for MUX to WB stage of Core.
always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        cache_access_ff <= 1;
    else
        cache_access_ff <= cache_access;

generate
  for (i = 1; i < 32; i = i + 1)
    begin   : mmio_slot
        assign mmio_vector[i] = ((data_address >= shadow_MMIO_base + (i * 1024)) && (data_address < shadow_MMIO_base + ((i + 1) * 1024))) && is_MMIO && data_enable;
    end     :mmio_slot
endgenerate

endmodule