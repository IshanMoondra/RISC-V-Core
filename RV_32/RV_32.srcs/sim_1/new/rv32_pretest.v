`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2023 13:29:51
// Design Name: 
// Module Name: rv32_pretest
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


module rv32_pretest();

reg clk;
wire [31:0] alu;
wire [31:0] bshift;
wire [31:0] data;
wire [31:0] pc;
wire [31:0] s1;
wire [31:0] s2;
wire [4:0] ss1;
wire [4:0] ss2;
wire [4:0] sd1;
wire [1:0] ssd;
wire [1:0] prev_ssd;
wire load;
wire store;
wire [31:0] if_id;
wire [31:0] id_ex;
wire [31:0] code_ex2;
wire BUSY;
wire FLUSH;
wire [31:0] data_addr;
wire [1:0] ram_ctrl;
wire [4:0] pc_ctrl;

rv32_cpu_top TEST(
    .clk(clk),
    .s1(s1),
    .s2(s2),
    .RB_CTRL({ss1, ss2, sd1, load, store, ssd}),
    .PC_CTRL(pc_ctrl),
    .RAM_CTRL(ram_ctrl),
    .if_id_q(if_id),
    .id_ex_q(id_ex),
    .alu(alu),
    .bshift(bshift),
    .data(data),
    .pc(pc),
    .BUSY(BUSY),
    .FLUSH(FLUSH),
    .c_ex2(code_ex2),
    .d_addr(data_addr),
    .PSSD(prev_ssd)
    );
reg [4:0] i;
initial
begin
    //Universal Control Signals.
    clk <= 0;
    i <= 0;
    #5;
    
    //Simulation Start.
    for ( i = 0; i < 32; i = i + 1)
    begin
        clk <= 0;
        #5;
        clk <= 1;
        #5;
    end
    
end

endmodule
