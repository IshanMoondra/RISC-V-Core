/*
rv32_cpu_top.sv
This is the top level module for the RISC V 32I 5 Stage Processor
*/

module rv32_cpu_top
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // Ports for Code Memory
        output wire [31:0] pc_fetch,
        input wire [31:0] code_fetch,
        // Ports for Data Memory
        output wire data_enable,
        output wire data_read,
        output wire [31:0] data_addr,
        output wire [31:0] data_store,
        input wire [31:0] data_fetch,
        // CPU Status Signals
        output wire flush,
        input logic stall,
        output wire busy,
        output wire halt,
        // Output of the CPU
        output logic [31:0] wb_result
    );

// Creating Wires for Fetch/Decode Stage

wire [31:0] decode_code_bus;
wire [31:0] decode_pc;
wire [31:0] decode_pc_ret;
wire pc_branch;

wire [4:0] decode_pc_ctrl;
wire [5:0] decode_alu_ctrl;
wire [3:0] decode_bshift_ctrl;
wire [2:0] decode_rf_ctrl;
wire [1:0] decode_data_ctrl;

wire [4:0] decode_sel_rs1;
wire [4:0] decode_sel_rs2;
wire [4:0] decode_sel_rd1;

wire [31:0] decode_rs1;
wire [31:0] decode_rs2;

// assign decode_sel_rs1 = decode_code_bus[19:15];
// assign decode_sel_rs2 = decode_code_bus[24:20];

// Creating Wires for Decode/Execute Stage

wire [31:0] execute_code_bus;
wire [31:0] execute_pc;
wire [31:0] execute_rs1;
wire [31:0] execute_rs2;
wire [31:0] execute_pc_ret;

wire [5:0] execute_alu_ctrl;
wire [3:0] execute_bshift_ctrl;
wire [1:0] execute_data_ctrl;
wire [2:0] execute_rf_ctrl;
wire execute_pc_hlt;

// Debug Wires
wire [4:0] execute_sel_rs1;
wire [4:0] execute_sel_rs2;
wire [4:0] execute_sel_rd1;
// assign execute_sel_rs1 = execute_code_bus[19:15];
// assign execute_sel_rs2 = execute_code_bus[24:20];
// assign execute_sel_rd1 = execute_code_bus[11:7];

// Wires related to Forwarding Muxes
wire RS1_EX2EX;
wire RS2_EX2EX;
wire RS1_Mem2EX;
wire RS2_Mem2EX;
wire RS1_Mem2Mem;

logic [31:0] operandA;
logic [31:0] operandB;

wire [31:0] execute_alu_res;
wire [31:0] execute_comp_res;
wire [31:0] execute_bshift_res;

// Creating Wires for Execute/Memory Stages

wire [31:0] memory_data_store;
wire [31:0] memory_code_bus;
wire [31:0] memory_pc_ret;
wire [31:0] memory_alu_res;
wire [31:0] memory_bshift_res;

wire [4:0] memory_sel_rd1;

wire [2:0] memory_rf_ctrl;
wire [1:0] memory_data_ctrl;
wire memory_pc_hlt;

// Creating Wires for Memory/WriteBack Stage

wire [31:0] wb_code_bus;
// wire [4:0] wb_sel_reg_d1;
wire [31:0] wb_pc_ret;
wire [31:0] wb_alu_res;
wire [31:0] wb_bshift_res;
wire [31:0] wb_data_res;
wire [4:0] wb_sel_rd1;

wire [2:0] wb_rf_ctrl;
wire wb_pc_hlt;

// assign wb_sel_reg_d1 = wb_code_bus[11:7];

// wire [31:0] wb_result;

// Instantiating the Modules

// Fetch Stage
// Instruction Memory Unit

// Program Counter Module
rv32_pc_v2 iPC
    (
        .clk(clk),
        .rst_n(rst_n),
        .enable(wb_pc_hlt),
        //.enable(1'b1),
        .branch(pc_branch),
        .code_bus(decode_code_bus),
        // .code_bus(code_fetch),
        .reg_s1(decode_rs1),
        // .reg_s1(operandA),
        .normal_op(decode_pc_ctrl[0]),
        .pc_opsel(decode_pc_ctrl[3:1]),
        .busy(stall),    // For Multi Cycle Ops
        // .stall(stall),  // From Fetch FSM
        .return_d1(decode_pc_ret),
        .pc(pc_fetch),
        .flush(flush),
        .halt(halt)
    );

assign busy = 0; // Busy for Multi Cycle Ops // Future Work

