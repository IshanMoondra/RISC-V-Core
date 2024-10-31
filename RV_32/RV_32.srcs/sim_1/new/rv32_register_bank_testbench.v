`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 22:41:31
// Design Name: 
// Module Name: rv32_register_bank_testbench
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


module rv32_register_bank_testbench();

reg CLK;
reg LD;
reg ST;
reg [4:0] SS1;
reg [4:0] SS2;
reg [4:0] SD1;
reg [31:0] CODE;
wire [31:0] ADDR;
wire [31:0] RS1;
wire [31:0] RS2;
reg [31:0] ALU;
reg [31:0] BSHIFT;
reg [31:0] PC;
reg [31:0] DATA;
reg [1:0] SOURCE;
wire BUSY;

reg [5:0] i;

rv32_register_bank RB_TEST (
    .clk(CLK),
    .load(LD),
    .store(ST),
    .sel_s1(SS1),
    .sel_s2(SS2),
    .sel_d1(SD1),
    .code_bus(CODE),
    .data_addr_bus(ADDR),
    .reg_s1(RS1),
    .reg_s2(RS2),
    .alu_reg_d1(ALU),
    .bshift_reg_d1(BSHIFT),
    .pc_reg_d1(PC),
    .data_reg_d1(DATA),
    .source_sel_d1(SOURCE),
    .busy(BUSY));

initial
begin
    //Set up the Simulation.
    CLK <= 0;
    LD <= 0;    //Posedge input.
    ST <= 0;    //Posedge input.
    SS1 <= 0;
    SS2 <= 0;
    SD1 <= 0;    //Posedge input.
    CODE <= 0;
    ALU <= 0;       //Posedge input.
    BSHIFT <= 0;    //Posedge input.
    PC <= 0;        //Posedge input.
    DATA <= 0;      //Posedge input.
    SOURCE <= 0;    //Posedge input.
    i <= 0;
    #10;
    
    //Start Simulation 
    //ALU, PC, Barrel Shifter Sources tested and verified.
    //Loads and Stores will require a dummy instruction in order to successfully work. 
    /*
    for ( i = 0; i < 33; i = i + 1)
    begin
    CLK <= 1;
    #5;
    SOURCE <= 0;    //ALU Result.
    ALU <= 12345 + i;
    SD1 <= i;
    CLK <= 0;
    #5;
    
    SS1 <= i;
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    end
    */
    /*
    for ( i = 0; i < 33; i = i + 1)
    begin
    CLK <= 1;
    #5;
    SOURCE <= 1;    //Barrel Shifter Output.
    BSHIFT <= 1 << i;
    SD1 <= i;
    CLK <= 0;
    #5;
    
    SS1 <= i;
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    end
    */
    /*
    for ( i = 0; i < 33; i = i + 1)
    begin
    CLK <= 1;
    #5;
    SOURCE <= 2;    //PC Return Address.
    PC <= 11011 + i;
    SD1 <= i;
    CLK <= 0;
    #5;
    
    SS1 <= i;
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    end
    */
    
    CLK <= 1;
    #5;
    SOURCE <= 0;    //ALU Result.
    ALU <= 12345;
    SD1 <= 1;
    CLK <= 0;
    CODE <= {12'd1564, {20{1'b0}}};
    #5;
      
    SS1 <= 1;
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    LD <= 1;
    SOURCE <= 3;
    SD1 <= 3;
    CLK <= 0;
    #5;
      
    CLK <= 1;
    #5;
    DATA <= 193;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    LD <= 0;
    SOURCE <= 0;
    SD1 <= 0;
    CLK <= 0;
    #5;
    
    SS2 <= 3;  
    CLK <= 1;
    #5;
    DATA <= 193;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    SOURCE <= 0;    //ALU Result.
    ALU <= 67890;
    SD1 <= 4;
    CLK <= 0;
    CODE <= {7'd564, 12'd0, 5'd62, 7'd0};
    #5;
      
    SS1 <= 4;
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    ST <= 1;
    SS2 <= 4;
    CLK <= 0;
    #5;
      
    CLK <= 1;
    #5;
    ST <= 0;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    LD <= 0;
    SOURCE <= 0;
    SD1 <= 0;
    CLK <= 0;
    #5;
    
    SS2 <= 3;  
    CLK <= 1;
    #5;
    DATA <= 193;
    CLK <= 0;
    #5;
    
end

endmodule
