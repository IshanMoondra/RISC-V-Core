/*
branch_resolver.sv
This module resolves all branch instructions in the Decode stage of the pipeline.
Attempting certain optimizations to minimize critical path delays.
This module contains the special forwarding logic, required muxes, and the comparator as well. 
*/

module branch_resolver_v2
    (
        input wire clk,
        input wire rst_n,
        input wire [31:0] code_bus,     // From IF/ID stage: To detect Branch Instruction
        input wire [31:0] rf_reg_s1,    // From RF directly
        input wire [31:0] rf_reg_s2,    // From RF directly
        output logic branch             // To PC
    );

// Internal Signals
logic is_branch;
logic take_branch;
logic equal;
logic [6:0] opcode;
logic [2:0] funct3;

// Internal Comparator Signals
logic branchA;
logic branchB;
logic branchC;
logic branchD;
logic [31:0] comp_res;
logic comp_res_ff;
logic [4:0] comp_sel;

// Just use parameters
localparam BrOp = 7'b1100011;
localparam BEQ  = 3'b000;
localparam BNE  = 3'b001;
localparam BGT  = 3'b101;
localparam BLT  = 3'b100;
localparam BGTU = 3'b111;
localparam BLTU = 3'b110;
localparam JAL  = 7'b1101111;
localparam JALR = 7'b1100111;

// Setting up local wires for ease of readability.
assign opcode       = code_bus[6:0];
assign funct3       = code_bus[14:12];

// Is a Branch Instruction if opcodes match
assign is_branch = (opcode == BrOp);
assign branchD = ((opcode == JAL) | (opcode == JALR));

// Select comparator result based on Funct3 Field.
assign branchA = ((funct3 == BLT) | (funct3 == BGT));
assign branchB = ((funct3 == BLTU) | (funct3 == BGTU));
assign branchC = ((funct3 == BEQ) | (funct3 == BNE));

// Comparator
assign equal = (rf_reg_s1 == rf_reg_s2);

// Setting Comparator Inputs
assign comp_sel = (branchA) ? (6'd5) : (branchB) ? (6'd6) : (6'd0);

// Instantiating the Comparator
rv32_alu_comp iBrComp
    (
        .opA(rf_reg_s1),
        .opB(rf_reg_s2),
        .alu_opsel(comp_sel),
        .result(comp_res)
    );

always_ff @(posedge clk)
    comp_res_ff <= comp_res[0];

always_comb
    begin
        casex (funct3)
            BEQ : take_branch = equal;
            BNE : take_branch = ~equal;
            BLT : take_branch = comp_res_ff;
            BLTU: take_branch = comp_res_ff;
            BGT : take_branch = ~comp_res_ff;
            BGTU: take_branch = ~comp_res_ff;
            default: take_branch = 0;
        endcase
    end

// Final Output stage
// Default to False whenever non branch instruction + latch safe.
// assign branch = (is_branch) ? (take_branch | branchD) : (1'b0);

always_ff @(posedge clk, negedge rst_n)
    if (!rst_n)
        branch <= 0;
    else
        branch <= (is_branch) ? (take_branch | branchD) : (1'b0);

endmodule