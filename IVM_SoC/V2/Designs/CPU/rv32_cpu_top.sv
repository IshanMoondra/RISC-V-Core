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
        output logic [3:0] data_strobe,
        output wire [31:0] data_addr,
        output wire [31:0] data_store,
        input wire [31:0] data_fetch,
        // CPU Status Signals
        output wire flush,
        output wire branch,
        input logic stall,
        input wire busy,
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

// Creating Wires for Decode/Execute Stage

wire [31:0] execute_code_bus;
wire [31:0] execute_pc;
logic [31:0] execute_pc_ff;
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

// Wires related to Forwarding Muxes // Unused
wire [31:0] execute_alu_res;
logic [31:0] OperandA;
logic [31:0] OperandB;
wire RS1_EX2EX; 
wire RS2_EX2EX;
wire RS2_Mem2EX;
wire RS1_Mem2EX;
wire RS1_Mem2Mem;

// Creating Wires for Execute/Memory Stages

wire [31:0] memory_data_store;
wire [31:0] memory_code_bus;
wire [31:0] memory_pc_ret;
wire [31:0] memory_alu_res;

wire [4:0] memory_sel_rd1;

wire [2:0] memory_rf_ctrl;
wire [1:0] memory_data_ctrl;
wire memory_pc_hlt;

// Creating Wires for Memory/WriteBack Stage

wire [31:0] wb_code_bus;
wire [31:0] wb_pc_ret;
wire [31:0] wb_alu_res;
wire [31:0] wb_data_res;
wire [4:0] wb_sel_rd1;

wire [2:0] wb_rf_ctrl;
wire wb_pc_hlt;

wire load_to_use_stall;
wire load_to_use_stall_int;
logic load_to_use_stall_ff;
logic load_to_use_stall_ff2;
logic load_to_use_stall_ff3;
wire internal_stall;
wire skid_stall;

assign load_to_use_stall = load_to_use_stall_int;

always_ff @(posedge clk, negedge rst_n)
    begin
        if (~rst_n)
            begin
               load_to_use_stall_ff     <= 0;
               load_to_use_stall_ff2    <= 0;
               load_to_use_stall_ff3    <= 0;
            end
        else
            begin
                load_to_use_stall_ff    <= load_to_use_stall;
                load_to_use_stall_ff2   <= load_to_use_stall_ff;
                load_to_use_stall_ff3   <= load_to_use_stall_ff2;
            end
    end

assign internal_stall = load_to_use_stall 
                        | load_to_use_stall_ff
                        | stall;

assign skid_stall =   load_to_use_stall_ff2;

// Instantiating the Modules

// Fetch Stage
// Instruction Memory Unit

// Delay FF to resolve branches in Execute Phase than in Decode
logic [3:0] execute_pc_ctrl;
always_ff @(posedge clk)
    execute_pc_ctrl <= decode_pc_ctrl;

// Program Counter Module
rv32_pc_v2 iPC
    (
        .clk(clk),
        .rst_n(rst_n),
        .enable(wb_pc_hlt),
        .branch(pc_branch),
        .execute_pc(execute_pc),
        .code_bus(execute_code_bus),
        .reg_s1(OperandA),
        .normal_op(execute_pc_ctrl[0]),
        .pc_opsel(execute_pc_ctrl[3:1]),
        .busy(busy | internal_stall),        // For Multi Cycle Ops
        .stall(1'b0),      // From Fetch FSM
        .return_d1(execute_pc_ret),
        .pc_out(pc_fetch),
        .flush(flush),
        .halt(halt)
    );

assign branch = pc_branch;

// Busy for Multi Cycle Ops // Future Work

// Decode Stage
// IF/ID Stage
rv32_if_id_queue iIF_ID
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush | branch),
        .stall(internal_stall),
        .load_to_use_stall(load_to_use_stall),
        .load_to_use_stall_ff3(load_to_use_stall_ff3),
        .code_in(code_fetch),
        .pc_in(pc_fetch),
        .code_out(decode_code_bus),
        .pc_out(decode_pc)
    );

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

