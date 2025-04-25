/*
rv32_alu_logical
Submodule to handle logical operations for RV32I ALU
*/

module rv32_alu_logical
    (
        //Operand B needs to be chosen from IMM or RT Data
        input [31:0] opA, opB,
        input [4:0] alu_opsel,
        output logic [31:0] result
    );

always_comb
    begin   :Logical
        //AND Operation
        if (alu_opsel == 2 || alu_opsel == 9 )
            result = opA & opB;
        //OR Operation
        else if (alu_opsel == 3 || alu_opsel == 10 )
            result = opA | opB;
        //XOR Operation
        else if (alu_opsel == 4 || alu_opsel == 11 )
            result = opA ^ opB;
        //Default to 0 for power saving
        else
            result = 0;
    end     :Logical
endmodule