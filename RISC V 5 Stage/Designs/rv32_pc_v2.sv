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
        input [31:0] code_bus,
        input [31:0] reg_s1,
        input normal_op,
        input [2:0] pc_opsel,
        input busy,
        output reg [31:0] return_d1,
        output reg [31:0] pc,
        output reg flush,
        output reg halt
    );

// Will need to update for byte addressable memory later

logic [31:0] uj_offset;
logic [31:0] sb_offset;

logic [31:0] sb_pc;
logic [31:0] normal_pc;
logic [31:0] uj_pc;

// Bunch of localparams for each Branch Type, Lazy I know
localparam JAL  = 4'h0;
localparam JALR = 4'h1;
localparam BEQ  = 4'h2;
localparam BNE  = 4'h3;
localparam BLT  = 4'h4;
localparam BGT  = 4'h5;
localparam BLTU = 4'h6;
localparam BGTU = 4'h7;

// Current Offsets are not Byte Aligned
assign uj_offset = {{12{code_bus[31]}}, code_bus[19:12], code_bus[20], code_bus[30:21], 1'b0} + ((pc_opsel == JALR) ? (reg_s1) : (0));
assign sb_offset = {{20{code_bus[31]}}, code_bus[7], code_bus[30:25], code_bus[11:8], 1'b0};

assign normal_pc    = pc + 1; 
assign uj_pc        = pc + uj_offset;
assign sb_pc        = pc + sb_offset;

assign return_d1    = normal_pc;

always_ff @( posedge clk, negedge rst_n )
    begin   : PC_FF
        if (!rst_n)
            begin
                pc <= 0;
                flush <= 1;
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
                        flush <= 1;
                        casex ({~(branch), pc_opsel})
                            JAL:    pc <= uj_pc;
                            JALR:   pc <= uj_pc;
                            BEQ:    pc <= sb_pc;
                            BNE:    pc <= sb_pc;
                            BLT:    pc <= sb_pc;
                            BGT:    pc <= sb_pc;
                            BLTU:   pc <= sb_pc;
                            BGTU:   pc <= sb_pc;
                            default: pc <= normal_pc;
                        endcase
                    end
            end
        else
            begin
                pc <= pc;
                flush <= 0;                
            end

    end     : PC_FF

// Flush the IF/ID Stage when Branch is detected
// assign flush = branch; 

// Assert Halt Signal when PC is disabled; Different from a Stall or Busy State
assign halt = ~(enable);

endmodule
