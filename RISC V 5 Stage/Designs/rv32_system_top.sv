/*
rv32_system_top.sv
This is the top level file that will be used as both a test harness and general system synthesis.
Later revisions of this file will include cache controllers, with the simpler 256 word RAM modules
acting as the caches. 
As of 16th Jan 2025, the data and instruction memories are direct data/code ports.
*/

module rv32_system_top
    (
        input wire clk,
        input wire rst_n,
        output wire flush,
        output wire stall,
        output wire halt,
        output wire [31:0] wb_result
    );

wire [31:0] pc_fetch;
wire [31:0] code_fetch;

wire [31:0] data_addr;
wire [31:0] data_fetch;
wire [31:0] data_store;
wire data_enable;
wire data_read;

// Instantiating the Modules

rv32_cpu_top iCPU
    (
        .clk(clk),
        .rst_n(rst_n),
        .pc_fetch(pc_fetch),
        .code_fetch(code_fetch),
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

rv32_ram_32bit iCode
    (
        .clk(clk),
        .enable(1'b1),
        .read(1'b1),
        .address(pc_fetch),
        .data_read(code_fetch),
        .data_write(32'h0)
    );

rv32_ram_32bit iData
    (
        .clk(clk),
        .enable(data_enable),
        .read(data_read),
        .address(data_addr),
        .data_read(data_fetch),
        .data_write(data_store)
    );

endmodule