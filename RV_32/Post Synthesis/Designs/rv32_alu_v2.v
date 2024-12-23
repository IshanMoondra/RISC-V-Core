`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 13:47:33
// Design Name: 
// Module Name: rv32_alu
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


module rv32_alu_v2(
    input [31:0] reg_s1,
    input [31:0] reg_s2,
    output reg [31:0] reg_d1,
    input [31:0] pc,
    input enable,
    input [3:0] alu_opsel,
    input [31:0] code_bus
    );

// How best to approach this power optimization method?
// Create individual modules for every operation? Modules for every class of instruction
// Have enables for each of them. Based on the enable signal select the operands from inside the submodules. Not needed
// Have one large mux outside to select the required output. Done with nested If/Else
// Need to pass alu_opsel to all submodules. Done
// Need to modify Barrel Shifter for the new approach. Not Needed

// Instantiating the sub modules
// Adder needs to handle AUiPC case as well
// The other cases need to choose between RT or IMM Data 
wire [31:0] add_A, add_B;
wire [31:0] comp_B;
wire [31:0] logical_B;
wire [31:0] add_result, comp_result, logical_result, LUi_result;

assign LUi_result = (alu_opsel == 14) ? ({code_bus[31:12], 12'b0}) : (0);

rv32_alu_add_sub iAdd_Sub
    (
        .opA(add_A),
        .opB(add_B),
        .alu_opsel(alu_opsel),
        .result(add_result)
    );

rv32_alu_comp iComp
    (
        .opA(reg_s1),
        .opB(comp_B),
        .alu_opsel(alu_opsel),
        .result(comp_result)
    );

rv32_alu_logical iLogical
    (
        .opA(reg_s1),
        .opB(logical_B),
        .alu_opsel(alu_opsel),
        .result(logical_result)
    );

// Case Statement Mux to provide correct inputs
always @(*) begin
    // Defining Defaults:
    add_A       = 0;
    add_B       = 0;
    comp_B      = 0;
    logical_B   = 0;
    reg_d1      = 0;
    // Nested If Else cases
    if (alu_opsel == 0 || alu_opsel == 1)
        begin
            add_A = reg_s1;
            add_B = reg_s2;
            reg_d1 = add_result;
        end
    else if (alu_opsel == 2 || alu_opsel == 3 || alu_opsel == 4)
        begin
            logical_B = reg_s2;
            reg_d1 = logical_B;
        end
    else if (alu_opsel == 5 || alu_opsel == 6)
        begin
            comp_B = reg_s2;
            reg_d1 = comp_result;
        end
    else if (alu_opsel == 7 || alu_opsel == 8)
        begin
            add_A = reg_s1;
            add_B = {{20{code_bus[31]}}, code_bus[31:20]};
            reg_d1 = add_result;
        end
    else if (alu_opsel == 9 || alu_opsel == 10 || alu_opsel == 11)
        begin
            logical_B = {{20{code_bus[31]}}, code_bus[31:20]};
            reg_d1 = logical_B;
        end
    else if (alu_opsel == 12 || alu_opsel == 13)
        begin
            comp_B = {{20{code_bus[31]}}, code_bus[31:20]};
            reg_d1 = comp_result;
        end
    else if (alu_opsel == 14)
        begin
            reg_d1 = LUi_result;
        end
    else if (alu_opsel == 15)
        begin
            add_A = pc;
            add_B = {code_bus[31:12], 12'b0};
            reg_d1 = add_result;
        end
    else
        reg_d1 = 0;
end
endmodule
