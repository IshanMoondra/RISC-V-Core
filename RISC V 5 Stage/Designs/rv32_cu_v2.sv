`timescale 1ns / 1ps
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
//  Company: 
//  Engineer: 
//  
//  Create Date: 11.11.2023 16:51:42
//  Design Name: 
//  Module Name: rv32_cu
//  Project Name: 
//  Target Devices: 
//  Tool Versions: 
//  Description: 
//  
//  Dependencies: 
//  
//  Revision:
//  Revision 0.01 - File Created
//  Additional Comments:
//  
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
// Let's create a Queue where we store preserve the Code Data bus so that if we encounter an Immediate instruction
// we can store the value of the entire code data bus onto this queue, allowing for our Pipeline to continuously run.
// We need to create a top level module that initialises all the modules, and their queues since the pipelined nature
// of the processor means that the Control Unit is not the entire master of the processor. 

module rv32_cu_v2
    (
        // Input from IF/ID Queue
        input [31:0] code_bus,
        // Register Select Outputs to Register File
        output logic [4:0] sel_rs1,
        output logic [4:0] sel_rs2,
        output logic [4:0] sel_rd1,
        // Control Outputs to ID/EX Queue
        output logic [2:0] rf_ctrl,
        output logic [4:0] alu_ctrl,
        output logic [3:0] bshift_ctrl,
        output logic [4:0] pc_ctrl,
        output logic [1:0] data_ctrl
    );
    
// Defining some terms for ease of decoding
wire [6:0] opcode;
wire [3:0] funct3;
wire [6:0] funct7;
wire [4:0] assign_rs1;
wire [4:0] assign_rs2;
wire [4:0] assign_rd1;

assign opcode = code_bus[6:0];
assign funct3 = code_bus[14:12];
assign funct7 = code_bus[31:25];
assign assign_rs1 = code_bus[19:15];
assign assign_rs2 = code_bus[24:20];
assign assign_rd1 = code_bus[11:7];

// Control Signals for Register File.
reg [1:0] source_sel_dest;
reg write_reg;

// Control Signals for Program Counter.
logic pc_enable;
reg [2:0] pc_operation_sel;
reg normal_op;

// Control Signals for ALU.
reg alu_enable;
reg [3:0] alu_operation_sel;

// Control Signals for Barrel Shifter.
reg shifter_enable;
reg shifter_logical;
reg shifter_direction;
reg shifter_immediate;

// Control Signals for Data RAM.
reg data_read;
reg data_enable;
//  Removed all Initial blocks

always_comb
begin
    
    // Setting Defaults for all control signals
    source_sel_dest = 0;
    write_reg = 1;
    sel_rs1 = assign_rs1;
    sel_rs2 = assign_rs2;
    sel_rd1 = assign_rd1;

    normal_op = 1;
    pc_enable = ~&(code_bus);    // Halt when Instruction is: 32'hFFFF_FFFF;
    pc_operation_sel = 0;
    
    alu_enable = 0;
    alu_operation_sel = 0;
    
    shifter_enable = 0;
    shifter_logical = 0;
    shifter_direction = 0;
    shifter_immediate = 0;
    
    data_enable = 0;
    data_read = 0;
    
    // Instruction Decode Case Statement
    case (opcode)
        7'b0110011: // R Type Instructions
            begin
                case (funct3) // Funct3 Field
                    0: // Addition/Subtraction Operation
                        begin
                            alu_enable = 1;
                            // The bit in code_bus[30] decides between Addition or Sub operation
                            alu_operation_sel = (code_bus[30]);

                            source_sel_dest = 0;

                        end
                    1: // Shift Left Logical
                        begin
                            shifter_enable = 1;

                            source_sel_dest = 1;
                        end
                    2: // SLT
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 5;

                            source_sel_dest = 0;
                        end
                    3: // SLTu
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 6;
                            
                            source_sel_dest = 0;
                        end
                    4: // XOR
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 4;

                            source_sel_dest = 0;
                        end
                    5: // Shift Right Logical/Arithmetic
                        begin
                            shifter_enable = 1;
                            shifter_direction = 1;
                            shifter_logical = (~code_bus[30]);

                            source_sel_dest = 1;
                        end
                    6: // OR
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 3;

                            source_sel_dest = 0;
                        end
                    7: // AND
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 2;

                            source_sel_dest = 0;
                        end
                endcase
            end
        7'b0010011: // I* & I Execute Type Instruction
            begin
                case (funct3)
                    0: // ADDi
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 7;
                            
                            sel_rs2 = 0;
                            source_sel_dest = 0;
                        end
                    1: // Shift Left Logical Immediate
                        begin
                            shifter_enable = 1;
                            shifter_immediate = 1;
                            
                            sel_rs2 = 0;
                            source_sel_dest = 1;
                        end
                    2: // SLTi
                        begin
                            alu_enable = 1;                    // Enable the ALU
                            alu_operation_sel = 12;            // Select SLTi Operation in ALU.

                            source_sel_dest = 0;               // ALU is the Result Source
                            sel_rs2 = 0;
                        end
                    3: // SLTUi
                        begin
                            alu_enable = 1;                    // Enable the ALU
                            alu_operation_sel = 13;            // Select SLTUi Operation in ALU.

                            sel_rs2 = 0;
                            source_sel_dest = 0;               // ALU is the Result Source
                        end
                    4: // XORi 
                        begin
                            alu_enable = 1;                    // Enable the ALU
                            alu_operation_sel = 11;            // Select XORi Operation in ALU.

                            sel_rs2 = 0;
                            source_sel_dest = 0;               // ALU is the Result Source               
                        end
                    5: // Shift Right Logical/Arithmetic Immediate
                        begin
                            shifter_enable = 1;
                            shifter_direction = 1;
                            shifter_immediate = 1;
                            shifter_logical = (~code_bus[30]);

                            sel_rs2 = 0;
                            source_sel_dest = 1;
                        end
                    6: // ORi 
                        begin
                            alu_enable = 1;                    // Enable the ALU
                            alu_operation_sel = 10;            // Select XORi Operation in ALU.

                            sel_rs2 = 0;
                            source_sel_dest = 0;               // ALU is the Result Source               
                        end
                    7: // ANDi
                        begin
                            alu_enable = 1;
                            alu_operation_sel = 9;

                            sel_rs2 = 0;
                            source_sel_dest = 0;
                        end 
                endcase
            end
        7'b0000011: // Load Instructions
            begin
                casex (funct3)
                    2: // Load Word
                        begin
                            // Address Generation via ALU
                            alu_enable = 1;
                            alu_operation_sel = 0;

                            data_enable = 1;
                            data_read = 1;

                            source_sel_dest = 3;
                            sel_rs2 = 0;
                        end 
                    default: // NOP Operation as other types of Loads are not implemented yet.
                        begin
                            write_reg = 0;
                            sel_rs1 = 0;
                            sel_rs2 = 0;
                            sel_rd1 = 0;
                        end
                endcase
            end
        7'b0100011: // Store Instructions
            begin
                casex (funct3)
                    2: // Store Word
                        begin
                            // Address Generation via ALU
                            alu_enable = 1;
                            alu_operation_sel = 0;  // ALU needs Modification to work

                            data_enable = 1;
                            data_read = 0;

                            write_reg = 0;
                            source_sel_dest = 0;
                            sel_rd1 = 0;
                        end 
                    default: // NOP Operation as other types of Loads are not implemented yet.
                        begin
                            write_reg = 0;
                            sel_rs1 = 0;
                            sel_rs2 = 0;
                            sel_rd1 = 0;
                        end
                endcase
            end
        7'b1100011: // Control Branching Instructions
            begin
                normal_op = 0;
                write_reg = 0;
                sel_rd1 = 0;
                case (funct3)
                    0: pc_operation_sel = 2; // BEQ
                    1: pc_operation_sel = 3; // BNE
                    4: pc_operation_sel = 4; // BLT
                    5: pc_operation_sel = 5; // BGT
                    6: pc_operation_sel = 6; // BLTU
                    7: pc_operation_sel = 7; // BGTU 
                    default: normal_op = 1;
                endcase
            end
        7'b1101111: // Control Jump & Link
            begin
                normal_op = 0;
                pc_operation_sel = 0;
                
                source_sel_dest = 2;
                sel_rs1 = 0;
                sel_rs2 = 0;
            end
        7'b1100111: // Control Jump & Link Register
            begin
                normal_op = 0;                     // Branch Instruction
                pc_operation_sel = 1;              // Selects JALR in the PC.

                sel_rs2 = 0;
                source_sel_dest = 2;               // PC is the Result Source.
            end
        7'b0010111: // AUiPC Instruction
            begin
                alu_enable = 1;                    // Enable the ALU
                alu_operation_sel = 15;            // Select AUiPC Operation in ALU.

                sel_rs1 = 0;
                sel_rs2 = 0;
                source_sel_dest = 0;               // ALU is the Result Source
            end
        7'b0110111: // LUi Instruction
            begin
                alu_enable = 1;                    // Enable the ALU
                alu_operation_sel = 14;            // Select LUi Operation in ALU.

                sel_rs1 = 0;
                sel_rs2 = 0;
                source_sel_dest = 0;               // ALU is the Result Source
            end
        7'b1110011: // Ebreak & Ecall, Not Implemented.
            begin
                sel_rs1 = 0;
                sel_rs2 = 0;
                sel_rd1 = 0;
                
                case(code_bus[20])  // In theory, jump to different addresses depending on this bit.
                0: write_reg = 0;   // Environment Break Instruction. Asks the Debugger to do something.
                1: write_reg = 0;   // Environment Call Instruction. Asks the OS to do something.
                endcase
            end
        default: // To Catch any stray instructions.
            begin
                write_reg = 0;
                sel_rs1 = 0;
                sel_rs2 = 0;
                sel_rd1 = 0;
            end
    endcase
end

assign rf_ctrl      = {source_sel_dest, write_reg};
assign pc_ctrl      = {pc_enable, pc_operation_sel, normal_op};
assign alu_ctrl     = {alu_enable, alu_operation_sel};
assign bshift_ctrl  = {shifter_enable, shifter_logical, shifter_direction, shifter_immediate};
assign data_ctrl    = {data_enable, data_read};
 
endmodule
