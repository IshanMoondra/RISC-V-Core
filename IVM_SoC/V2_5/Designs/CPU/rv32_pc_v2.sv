`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 23:10:33
// Design Name: 
// Module Name: rv32_pc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rv32_pc_v2
    (
        input clk,
        input rst_n,
        input enable,
        input branch,
        input [31:0] execute_pc,
        input [31:0] code_bus,
        input [31:0] reg_s1,
        input normal_op,
        input [2:0] pc_opsel,
        input busy,
        input stall,
        output reg [31:0] return_d1,
        output reg [31:0] pc_out,
        output reg flush,
        output reg halt
    );

// Will need to update for byte addressable memory later

logic [31:0] i_offset;
logic [31:0] uj_offset;
logic [31:0] sb_offset;

logic [31:0] i_pc;
logic [31:0] sb_pc;
logic [31:0] normal_pc;
logic [31:0] uj_pc;
logic [31:0] branch_pc;

// logic [31:0] pc_ff;
logic [31:0] pc;
logic [31:0] execute_pc_ff;

always_ff @(posedge clk, negedge rst_n)
    if (~rst_n)
        execute_pc_ff <= 0;
    else
        execute_pc_ff <= execute_pc;

// Bunch of localparams for each Branch Type, Lazy I know
localparam JAL  = 4'h0;
localparam JALR = 4'h1;
localparam BEQ  = 4'h2;
localparam BNE  = 4'h3;
localparam BLT  = 4'h4;
localparam BGT  = 4'h5; // DNE
localparam BLTU = 4'h6;
localparam BGTU = 4'h7; // DNE

// Current Offsets are not Byte Aligned
assign i_offset  = {{20{code_bus[31]}}, code_bus[31:20]};
assign uj_offset = {{12{code_bus[31]}}, code_bus[19:12], code_bus[20], code_bus[30:21], 1'b0};
assign sb_offset = {{20{code_bus[31]}}, code_bus[7], code_bus[30:25], code_bus[11:8], 1'b0};

assign normal_pc    = (~rst_n) ? (0): (pc + 4);
assign uj_pc        = (~rst_n) ? (0): (execute_pc_ff + uj_offset);
assign sb_pc        = (~rst_n) ? (0): (execute_pc_ff + sb_offset);
// assign uj_pc        = (~rst_n) ? (0): (execute_pc + uj_offset);
// assign sb_pc        = (~rst_n) ? (0): (execute_pc + sb_offset);
assign i_pc         = (~rst_n) ? (0): (reg_s1 + i_offset);

always_ff @( posedge clk, negedge rst_n )
    begin   : PC_FF
        if (!rst_n)
            begin
                pc <= 0;
                flush <= 0;
                // branch_pc <= 0;
            end
        else if (enable & ~busy)
            begin
                // Some redundant logic here ?
                if (normal_op)
                    begin
                        pc <= normal_pc;
                        flush <= 0;
                    end
                else
                    begin
                        flush <= branch;
                        pc <= branch ? branch_pc : normal_pc;
                    end
            end
        // else if (busy)
        //     pc <= pc; 
        else
            begin
                pc <= pc;
                flush <= branch;
                // Need S/R style FF to capture the new PC.
                // pc <= branch ? (branch_pc & (rst_n)) : pc;
            end

    end     : PC_FF

// Flush the IF/ID Stage when Branch is detected
// assign flush = branch; 

always_comb
    begin
        casex ({~(branch), pc_opsel})
            JAL:    branch_pc <= uj_pc;
            JALR:   branch_pc <= i_pc;
            BEQ:    branch_pc <= sb_pc;
            BNE:    branch_pc <= sb_pc;
            BLT:    branch_pc <= sb_pc;
            BGT:    branch_pc <= sb_pc;
            BLTU:   branch_pc <= sb_pc;
            BGTU:   branch_pc <= sb_pc;
            default: branch_pc <= normal_pc;
            // default: branch_pc <= 0;
        endcase
    end


logic [31:0] normal_pc_ff1;
logic [31:0] normal_pc_ff2;
logic [31:0] normal_pc_ff3;
logic [31:0] normal_pc_ff4;

always_ff @( posedge clk, negedge rst_n ) 
    begin : Delay_Flops
        if (~rst_n)
            begin
                normal_pc_ff1 <= 0;
                normal_pc_ff2 <= 0;
                normal_pc_ff3 <= 0;
                normal_pc_ff4 <= 0;
            end
        else
            begin
                normal_pc_ff1 <= normal_pc;
                normal_pc_ff2 <= normal_pc_ff1;
                normal_pc_ff3 <= normal_pc_ff2;
                normal_pc_ff4 <= normal_pc_ff3;
            end
    end : Delay_Flops

assign return_d1    = normal_pc_ff3;

// Assert Halt Signal when PC is disabled; Different from a Stall or Busy State
assign halt = ~(enable);
assign pc_out = pc;

endmodule
