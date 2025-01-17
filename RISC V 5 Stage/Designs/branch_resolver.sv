/*
branch_resolver.sv
This module resolves all branch instructions in the Decode stage of the pipeline.
Attempting certain optimizations to minimize critical path delays.
This module contains the special forwarding logic, required muxes, and the comparator as well. 
*/

module branch_resolver
    (
        input wire [31:0] code_bus,     // From IF/ID stage: To detect Branch Instruction
        input wire [31:0] rf_reg_s1,    // From RF directly
        input wire [31:0] rf_reg_s2,    // From RF directly
        input wire [31:0] alu_output,   // From ALU directly
        input wire [4:0] id_ex_reg_d1,  // From ID/EX stage
        output logic branch             // To PC
    );

// Internal Signals
logic is_branch;
logic type_branch;
logic take_branch;
logic equal;
logic [6:0] opcode;
logic [2:0] funct3;
logic [4:0] sel_reg_s1;
logic [4:0] sel_reg_s2;
logic [31:0] operand1;
logic [31:0] operand2;

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
assign sel_reg_s1   = code_bus[19:15];
assign sel_reg_s2   = code_bus[24:20];

// Is a Branch Instruction if opcodes match
assign is_branch = (opcode == BrOp || opcode == JALR || opcode == JAL);

// Select comparator result based on Funct3 Field.
assign type_branch = (funct3 == BEQ || funct3 == BGT || funct3 == BGTU);

// Special Forwarding paths
assign operand1 = ((id_ex_reg_d1 == sel_reg_s1) && (id_ex_reg_d1 != 0)) ? (alu_output) : (rf_reg_s1);
assign operand2 = ((id_ex_reg_d1 == sel_reg_s2) && (id_ex_reg_d1 != 0)) ? (alu_output) : (rf_reg_s2);

// Comparator
assign equal = (operand1 == operand2);

// Take absolute branch if JAL or JALR, else
// If Branch Type is True:
// Check Comparator Result: Equal set means take branch, else normal operation
// Else
// Check Comparator Result: ~Equal set means take branch, else normal operation
assign take_branch = (opcode == JAL || opcode == JALR) ? (1'b1) : (type_branch) ? (equal) : ~(equal);

// Final Output stage
// Default to False whenever non branch instruction.
assign branch = (is_branch) ? (take_branch) : (1'b0);

endmodule