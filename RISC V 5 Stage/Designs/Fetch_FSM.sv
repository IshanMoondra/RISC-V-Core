module Fetch_FSM
    (
        input wire clk,
        input wire rst_n,
        // For Instruction Fetch
        input wire [31:0] fetch_address,
        input wire [31:0] code_mem_out,
        output logic [31:0] instruction,
        output logic stall,
        // For Data Fetch
        input wire [31:0] data_address,
        input wire [31:0] data_mem_out,
        output logic [31:0] load_data,
        input wire [31:0] write_data
    );

logic [2:0] counter;
logic clear;
logic clear_ff;
logic [31:0] flopped_address;
logic branch;

typedef enum reg [1:0] { IDLE, WAIT, RDY } FSM_States;
FSM_States curr_state, next_state;

always_ff @(posedge clk, negedge rst_n)
    begin : State_FF
        if (!rst_n)
            curr_state <= IDLE;
        else
            curr_state <= next_state; 
    end : State_FF

always_ff @(posedge clk, negedge rst_n)
    begin : Counter
        if (!rst_n)
            counter <= 0;
        else if (clear)
            counter <= 0;
        else
            counter <= counter + 1;
    end : Counter

always_ff @(posedge clk, negedge rst_n)
    begin
        if (~rst_n)
            clear_ff <= 0;
        else
            clear_ff <= clear; 
    end

// Logic added: If ever Fetch Address changes between Wait States, reset the counter & start again.
always_ff @(posedge clk, negedge rst_n)
    begin
        if (~rst_n)
            flopped_address <= 0;
        else if (counter == 0)
            flopped_address <= fetch_address;
    end

assign branch = (flopped_address != fetch_address) & (~clear_ff);

// FSM Logic
always_comb
    begin
        // Defaults
        clear = 0;
        next_state = curr_state;
        instruction = 0;
        stall = 1;
        load_data = 0;

        casex (curr_state)
            IDLE:
                begin
                    clear = 1;
                    next_state = WAIT;
                end
            WAIT:
                begin
                    stall = 1;
                    if (branch)
                            clear = 1;
                    if (counter < 2)
                        next_state = WAIT;
                    else
                        next_state = RDY;
                end
            RDY: 
                begin
                    stall = 0;
                    instruction = code_mem_out;
                    load_data = data_mem_out;
                    clear = 1;
                    next_state = WAIT;
                end
            default: next_state = IDLE; 
        endcase
    end

endmodule