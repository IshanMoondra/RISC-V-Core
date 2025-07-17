`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 10:47:44
// Design Name: 
// Module Name: rv32_registers
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
//This Module defines the 32 Registers present in the RV32I instruction set. 
//This Module does not have the Program Counter. 
//The Program Counter Module will be defined seperately.

//Probably needs RF Bypass: Added 29th Dec 2024

module rv32_register_file
    (
        input clk,
        input rst_n,
        // input pc_halt,
        input write_reg,
        input [4:0] sel_s1,
        input [4:0] sel_s2,
        input [4:0] sel_d1,
        input wire [31:0] reg_d1,
        output logic [31:0] reg_s1,
        output logic [31:0] reg_s2
    );

// Thirty Two 32bit Registers for RV32 ISA requirement    
reg [31:0] registers [0:31];
logic [31:0] rf_s1; 
logic [31:0] rf_s2;

logic rs1_bypass;
logic rs2_bypass;

assign rs1_bypass = write_reg && (sel_s1 == sel_d1);
assign rs2_bypass = write_reg && (sel_s2 == sel_d1);

// Changing to synchronous negative edge triggered reset
// to facilitate BRAM implementation in Artix 7 FPGAs
always@(posedge clk, negedge rst_n)
// always@(posedge clk)
begin    
    if (!rst_n)
        begin
            rf_s1 <= 0;
            rf_s2 <= 0;
            // Setting $Zero to 0. Doesn't work??
            // registers[0] <= 0;
            // Better way to reset the entire RF without wasting the count variable?
            registers[0] <= 0;
            registers[1] <= 0;
            // Stack Pointer
            // registers[2] <= 0;
            registers[2] <= 4096; // Works!
            // registers[2] <= 1024; // Works!            
            registers[3] <= 0;
            registers[4] <= 0;
            registers[5] <= 0;
            registers[6] <= 0;
            registers[7] <= 0;
            registers[8] <= 0;
            registers[9] <= 0;
            registers[10] <= 0;
            registers[11] <= 0;
            registers[12] <= 0;
            registers[13] <= 0;
            registers[14] <= 0;
            registers[15] <= 0;
            registers[16] <= 0;
            registers[17] <= 0;
            registers[18] <= 0;
            registers[19] <= 0;
            registers[20] <= 0;
            registers[21] <= 0;
            registers[22] <= 0;
            registers[23] <= 0;
            registers[24] <= 0;
            registers[25] <= 0;
            registers[26] <= 0;
            registers[27] <= 0;
            registers[28] <= 0;
            registers[29] <= 0;
            registers[30] <= 0;
            registers[31] <= 0;
        end
    else
        begin
            // Registered Outputs
            rf_s1 <= (sel_s1 == 0) ? (0) : (registers[sel_s1]);
            rf_s2 <= (sel_s2 == 0) ? (0) : (registers[sel_s2]);            
            // Moving the write condition to negedge clock.
            // Register File Input
            // Conditionally Writing to Register File based on write_reg signal
            // Also checking if Destination is not $0. 
            if (write_reg && (sel_d1 != 0))
                registers[sel_d1] <= reg_d1;  
        end            
end


// Synopsys hates this dual edge Register File
/*
always @( negedge clk )
begin : RF_Write
    // Register File Input
    // Conditionally Writing to Register File based on write_reg signal
    // Also checking if Destination is not $0. 
    if (write_reg && (sel_d1 != 0))
        registers[sel_d1] <= reg_d1;
end
*/
// Register File Outputs with RF Bypass
// Note if Synopsys removes $Zero Register or not.
assign reg_s1 = (rs1_bypass) ? reg_d1 : rf_s1;
assign reg_s2 = (rs2_bypass) ? reg_d1 : rf_s2;

endmodule