// // Program Counter V3
// rv32_pc_v2 iPC
//     (
//         .clk(clk),
//         .rst_n(rst_n),
//         .enable(wb_pc_hlt),
//         .code_bus(decode_code_bus),
//         .reg_s1(decode_rs1),
//         .reg_s2(decode_rs2),
//         .normal_op(decode_pc_ctrl[0]),
//         .pc_opsel(decode_pc_ctrl[3:1]),
//         .busy(busy),
//         .return_d1(decode_pc_ret),
//         .pc(pc_fetch),
//         .flush(flush),
//         .halt(halt)
//     );

// Decode Stage
// IF/ID Stage
rv32_if_id_queue iIF_ID
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .stall(stall),
        .code_in(code_fetch),
        .pc_in(pc_fetch),
        .code_out(decode_code_bus),
        .pc_out(decode_pc)
    );

/*
// Control Unit
rv32_cu iControl
    (
        .code_bus(decode_code_bus),
        .rf_ctrl(decode_rf_ctrl),
        .alu_ctrl(decode_alu_ctrl),
        .bshift_ctrl(decode_bshift_ctrl),
        .pc_ctrl(decode_pc_ctrl),
        .data_ctrl(decode_data_ctrl)
    );
*/

// Control Unit V2
rv32_cu_v2 iControl
    (
        .code_bus(decode_code_bus),
        .sel_rs1(decode_sel_rs1),
        .sel_rs2(decode_sel_rs2),
        .sel_rd1(decode_sel_rd1),
        .rf_ctrl(decode_rf_ctrl),
        .alu_ctrl(decode_alu_ctrl),
        .bshift_ctrl(decode_bshift_ctrl),
        .pc_ctrl(decode_pc_ctrl),
        .data_ctrl(decode_data_ctrl)
    );


// Register File Unit
rv32_register_file iRF
    (
        .clk(clk),
        .rst_n(rst_n),
        // .pc_halt(decode_pc_ctrl[4]),
        .write_reg(wb_rf_ctrl[0]),
        .sel_s1(decode_sel_rs1),
        .sel_s2(decode_sel_rs2),
        // Need to pipeline the sel_rd1 vector. // Done
        .sel_d1(wb_sel_rd1),
        .reg_d1(wb_result),
        .reg_s1(decode_rs1),
        .reg_s2(decode_rs2)
    );

// // Branch Resolution Unit
// branch_resolver iResolver
//     (
//         .code_bus(decode_code_bus),
//         .rf_reg_s1(operandA),
//         .rf_reg_s2(operandB),
//         .alu_output(execute_comp_res),
//         //.alu_output(memory_alu_res),
//         .id_ex_reg_d1(execute_sel_rd1),
//         .branch(pc_branch)
//     );

// Branch Resolution Unit
branch_resolver_v2 iResolver
    (
        .clk(clk),
        .rst_n(rst_n),
        .code_bus(decode_code_bus),
        // .code_bus(code_fetch),
        .rf_reg_s1(decode_rs1),
        .rf_reg_s2(decode_rs2),
        .branch(pc_branch)
    );

// // Hazard Detection Unit
// hazard_detection iHD
//     (
//         .execute_mem_read(&execute_data_ctrl),
//         .decode_sel_rs2(decode_sel_rs2),
//         .decode_sel_rs1(decode_sel_rs1),
//         // Need to pipeline the decode_sel_rd1 vector. // Done
//         .execute_sel_rd1(execute_sel_rd1),
//         .stall(stall)
//     );

// Decode/Execute Stage
rv32_id_ex_queue iID_EX
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .stall(stall),   // ID/EX never stalls in this tape-out.
        .busy(1'b0),    // Will be used later when multicycle ALU comes into play.
        .code_in(decode_code_bus),
        .pc_in(decode_pc),
        .code_out(execute_code_bus),
        .pc_out(execute_pc),
        .rf_rs1_in(decode_rs1),
        .rf_rs2_in(decode_rs2),
        .rf_rs1_out(execute_rs1),
        .rf_rs2_out(execute_rs2),
        .pc_ret_in(decode_pc_ret),
        .pc_ret_out(execute_pc_ret),
        .alu_in(decode_alu_ctrl),
        .alu_out(execute_alu_ctrl),
        .rf_in(decode_rf_ctrl),
        .rf_out(execute_rf_ctrl),
        
        .sel_rs1_in(decode_sel_rs1),
        .sel_rs2_in(decode_sel_rs2),
        .sel_rd1_in(decode_sel_rd1),
        .sel_rs1_out(execute_sel_rs1),
        .sel_rs2_out(execute_sel_rs2),
        .sel_rd1_out(execute_sel_rd1),

        .bshift_in(decode_bshift_ctrl),
        .bshift_out(execute_bshift_ctrl),
        .pc_hlt_in(decode_pc_ctrl[4]),
        .pc_hlt_out(execute_pc_hlt),
        .data_ctrl_in(decode_data_ctrl),
        .data_ctrl_out(execute_data_ctrl)
    );

