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
        output wire [31:0] data_addr,
        input wire [31:0] data_fetch,
        // CPU Status Signals
        output wire flush,
        output wire stall,
        // output wire busy,
        output wire halt
    );

// Creating Wires for Fetch/Decode Stage

wire [31:0] decode_code_bus;
wire [31:0] decode_pc;
wire [31:0] decode_pc_ret;
wire pc_branch;

wire [4:0] decode_pc_ctrl;
wire [4:0] decode_alu_ctrl;
wire [3:0] decode_bshift_ctrl;
wire [2:0] decode_rf_ctrl;
wire [1:0] decode_data_ctrl;

wire [31:0] decode_rs1;
wire [31:0] decode_rs2;

// Creating Wires for Decode/Execute Stage

wire [31:0] execute_code_bus;
wire [31:0] execute_pc;
wire [31:0] execute_rs1;
wire [31:0] execute_rs2;
wire [31:0] execute_pc_ret;

wire [4:0] execute_alu_ctrl;
wire [3:0] execute_bshift_ctrl;
wire [1:0] execute_data_ctrl;
wire [2:0] execute_rf_ctrl;
wire execute_pc_hlt;

// Wires related to Forwarding Muxes
wire RS1_EX2EX;
wire RS2_EX2EX;
wire RS1_Mem2EX;
wire RS2_Mem2EX;
wire RS1_Mem2Mem;

wire [31:0] operandA;
wire [31:0] operandB;

wire [31:0] execute_alu_res;
wire [31:0] execute_comp_res;
wire [31:0] execute_bshift_res;

// Creating Wires for Execute/Memory Stages

wire [31:0] memory_code_bus;
wire [31:0] memory_pc_ret;
wire [31:0] memory_alu_res;
wire [31:0] memory_bshift_res;
wire [2:0] memory_rf_ctrl;
wire [1:0] memory_data_ctrl;
wire memory_pc_hlt;

// Creating Wires for Memory/WriteBack Stage

wire [31:0] wb_code_bus;
wire [31:0] wb_pc_ret;
wire [31:0] wb_alu_res;
wire [31:0] wb_bshift_res;
wire [31:0] wb_data_res;

wire [2:0] wb_rf_ctrl;
wire wb_pc_hlt;

wire [31:0] wb_result;

// Instantiating the Modules

// Fetch Stage
// Instruction Memory Unit

// Program Counter Module
rv32_pc_v2 iPC
    (
        .clk(clk),
        .rst_n(rst_n),
        .enable(wb_pc_hlt),
        //.enable(1'b0),
        .branch(pc_branch),
        .code_bus(decode_code_bus),
        .reg_s1(decode_rs1),
        .normal_op(decode_pc_ctrl[0]),
        .pc_opsel(decode_pc_ctrl[3:1]),
        .busy(stall),
        .return_d1(decode_pc_ret),
        .pc(pc_fetch),
        .flush(flush),
        .halt(halt)
    );

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

// Register File Unit
rv32_register_file iRF
    (
        .clk(clk),
        .rst_n(rst_n),
        .write_reg(wb_rf_ctrl[0]),
        .sel_s1(decode_code_bus[19:15]),
        .sel_s2(decode_code_bus[24:20]),
        .sel_d1(wb_code_bus[11:7]),
        .reg_d1(wb_result),
        .reg_s1(decode_rs1),
        .reg_s2(decode_rs2)
    );

// Branch Resolution Unit
branch_resolver iResolver
    (
        .code_bus(decode_code_bus),
        .rf_reg_s1(decode_rs1),
        .rf_reg_s2(decode_rs2),
        .alu_output(execute_comp_res),
        //.alu_output(memory_alu_res),
        .id_ex_reg_d1(execute_code_bus[11:7]),
        .branch(pc_branch)
    );

// Hazard Detection Unit
hazard_detection iHD
    (
        .execute_mem_read(&execute_data_ctrl),
        .decode_sel_rs2(decode_code_bus[24:20]),
        .decode_sel_rs1(decode_code_bus[19:15]),
        .execute_sel_rd1(execute_code_bus[11:7]),
        .stall(stall)
    );
// Decode/Execute Stage
rv32_id_ex_queue iID_EX
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .stall(stall),
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
        .bshift_in(decode_bshift_ctrl),
        .bshift_out(execute_bshift_ctrl),
        .pc_hlt_in(decode_pc_ctrl[4]),
        .pc_hlt_out(execute_pc_hlt),
        .data_ctrl_in(decode_data_ctrl),
        .data_ctrl_out(execute_data_ctrl)
    );

// Data Forwarding Unit
forwarding_unit iForward
    (
        .ID2EX_RS2(decode_code_bus[24:20]),
        .ID2EX_RS1(decode_code_bus[19:15]),
        .EX2Mem_RD1(execute_code_bus[11:7]),
        .EX2Mem_RegWrite(execute_rf_ctrl[0]),
        .Mem2WB_RegWrite(memory_rf_ctrl[0]),
        .Mem2WB_RD1(memory_code_bus[11:7]),
        // Forwarding Select Signals for MUX
        .RS2_EX2EX(RS2_EX2EX),
        .RS1_EX2EX(RS1_EX2EX),
        .RS2_Mem2EX(RS2_Mem2EX),
        .RS1_Mem2EX(RS1_Mem2EX),
        .RS1_Mem2Mem(RS1_Mem2Mem)
    );

// Forwarding MUXes
// May or may not work
assign operandA = RS1_Mem2Mem ? (wb_data_res) : RS1_EX2EX ? (memory_alu_res) : RS1_Mem2EX ? (wb_result) : execute_rs1;
assign operandB = RS2_EX2EX ? (memory_alu_res) : RS2_Mem2EX ? (wb_result) : execute_rs2;

// ALU
rv32_alu_v2 iALU
    (
        .reg_s1(operandA),
        .reg_s2(operandB),
        .code_bus(execute_code_bus),
        .pc(execute_pc),
        .enable(execute_alu_ctrl[4]),
        .alu_opsel(execute_alu_ctrl[3:0]),
        .reg_d1(execute_alu_res)
    );

// Dedicated Comparator for Branch Resolver
rv32_alu_comp iBrComp
    (
        .opA(operandA),
        .opB(operandB),
        .alu_opsel(execute_alu_ctrl[3:0]),
        .result(execute_comp_res)
    );

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

// Memory Stage
rv32_ex_mem_queue iEX_MEM
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .alu_res_in(execute_alu_res),
        .bshift_in(execute_bshift_res),
        .pc_ret_in(execute_pc_ret),
        .alu_res_out(memory_alu_res),
        .bshift_out(memory_bshift_res),
        .pc_ret_out(memory_pc_ret),
        
        .data_ctrl_in(execute_data_ctrl),
        .rf_in(execute_rf_ctrl),
        .pc_hlt_in(execute_pc_hlt),
        .data_ctrl_out(memory_data_ctrl),
        .rf_out(memory_rf_ctrl),
        .pc_hlt_out(memory_pc_hlt),

        .code_in(execute_code_bus),
        .code_out(memory_code_bus)
    );

// Data Memory Unit
assign data_addr = (memory_data_ctrl[1]) ? (memory_alu_res) : (0);

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
        .code_out(wb_code_bus)
    );

// Write Back Mux
write_back iWrite
    (
        .pc_result(wb_pc_ret),
        .alu_result(wb_alu_res),
        .bshift_result(wb_bshift_res),
        .data_result(wb_data_res),
        .source_select(wb_rf_ctrl[2:1]),
        .write_result(wb_result)
    );

endmodule