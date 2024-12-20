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
    input clk,
    input [31:0] reg_s1,
    input [31:0] reg_s2,
    output reg [31:0] reg_d1,
    input [31:0] pc,
    input enable,
    input [3:0] alu_opsel,
    input [31:0] code_bus
    );

// How best to approach this power optimization method?
// Create individual modules for every operation?
// Have enables for each of them. Based on the enable signal select the operands from inside the submodules
// Have one large mux outside to select the required output.
// Need to pass alu_opsel to all submodules
// Need to modify Barrel Shifter for the new approach.

always@(posedge clk)
begin
    if (enable)
    begin
        //Operation List:
        //{Add, Addi, Sub, Subi, AND, ANDi, OR, ORi, 
        // XOR, XORi, SLT, SLTU, SLTi, SLTUi, LUi (reg_d1[31:12] <= immediate)
        // AUiPC (PC[31:12] <= PC[31:12] + immediate)} 
        case(alu_opsel)
        0: reg_d1 <= reg_s1 + reg_s2;           //Add
        1: reg_d1 <= reg_s1 - reg_s2;           //Sub
        2: reg_d1 <= reg_s1 & reg_s2;           //AND
        3: reg_d1 <= reg_s1 | reg_s2;           //OR
        4: reg_d1 <= reg_s1 ^ reg_s2;           //XOR
        5: begin                                //SLT
               if (reg_s1[31] && reg_s2[31])        //Both operands negative.
                reg_d1 <= (reg_s1 > reg_s2);        //Reverse Condition for Negative Operands.               
               else if (reg_s1[31] && ~reg_s2[31])  //Operand 1 Negative & Operand 2 Positive
                reg_d1 <= 1;                        //By default less than Operand 2.
               else if (~reg_s1[31] && reg_s2[31])  //Operand 1 Positive & Operand 2 Negative
                reg_d1 <= 0;                        //By default more than Operand 2.
               else                                 //Both Operands Positive.
                reg_d1 <= (reg_s1 < reg_s2);        //Same as SLTU
           end
        6: reg_d1 <= (reg_s1 < reg_s2);         //SLTU
        7: reg_d1 <= reg_s1 + {{20{code_bus[31]}}, code_bus[31:20]};     //Addi 
        8: reg_d1 <= reg_s1 - {{20{code_bus[31]}}, code_bus[31:20]};     //Subi
        9: reg_d1 <= reg_s1 & {{20{code_bus[31]}}, code_bus[31:20]};     //ANDi
        10: reg_d1 <= reg_s1 | {{20{code_bus[31]}}, code_bus[31:20]};    //ORi
        11: reg_d1 <= reg_s1 ^ {{20{code_bus[31]}}, code_bus[31:20]};    //XORi
        12: begin                                                        //SLTi
                if (reg_s1[31] & code_bus[31])              //Both operands negative.
                    reg_d1 <= (reg_s1 > {{20{code_bus[31]}}, code_bus[31:20]});  //Reverse Condition
               else if (reg_s1[31] & ~code_bus[31])         //Operand 1 Negative & Operand 2 Positive
                    reg_d1 <= 1;                            //By default less than Operand 2.
               else if (~reg_s1[31] & code_bus[31])         //Operand 1 Positive & Operand 2 Negative
                    reg_d1 <= 0;                            //By default more than Operand 2.
               else                                         //Both Operands Positive.
                    reg_d1 <= reg_s1 < ({{20{code_bus[31]}}, code_bus[31:20]}); //Same as SLTUi.
            end
        13: reg_d1 <= reg_s1 < ({{20{code_bus[31]}}, code_bus[31:20]}); //SLTUi
        14: reg_d1 <= {code_bus[31:12], 12'b0};             //LUi Can a 12bit Mask be a faster method than this concat?  
        15: reg_d1 <= pc + {code_bus[31:12], 12'b0};        //AUiPC
        endcase
    end
    else
        reg_d1 <= reg_d1;
end

endmodule
