`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2023 13:22:49
// Design Name: 
// Module Name: rv32_alu_testbench
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


module rv32_alu_testbench();

reg CLK;
reg [31:0] RS1;
reg [31:0] RS2;
wire [31:0] RD1;
reg [31:0] NPC;
reg EN;
reg [3:0] OPSEL;
reg [31:0] QUEUE;

reg [3:0] i;

rv32_alu ALU_TEST(
    .clk(CLK),
    .reg_s1(RS1),
    .reg_s2(RS2),
    .reg_d1(RD1),
    .enable(EN),
    .next_pc(NPC),
    .alu_opsel(OPSEL),
    .queue_data(QUEUE));

initial
begin
    //Setup the Simulation.
    i <= 0;
    CLK <= 0;
    RS1 <= 0;
    RS2 <= 0;
    NPC <= 0;
    EN <= 0;
    OPSEL <= 0;
    QUEUE <= 0;
    #10;
    
    EN <= 1;
    #5;
    
    //Begin Simulation
    //ALU verified!
    for ( i = 0; i <= 15; i = i + 1)
    begin
        CLK <= 0;
        #5;
        CLK <= 1;
        RS1 <= -63;
        RS2 <= 64;
        NPC <= 4;
        EN <= 1;
        OPSEL <= i;
        QUEUE <= {20'd3, 12'd0};
        #5;
    end
    
    CLK <= 0;
    #5;
    CLK <= 1;
    #5;   
end

endmodule
