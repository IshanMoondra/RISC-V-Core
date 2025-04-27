/*
rv32_system_top.sv
This is the top level file that will be used as both a test harness and general system synthesis.
Later revisions of this file will include cache controllers, with the simpler 256 word RAM modules
acting as the caches. 
As of 16th Jan 2025, the data and instruction memories are direct data/code ports.
*/

module rv32_system_top
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // Processor + Pipeline Status Signals
        output wire flush,
        output wire stall,
        output wire busy,
        // Processor HALT
        output wire halt,
        // Processor Bus Output
        output wire [31:0] wb_result,
        // Flash Controller Signals
        output logic mem_valid,
        output logic mem_instr,
        output logic [31:0] mem_addr,
        output logic [31:0] mem_wdata,
        output logic [3:0] mem_wstrb,
        input wire [31:0] mem_rdata
    );

wire [31:0] pc_fetch;
wire [31:0] code_fetch;
wire [31:0] instruction;

wire [31:0] data_addr;
wire [31:0] data_fetch;
wire [31:0] data_fetch_flash;
wire [31:0] data_store;
wire data_enable;
wire data_read;

parameter SIZE = 256;

// Instantiating the Modules

rv32_cpu_top iCPU
    (
        .clk(clk),
        .rst_n(rst_n),
        .busy(busy),
        .pc_fetch(pc_fetch),
        .code_fetch(instruction),
        .data_enable(data_enable),
        .data_read(data_read),
        .data_addr(data_addr),
        .data_fetch(data_fetch),
        .data_store(data_store),
        .flush(flush),
        .stall(stall),
        .halt(halt),
        .wb_result(wb_result)
    );

// Stall to be driven by FSM controlling Fetch
// New System Top will have to simulate with a combined Code/Data Style memory system.

Fetch_FSM iFetch
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        // Fetch Address from CPU
        .fetch_address(pc_fetch),
        // Core Instruction Buffer
        .instruction(instruction),
        // Core stall point
        .stall(stall),
        // Data Address for Flash, not simulated.
        .data_address(data_addr),
        // Load Data output port left unconnected: To be connected to Core for Loading Stuff from Flash
        .load_data(data_fetch_flash),
        // Write Buffer for Data to be written to Flash
        .write_data(data_store),
        .mem_valid(mem_valid),
        .mem_instr(mem_instr),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_rdata(mem_rdata),
        .mem_wstrb(mem_wstrb),
        .mem_rdy(mem_rdy),
        // Signals to figure out if it is read or write
        // Need to add the address masking logic to facilitate SRAM/Flash Co-op.
        .data_enable(data_enable),
        .data_read(data_read)
    );

rv32_ram_32bit 
    #(
        .size(SIZE),
        .code_mem(1),
        .code("../Binaries/alu_test.hex")
    )
    iCode
    (
        .clk(clk),
        .enable(1'b1),
        .read(1'b1),
        .address(pc_fetch),
        .data_read(code_fetch),
        .data_write(32'h0)
    );

rv32_ram_32bit 
    #(
        .size(SIZE),
        .code_mem(0)
    )
    iData
    (
        .clk(clk),
        .enable(data_enable),
        // .enable(1'b1),
        .read(data_read),
        .address(data_addr),
        .data_read(data_fetch),
        .data_write(data_store)
    );

endmodule