// Hazard Detection Unit
hazard_detection iHazard
    (
        .execute_mem_read(&execute_data_ctrl),
        .decode_sel_rs1(decode_sel_rs1),
        .decode_sel_rs2(decode_sel_rs2),
        .execute_sel_rd1(execute_sel_rd1),
        .stall(load_to_use_stall_int)
    );

// Register File Unit
rv32_register_file iRF
    (
        .clk(clk),
        .rst_n(rst_n),
        .write_reg(wb_rf_ctrl[0]),
        .sel_s1(decode_sel_rs1),
        .sel_s2(decode_sel_rs2),        
        .sel_d1(wb_sel_rd1),
        .reg_d1(wb_result),
        .reg_s1(decode_rs1),
        .reg_s2(decode_rs2)
    );

// Branch Resolution Unit
branch_resolver_v2 iResolver
    (
        .clk(clk),
        .rst_n(rst_n),
        .code_bus(execute_code_bus),
        .rf_reg_s1(OperandA),
        .rf_reg_s2(OperandB),
        .branch(pc_branch)
    );

// Decode/Execute Stage
rv32_id_ex_queue iID_EX
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .stall(internal_stall),
        .busy(1'b0),        // Will be used later when multicycle ALU comes into play.
        .code_in(decode_code_bus),
        .pc_in(decode_pc),
        .code_out(execute_code_bus),
        .pc_out(execute_pc),
        .rf_rs1_in(decode_rs1),
        .rf_rs2_in(decode_rs2),
        .rf_rs1_out(execute_rs1),
        .rf_rs2_out(execute_rs2),
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

// Forwarding Unit & Muxes
forwarding_unit_v2 iForward
    (
        .clk(clk),
        .rst_n(rst_n),
        .decode_sel_rs1(decode_sel_rs1),
        .decode_sel_rs2(decode_sel_rs2),
        .execute_sel_rs1(execute_sel_rs1),
        .execute_reg_write(execute_rf_ctrl[0]),
        .memory_reg_write(memory_rf_ctrl[0]),
        .execute_sel_rd1(execute_sel_rd1),
        .memory_sel_rd1(memory_sel_rd1),
        .RS2_EX2EX(RS2_EX2EX),
        .RS1_EX2EX(RS1_EX2EX),
        .RS2_Mem2EX(RS2_Mem2EX),
        .RS1_Mem2EX(RS1_Mem2EX),
        .RS1_Mem2Mem(RS1_Mem2Mem)
    );

// Delay FF for Write Back Data Results
logic [31:0] wb_result_ff;

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        wb_result_ff <= 0;
    else
        wb_result_ff <= wb_result;

always_comb
    begin: Forwarding_Mux_RS1
        if (RS1_EX2EX)
            OperandA = memory_alu_res;
        else if (RS1_Mem2EX)
            OperandA = wb_result;
        // else if (RS1_Mem2Mem)
        //     OperandA = wb_result_ff;
        else
            OperandA = decode_rs1;
    end: Forwarding_Mux_RS1

always_comb
    begin: Forwarding_Mux_RS2
        if (RS2_EX2EX)
            OperandB = memory_alu_res;
        else if (RS2_Mem2EX)
            OperandB = wb_result;
        else
            OperandB = decode_rs2;
    end: Forwarding_Mux_RS2

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        execute_pc_ff <= 0;
    else
        execute_pc_ff <= execute_pc;

// ALU
rv32_alu_v2 iALU
    (
        .reg_s1(OperandA),
        .reg_s2(OperandB),
        .code_bus(execute_code_bus),
        .pc(execute_pc_ff),
        .enable(execute_alu_ctrl[5]),
        .alu_opsel(execute_alu_ctrl[4:0]),
        .reg_d1(execute_alu_res),
        .bshift_ctrl(execute_bshift_ctrl)
    );

// Memory Stage
rv32_ex_mem_queue iEX_MEM
    (
        .clk(clk),
        .rst_n(rst_n),
        
        .alu_res_in(execute_alu_res),
        .bshift_in(),
        .pc_ret_in(execute_pc_ret),
        .data_store_in(),
        .alu_res_out(memory_alu_res),
        .bshift_out(),
        .pc_ret_out(memory_pc_ret),
        .data_store_out(),

        .data_ctrl_in(),
        .rf_in(execute_rf_ctrl),
        .pc_hlt_in(execute_pc_hlt),
        .data_ctrl_out(),
        .rf_out(memory_rf_ctrl),
        .pc_hlt_out(memory_pc_hlt),

        .sel_rd1_in(execute_sel_rd1),
        .sel_rd1_out(memory_sel_rd1),

        .code_in(execute_code_bus),
        .code_out(memory_code_bus)
    );

// Splitting the Long combination data store path into two. 

logic data_enable_int;
logic data_read_int;
logic [31:0] data_store_int;
logic [31:0] data_addr_int;

assign data_enable_int  = execute_data_ctrl[1];
assign data_read_int    = execute_data_ctrl[0];
assign data_addr_int    = (data_enable_int)                     ? (execute_alu_res) : (0);
assign data_store_int   = (data_enable_int & ~data_read_int)    ? (OperandB) : (0);

logic data_enable_ff;
logic data_read_ff;
logic [31:0] data_addr_ff;
logic [31:0] data_store_ff;

logic [3:0] mem_wrstb;
logic mem_cancel;
logic mem_cancel_ff;
logic read_unsigned;
logic read_unsigned_ff;
logic [3:0] read_strb;
logic [3:0] read_strb_ff;

always_comb
    begin
        mem_wrstb = 0;
        mem_cancel = 1;
        read_strb = 4'b0000;
        read_unsigned = 1;
        if (memory_code_bus[6:0] == 7'b0100011) // STORE Opcode
            begin
                casex (memory_code_bus[14:12])
                    3'b000: // Store Byte
                        begin
                            mem_wrstb = 4'b0001 << data_addr_ff[1:0];
                            mem_cancel = 0;
                        end
                    3'b001: // Store Half Word
                        begin
                            mem_wrstb = (~data_addr_ff[0]) ?
                                            (data_addr_ff[1] ? 4'b1100 : 4'b0011) :
                                            4'b0000;
                            mem_cancel = data_addr_ff[0]; // Cancel the Memory Op if Half Word is Misaligned
                        end
                    3'b010: // Store Full Word
                        begin
                            mem_wrstb = (data_addr_ff[1:0] == 2'b00) ? 4'b1111 : 4'b0000;
                            mem_cancel = ~(data_addr_ff[1:0] == 2'b00); // Cancel the Memory Op if Full World is Misaligned
                        end
                    default: {mem_wrstb, mem_cancel} = {1'b0, 1'b1};
                endcase
            end
        else if (memory_code_bus[6:0] == 7'b0000011) // LOAD Opcode
            begin                
                casex(memory_code_bus[14:12])
                    3'b000: // Load Byte
                        begin 
                            mem_cancel = 1'b0;
                            read_strb  = 4'b0001 << data_addr_ff[1:0];
                        end
                    3'b001: // Load Half Word
                        begin
                            mem_cancel = data_addr_ff[0];
                            read_strb = (~data_addr_ff[0]) ?
                                            (data_addr_ff[1] ? 4'b1100 : 4'b0011) :
                                            4'b0000;
                        end
                    3'b010: // Load Full Word
                        begin
                            mem_cancel = ~(data_addr_ff[1:0] == 2'b00);
                            read_strb  = (data_addr_ff[1:0] == 2'b00) ? 4'b1111 : 4'b0000;
                        end
                    3'b100: // Load Byte Unsigned
                        begin
                            mem_cancel = 1'b0;
                            read_unsigned = 1'b1;
                            read_strb  = 4'b0001 << data_addr_ff[1:0];
                        end
                    3'b101: // Load Half Word Unsigned
                        begin
                            mem_cancel = data_addr_ff[0];
                            read_unsigned = 1'b1;
                            read_strb = (~data_addr_ff[0]) ?
                                            (data_addr_ff[1] ? 4'b1100 : 4'b0011) :
                                            4'b0000;
                        end
                    default: mem_cancel = 1'b1;
                endcase
            end
    end

always_ff @( posedge clk, negedge rst_n ) 
    begin : Data_Store_Delay
        if (~rst_n)
            begin
                data_addr_ff    <= 0;
                data_store_ff   <= 0;
                data_read_ff    <= 0;
                data_enable_ff  <= 0;
                mem_cancel_ff   <= 1;
                read_unsigned_ff <= 0;
                read_strb_ff    <= 0;
            end
        else
            begin
                data_enable_ff  <= data_enable_int;
                data_read_ff    <= data_read_int;
                data_addr_ff    <= data_addr_int;
                data_store_ff   <= data_store_int;
                mem_cancel_ff   <= mem_cancel;
                read_unsigned_ff <= read_unsigned;
                read_strb_ff     <= read_strb;
            end
    end : Data_Store_Delay

// Actual Output ports
assign data_strobe  = mem_wrstb;
assign data_enable  = data_enable_ff && ~mem_cancel;
assign data_read    = data_read_ff; 
assign data_addr    = data_addr_ff;
assign data_store   = data_store_ff;

// Write Back Stage
rv32_mem_wb_queue iMEM_WB
    (
        .clk(clk),
        .rst_n(rst_n),
        .alu_res_in(memory_alu_res),
        .bshift_in(),
        .pc_ret_in(memory_pc_ret),
        .data_res_in(),
        .alu_res_out(wb_alu_res),
        .bshift_out(),
        .pc_ret_out(wb_pc_ret),        
        .data_res_out(),
        .rf_in(memory_rf_ctrl),
        .pc_hlt_in(memory_pc_hlt),
        .rf_out(wb_rf_ctrl),
        .pc_hlt_out(wb_pc_hlt),
        .code_in(memory_code_bus),
        .code_out(wb_code_bus),

        .sel_rd1_in(memory_sel_rd1),
        .sel_rd1_out(wb_sel_rd1)
    );

logic [31:0] data_fetch_final;

always_comb
    begin
        if (mem_cancel_ff)
            data_fetch_final = 32'h0;
        else if (~mem_cancel_ff)
            begin
                casex (read_strb_ff)
                    4'b0000: data_fetch_final = 32'h0; // Bad Load so passing a zero.
                    4'b0001: data_fetch_final = (read_unsigned_ff) ?
                                                ({{24{1'b0}}, data_fetch[7:0]}) :
                                                ({{24{data_fetch[7]}}, data_fetch[7:0]}) ;
                    4'b0010: data_fetch_final = (read_unsigned_ff) ?
                                                ({{24{1'b0}}, data_fetch[15:8]}) :
                                                ({{24{data_fetch[15]}}, data_fetch[15:8]}) ;
                    4'b0100: data_fetch_final = (read_unsigned_ff) ?
                                                ({{24{1'b0}}, data_fetch[23:16]}) :
                                                ({{24{data_fetch[23]}}, data_fetch[23:16]}) ;
                    4'b1000: data_fetch_final = (read_unsigned_ff) ?
                                                ({{24{1'b0}}, data_fetch[31:24]}) :
                                                ({{24{data_fetch[31]}}, data_fetch[31:24]}) ;
                    4'b0011: data_fetch_final = (read_unsigned_ff) ?
                                                ({{16{1'b0}}, data_fetch[15:0]}) :
                                                ({{16{data_fetch[15]}}, data_fetch[15:0]}) ;
                    4'b1100: data_fetch_final = (read_unsigned_ff) ?
                                                ({{16{1'b0}}, data_fetch[31:16]}) :
                                                ({{16{data_fetch[31]}}, data_fetch[31:16]}) ;
                    4'b1111: data_fetch_final = data_fetch;
                    default: data_fetch_final = 32'h0;
                endcase
            end
        else
            data_fetch_final = 32'h0;
    end


// Write Back Mux
write_back iWrite
    (
        .pc_result(wb_pc_ret),
        .alu_result(wb_alu_res),
        // .data_result(data_fetch),
        .data_result(data_fetch_final),
        .source_select(wb_rf_ctrl[2:1]),
        .write_result(wb_result)
    );

endmodule
