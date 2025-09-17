/*
rv32_load_store_unit.sv
This module handles any data forwarding between the delayed write (for PPA reasons) and immediately required reads.
*/

module rv32_load_store_unit
    (
        input wire clk,
        input wire rst_n,
        input wire [31:0] store_addr,
        input wire [31:0] store_data,
        input wire [31:0] load_addr,
        input wire [31:0] load_data,
        output wire [31:0] fwd_data
    );

wire enable_fwd;
assign enable_fwd = (store_addr == load_addr);
assign fwd_data = (enable_fwd) ? (store_data) : (load_data);

endmodule