/*
// Data Forwarding Unit
forwarding_unit iForward
    (
        .ID2EX_RS2(decode_sel_rs2),
        .ID2EX_RS1(decode_sel_rs1),
        .EX2Mem_RS1(execute_sel_rs1),
        .EX2Mem_RD1(execute_sel_rd1),
        .EX2Mem_RegWrite(execute_rf_ctrl[0]),
        .Mem2WB_RegWrite(memory_rf_ctrl[0]),
        .Mem2WB_RD1(memory_sel_rd1),
        // Forwarding Select Signals for MUX
        .RS2_EX2EX(RS2_EX2EX),
        .RS1_EX2EX(RS1_EX2EX),
        .RS2_Mem2EX(RS2_Mem2EX),
        .RS1_Mem2EX(RS1_Mem2EX),
        .RS1_Mem2Mem(RS1_Mem2Mem)
    );
*/

// // Data Forwarding Unit V2
// forwarding_unit_v2 iForward
//     (
//         .clk(clk),
//         .rst_n(rst_n),
//         .decode_sel_rs1(decode_sel_rs1),
//         .decode_sel_rs2(decode_sel_rs2),
//         .execute_sel_rs1(execute_sel_rs1),
//         .memory_sel_rd1(memory_sel_rd1),
//         .execute_reg_write(execute_rf_ctrl[0]),
//         .memory_reg_write(memory_rf_ctrl[0]),
//         .execute_sel_rd1(execute_sel_rd1),
//         // Forwarding Select Signals for MUX
//         .RS2_EX2EX(RS2_EX2EX),
//         .RS1_EX2EX(RS1_EX2EX),
//         .RS2_Mem2EX(RS2_Mem2EX),
//         .RS1_Mem2EX(RS1_Mem2EX),
//         .RS1_Mem2Mem(RS1_Mem2Mem)
//     );

// Forwarding MUXes
// May or may not work // Works one way, not the other
// assign operandA = (RS1_Mem2Mem) ? (wb_data_res) : (RS1_EX2EX) ? (execute_alu_res) : (RS1_Mem2EX) ? (memory_alu_res) : (execute_rs1);
// assign operandB = (RS2_EX2EX) ? (memory_alu_res) : (RS2_Mem2EX) ? (memory_alu_res) : (execute_rs2);

// assign operandA = (RS1_Mem2Mem & execute_data_ctrl[1]) ? (wb_data_res) : (RS1_EX2EX) ? (memory_alu_res) : (RS1_Mem2EX) ? (wb_result) : (execute_rs1);
// assign operandB = (RS2_EX2EX) ? (memory_alu_res) : (RS2_Mem2EX) ? (wb_result) : (execute_rs2);

// always_comb
//     begin
//         // Forwarding for Operands A & B
//         casex ({RS1_EX2EX, RS1_Mem2EX, (RS1_Mem2Mem && data_enable)})
//             3'b1xx: operandA = memory_alu_res;  // EX to EX forwarding takes priority
//             3'b01x: operandA = wb_result;       // Followed by Mem to EX
//             3'b001: operandA = wb_data_res;     // Followed by Mem to Mem (output from Memory Bus)
//             3'b000: operandA = execute_rs1;     // No Forwarding
//         endcase

//         casex ({RS2_EX2EX, RS2_Mem2EX})
//             2'b1x: operandB = memory_alu_res;   // EX to EX
//             2'b01: operandB = wb_result;        // MEM to EX
//             2'b00: operandB = execute_rs2;      // No Forwarding
//         endcase

//         // if (RS1_EX2EX)
//         //     operandA = memory_alu_res;
//         // else if (RS1_Mem2EX)
//         //     operandA = wb_alu_res;
//         // else if (RS1_Mem2Mem & data_enable)
//         //     operandA = wb_data_res;
//         //     // operandA = 32'hX;
//         // else
//         //     operandA = execute_rs1;
        
//         // if (RS2_EX2EX)
//         //     operandB = memory_alu_res;
//         // else if (RS2_Mem2EX)
//         //     operandB = wb_result;
//         // else
//         //     operandB = execute_rs2;
 
//     end

// reg [5:0] memory_alu_ctrl;
// always_ff @(posedge clk)
//     memory_alu_ctrl <= execute_alu_ctrl;

