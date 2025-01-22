/*
rv32_ex_mem_queue.sv
This Module implements the EX to MEM stage of the pipeline
*/

module rv32_ex_mem_queue
    (
        // Universal Inputs
        input clk, 
        input rst_n,
        // Input Output Pairs for Data
        input [31:0] alu_res_in,
        input [31:0] bshift_in,
        input [31:0] pc_ret_in,
        input [31:0] data_store_in,
        output logic [31:0] alu_res_out,
        output logic [31:0] bshift_out,
        output logic [31:0] pc_ret_out,
        output logic [31:0] data_store_out,
        // Input Output Pairs for Control
        input [1:0] data_ctrl_in,
        input [2:0] rf_in,
        input pc_hlt_in,
        output logic [1:0] data_ctrl_out,
        output logic [2:0] rf_out,
        output logic pc_hlt_out,
        // Input Output Pair for Current Instruction
        input [31:0] code_in,
        output logic [31:0] code_out
    );

reg [31:0] alu_res_queue;
reg [31:0] bshift_queue;
reg [31:0] pc_ret_queue;
reg [31:0] data_store_queue;
reg pc_hlt_queue;
reg [1:0] data_ctrl_queue;
reg [2:0] rf_queue;
reg [31:0] code_queue;

// Inputs to the Queues
always_ff @( posedge clk, negedge rst_n )
    begin   : EX_MEM
        if (~rst_n)
            begin
                alu_res_queue   <= 0;
                bshift_queue    <= 0;
                pc_ret_queue    <= 0;
                pc_hlt_queue    <= 1;
                data_ctrl_queue <= {1'd0, 1'd1};
                rf_queue        <= {2'd0, 1'd0};
                code_queue      <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
                data_store_queue <= 0;
            end
        else
            begin
                alu_res_queue   <= alu_res_in;
                bshift_queue    <= bshift_in;
                pc_ret_queue    <= pc_ret_in;
                pc_hlt_queue    <= pc_hlt_in;
                data_ctrl_queue <= data_ctrl_in;
                rf_queue        <= rf_in;
                code_queue      <= code_in;
                data_store_queue <= data_store_in;
            end
    end     : EX_MEM

// Outputs from the Queues
always_comb
    begin
        alu_res_out     = alu_res_queue;
        bshift_out      = bshift_queue;
        pc_ret_out      = pc_ret_queue;
        pc_hlt_out      = pc_hlt_queue;
        data_ctrl_out   = data_ctrl_queue;
        rf_out          = rf_queue;
        code_out        = code_queue;
        data_store_out  = data_store_queue;
    end

endmodule
