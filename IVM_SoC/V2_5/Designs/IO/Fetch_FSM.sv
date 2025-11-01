module Fetch_FSM
    (
        input wire clk,
        input wire rst_n,
        input wire flush,  // Actually Flush Signal gives correct PC
        // For Instruction Fetch
        input wire [31:0] fetch_address,
        output logic [31:0] instruction,
        output logic stall,
        // For Data Fetch
        input wire [31:0] data_address,
        output logic [31:0] load_data,
        input wire [31:0] write_data,
        // For PicoSoC Interface
        output logic mem_valid,
        output logic mem_instr,
        // Memory Address to Flash
        output logic [31:0] mem_addr,
        // Data to be written to Flash
        output logic [31:0] mem_wdata,
        // From SPI Flash Master
        input wire mem_rdy,
        // Data read from Flash
        input wire [31:0] mem_rdata,
        // To write full words to the Flash
        output logic [3:0] mem_wstrb,
        // Data Read/Write & Enable from CPU
        input wire data_enable,
        input wire data_read
    );

logic [4:0] counter;
logic clear;
// logic clear_ff;
// logic [31:0] flopped_address;
logic [31:0] write_buffer;
logic [31:0] read_buffer_ff;
logic [31:0] read_buffer;
logic flush_reaction;

typedef enum reg [2:0] { IDLE, I_WAIT, I_RDY, READ, WRITE, FLUSH } FSM_States;
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

// always_ff @(posedge clk, negedge rst_n)
//     begin
//         if (~rst_n)
//             clear_ff <= 0;
//         else
//             clear_ff <= clear; 
//     end

// // Logic added: If ever Fetch Address changes between Wait States, reset the counter & start again.
// always_ff @(posedge clk, negedge rst_n)
//     begin
//         if (~rst_n)
//             flopped_address <= 0;
//         else if (counter == 1)
//             flopped_address <= fetch_address;
//     end

// Write Buffer to lock Data to be written out to Flash
always_ff @(posedge clk, negedge rst_n)
    begin
        if (~rst_n)
            write_buffer <= 0;
        else if (data_enable & ~data_read)
            write_buffer <= write_data; 
    end

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        read_buffer_ff <= 0;
    else if (curr_state == READ && mem_rdy)
        read_buffer_ff <= read_buffer;

// FSM Logic
always_comb
    begin
        // Defaults
        next_state = curr_state;
        clear = 0;
        stall = 1;
        instruction = 0;
        mem_valid = 1;
        mem_instr = 1;
        mem_wstrb = 0;
        mem_addr  = fetch_address;
        read_buffer = 0;
        // flush_reaction = 0;
        
        casex (curr_state)
            IDLE:
                begin
                    clear = 1;
                    mem_valid = 0;
                    mem_instr = 0;
                    next_state = I_WAIT;
                end
            I_WAIT:
                begin
                    if (flush)
                        begin
                           next_state = FLUSH;
                           clear = 1;
                           mem_valid = 0;
                        end
                    else if (data_enable)
                        begin
                            clear = 1;
                            mem_valid = 0;
                            if (data_read)
                                next_state = READ;
                            else 
                                next_state = WRITE;
                        end
                    else if (counter < 2)
                        next_state = I_WAIT;
                    else if (mem_rdy)
                        next_state = I_RDY;
                    else
                        next_state = I_WAIT;
                end
            I_RDY: 
                begin
                    stall = 0;
                    mem_valid = 0;
                    mem_instr = 0;
                    instruction = mem_rdata;
                    clear = 1;
                    next_state = I_WAIT;
                end
            READ:
                begin
                    clear = 1;
                    mem_instr = 0;
                    mem_addr = data_address;
                    mem_valid = 1;
                    if (mem_rdy)
                        begin
                            next_state = I_RDY;
                            mem_valid = 0;
                            stall = 0;
                            read_buffer = mem_rdata;
                        end
                end
            WRITE:
                begin
                    clear = 1;
                    mem_instr = 0;
                    mem_valid = 0;
                    mem_addr = data_address;
                    mem_wdata = write_buffer;
                    // Strobe to always write 32 bits to Flash
                    mem_wstrb = 4'b1111;
                    if (mem_rdy)
                        begin
                            next_state = I_RDY;
                            mem_valid = 0;
                            stall = 0;
                        end
                end
            FLUSH:
                begin
                    mem_valid = 0;
                    next_state = I_WAIT;
                    mem_instr = 1;
                    clear = 1;
                end
            default: next_state = IDLE; 
        endcase
    end

assign load_data = read_buffer_ff;

endmodule