// ALU
rv32_alu_v2 iALU
    (
        // .enable(1'b1),
        // .reg_s1(execute_rs1),
        // .reg_s2(execute_rs2),
        .reg_s1(decode_rs1),
        .reg_s2(decode_rs2),
        .code_bus(execute_code_bus),
        .pc(execute_pc),
        // .enable(decode_alu_ctrl[5]),
        // .alu_opsel(decode_alu_ctrl[4:0]),
        .enable(execute_alu_ctrl[5]),
        .alu_opsel(execute_alu_ctrl[4:0]),
        // .enable(memory_alu_ctrl[5]),
        // .alu_opsel(memory_alu_ctrl[4:0]),
        .reg_d1(execute_alu_res),
        .bshift_ctrl(execute_bshift_ctrl)
    );

// Dedicateed Comparator is moved inside the PC v3
// // Dedicated Comparator for Branch Resolver
// rv32_alu_comp iBrComp
//     (
//         .opA(operandA),
//         .opB(operandB),
//         .alu_opsel(execute_alu_ctrl[4:0]),
//         .result(execute_comp_res)
//     );

/*
// Barrel Shifter is now inside the big ALU module.
// Helps with the forwarding paths. 
// Need to update the source_sel mux in the CU now.
// Barrel Shifter
rv32_barrel_shifter iBarrel
    (
        .enable(execute_bshift_ctrl[3]),
        .logical(execute_bshift_ctrl[2]),
        .direction(execute_bshift_ctrl[1]),
        .immediate(execute_bshift_ctrl[0]),
        .code_bus(execute_code_bus),
        .rs2(operandA),
        .rs1(operandB),
        .rd1(execute_bshift_res)
    );
*/

// Memory Stage
rv32_ex_mem_queue iEX_MEM
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .alu_res_in(execute_alu_res),
        .bshift_in(execute_bshift_res),
        .pc_ret_in(execute_pc_ret),
        .data_store_in(operandB),
        .alu_res_out(memory_alu_res),
        .bshift_out(memory_bshift_res),
        .pc_ret_out(memory_pc_ret),
        .data_store_out(memory_data_store),

        .data_ctrl_in(execute_data_ctrl),
        .rf_in(execute_rf_ctrl),
        .pc_hlt_in(execute_pc_hlt),
        .data_ctrl_out(memory_data_ctrl),
        .rf_out(memory_rf_ctrl),
        .pc_hlt_out(memory_pc_hlt),

        .sel_rd1_in(execute_sel_rd1),
        .sel_rd1_out(memory_sel_rd1),

        .code_in(execute_code_bus),
        .code_out(memory_code_bus)
    );

// Data Memory Unit

reg [1:0] wb_data_ctrl;
always_ff @( posedge clk ) begin : DelayFF
    wb_data_ctrl <= memory_data_ctrl;
end : DelayFF

// // Originally: Data is written to Memory properly, but loading requires some work
// assign data_addr = (memory_data_ctrl[1]) ? (memory_alu_res) : (0);
// // assign data_enable = wb_data_ctrl[1] | memory_data_ctrl[1];
// // assign data_read = wb_data_ctrl[0] | memory_data_ctrl[0];
// assign data_enable = memory_data_ctrl[1];
// assign data_read = memory_data_ctrl[0];
// assign data_store = execute_rs2;
// // assign data_store = memory_data_store;
// // assign data_store = operandB;

// Working Set for Proper Stores + Loads: ALU Execute Error // Works now
assign data_addr = (execute_data_ctrl[1]) ? (execute_alu_res) : (0);
assign data_enable = execute_data_ctrl[1];
assign data_read = execute_data_ctrl[0];
assign data_store = decode_rs2;

// Write Back Stage
rv32_mem_wb_queue iMEM_WB
    (
        .clk(clk),
        .rst_n(rst_n),
        .alu_res_in(memory_alu_res),
        .bshift_in(memory_bshift_res),
        .pc_ret_in(memory_pc_ret),
        .data_res_in(data_fetch),
        .alu_res_out(wb_alu_res),
        .bshift_out(wb_bshift_res),
        .pc_ret_out(wb_pc_ret),
        .data_res_out(wb_data_res),
        .rf_in(memory_rf_ctrl),
        .pc_hlt_in(memory_pc_hlt),
        .rf_out(wb_rf_ctrl),
        .pc_hlt_out(wb_pc_hlt),
        .code_in(memory_code_bus),
        .code_out(wb_code_bus),

        .sel_rd1_in(memory_sel_rd1),
        .sel_rd1_out(wb_sel_rd1)
    );

// Write Back Mux
write_back iWrite
    (
        .pc_result(wb_pc_ret),
        .alu_result(wb_alu_res),
        .bshift_result(wb_bshift_res),
        .data_result(wb_data_res),
        // .data_result(data_fetch),
        .source_select(wb_rf_ctrl[2:1]),
        .write_result(wb_result)
    );

endmodule