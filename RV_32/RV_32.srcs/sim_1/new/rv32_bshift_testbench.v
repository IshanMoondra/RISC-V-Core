`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 20:22:27
// Design Name: 
// Module Name: rv32_bshift_testbench
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


module rv32_bshift_testbench();

reg CLK;
reg EN;
reg DIR;
reg LG;
reg [4:0] SHAMT;
reg [31:0] RS1;
wire [31:0] RD1;

reg [5:0] i;

rv32_barrel_shifter BSHIFT_TEST (
    .clk(CLK),
    .enable(EN),
    .direction(DIR),
    .logical(LG),
    .shift_amount(SHAMT),
    .data_to_shift(RS1),
    .shift_out(RD1));

initial
begin
    //Setup the Simulation.
    CLK <= 0;
    EN <= 0;
    DIR <= 0;
    LG <= 0;
    SHAMT <= 0;
    RS1 <= 0;
    i <= 0;
    #10;
    
    //Simulation Start
    //Barrel Shifter verified!
    //RS1 <= {1'b1, {31{1'b0}}};//, 1'b1};
    RS1 <= 1;
    EN <= 1;
    DIR <= 0;
    LG <= 0;
        
    for ( i = 0; i < 34; i = i + 1)
    begin
        CLK <= 0;
        #5;
        SHAMT <= i;
        CLK <= 1;
        #5;
    end
    
end

endmodule
