`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2023 19:21:24
// Design Name: 
// Module Name: rv32_pc_testbench
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


module rv32_pc_testbench();

reg CLK;
reg EN;
reg N_OP;
reg [2:0] OPSEL;
reg [31:0] RS1;
reg [31:0] RS2;
wire [31:0] RD1;
wire [31:0] NPC;
wire [31:0] CODE;
wire FLUSH;
reg BUSY;

reg [2:0] i;

rv32_pc PC_TEST(
    .clk(CLK),
    .enable(EN),
    .normal_op(N_OP),
    .pc_opsel(OPSEL),
    .data_bus(CODE),
    .reg_s1(RS1),
    .reg_s2(RS2),
    .return_d1(RD1),
    .pc(NPC),
    .busy(BUSY),
    .flush(FLUSH));

rv32_code_32bit CODE_TEST(
    .clk(CLK),
    .address(NPC),
    .data_out(CODE));        

initial
begin
    //Setting up the Simulation.
    i <= 0;
    CLK <= 0;
    EN <= 0;
    N_OP <= 0;
    OPSEL <= 0;
    RS1 <= 0;
    RS2 <= 0;
    BUSY <= 0;
    //#10;
    
    EN <= 0;
    RS1 <= 2;
    RS2 <= 2;
    #5;

    //Begin Simulation
    //PC verified!
    //PC & Code Memory verified!
    /*
    for ( i = 0; i < 8; i = i + 1)
    begin
        #5;
        OPSEL <= i;
        #5;        
    end 
    */
    for ( i = 0; i < 8; i = i + 1)
    begin
        if ( i == 3)
            begin
            OPSEL <= 0;
            N_OP <= 0;
            end
        else
            N_OP <= 1; 
        CLK <= 0;
        #5;
        EN <= 1;        
        CLK <= 1;
//        if ( i % 3 == 0)
//            BUSY <= 1;
//        else
//            BUSY <= 0;
        RS1 <= 2;
        RS2 <= 2;                      
        #5;
    end
    /*
    CLK <= 1;
    #5;
    EN <= 1;
    N_OP <= 1;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 0;
    RS1 <= -2;
    RS2 <= -1;
    OPSEL <= 4;
    BUS <= {1'd0, 10'd33, 1'd1, 8'd12, 12'd0};
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 1;
    RS1 <= 0;
    RS2 <= 1;
    CLK <= 0;
    #5;

    CLK <= 1;
    #5;
    N_OP <= 1;
    OPSEL <= 1;
    RS1 <= 1;
    BUS <= {12'd1023, 20'd0};
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 1;
    CLK <= 0;
    #5;
    */
    /*
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 0;
    RS2 <= 1;
    RS1 <= 2;
    BUS <= {1'd0, 6'd35, 13'b0, 4'd11, 1'd0, 7'b0};
    OPSEL <= 7;
    CLK <= 0;
    #5;

    CLK <= 1;
    #5;
    N_OP <= 1;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 0;
    RS2 <= -3;
    RS1 <= -2;
    BUS <= {1'd0, 6'd35, 13'b0, 4'd11, 1'd0, 7'b0};
    OPSEL <= 7;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 1;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 0;
    RS2 <= -1;
    RS1 <= 2;
    BUS <= {1'd0, 6'd35, 13'b0, 4'd11, 1'd0, 7'b0};
    OPSEL <= 7;
    CLK <= 0;
    #5;

    CLK <= 1;
    #5;
    N_OP <= 1;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    N_OP <= 0;
    RS2 <= 1;
    RS1 <= -2;
    BUS <= {1'd0, 6'd35, 13'b0, 4'd11, 1'd0, 7'b0};
    OPSEL <= 7;
    CLK <= 0;
    #5;
    
    CLK <= 1;
    #5;
    CLK <= 0;
    #5;
    */    
end
/*
initial
begin
    forever
    begin
        CLK <= 1;
        #5;
        CLK <= 0;
        #5;
    end
end
*/
endmodule
