`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 00:02:56
// Design Name: 
// Module Name: RV_Mux
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


module RV_Mux(
    input clk,
    input [15:0] mux_in,
    output reg [15:0] out    
    );

wire [31:0] alu;   
wire [31:0] bshift;
wire [31:0] data;
wire [31:0] pc;
wire [31:0] s1;
wire [31:0] s2;
wire [31:0] if_id_q;
wire [31:0] id_ex_q;
wire [31:0] c_ex2;
wire [31:0] d_addr;
wire BUSY;
wire FLUSH;
wire [4:0] PC_CTRL;
wire [1:0] RAM_CTRL;
wire [18:0] RB_CTRL;    
wire [1:0] PSSD;
wire [1:0] PSD1;

reg [31:0] OUT;
    
rv32_cpu_top CPU(
    .clk(clk),
    .alu(alu),
    .bshift(bshift),
    .data(data),
    .pc(pc),
    .s1(s1),
    .s2(s2),
    .if_id_q(if_id_q),
    .id_ex_q(id_ex_q),
    .c_ex2(c_ex2),
    .d_addr(d_addr),
    .BUSY(BUSY),
    .FLUSH(FLUSH),
    .PC_CTRL(PC_CTRL),
    .RAM_CTRL(RAM_CTRL),
    .RB_CTRL(RB_CTRL),
    .PSSD(PSSD),
    .PSD1(PSD1)
    );

initial
begin
    out <= 0;
    OUT <= 0;
end
    
always@(posedge clk)
begin
    if (mux_in[0] == 1)
        out <= OUT[31:16];
    else
        out <= OUT[15:0];
        
    case(mux_in[5:1])
        0: OUT <= alu;
        1: OUT <= bshift;
        2: OUT <= data;
        3: OUT <= pc;
        4: OUT <= s1;
        5: OUT <= s2;
        6: OUT <= if_id_q;
        7: OUT <= id_ex_q;
        8: OUT <= c_ex2;
        9: OUT <= d_addr;
        10: OUT <= BUSY;
        11: OUT <= FLUSH;
        12: OUT <= PC_CTRL;
        13: OUT <= RAM_CTRL;
        14: OUT <= RB_CTRL;
        15: OUT <= PSSD;
        16: OUT <= PSD1;
        default: OUT <= alu;
    endcase                
end    
    
endmodule
