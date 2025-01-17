/*
rv32_alu_comp.sv
This submodule will handle the signed and unsigned operations for the RV32I ALU
*/

module rv32_alu_comp
    (
        input [31:0] opA,
        //Need to mux between IMM or RT
        input [31:0] opB,
        input [3:0] alu_opsel,
        output logic [31:0] result
    );

always_comb
    begin   :Comparator
        //SLT
        if (alu_opsel == 5 || alu_opsel == 12)
            begin
                //Both Operands Postive
                if (~opA[31] && ~opB[31])
                    result = opA < opB;
                // OpA negative, OpB postive
                else if (opA[31] && ~opB[31])
                    result = 1;
                // OpA positive, OpB negative
                else if (~opA[31] && opB[31])
                    result = 0;
                //Both Operands Negative
                else if (opA[31] && opB[31])
                    result = opA > opB;
                //Default to save power
                else
                    result = 0;
            end
        //SLTU
        else if (alu_opsel == 6 || alu_opsel == 13)
            result = opA < opB;
        else
            result = 0;
    end     :Comparator

endmodule