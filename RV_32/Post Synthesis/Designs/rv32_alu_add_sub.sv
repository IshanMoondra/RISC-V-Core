/*
rv32_alu_add_sub.sv
Submodule will handle additions and subtractions for the ALU of RV32I Core.
*/

module rv32_alu_add_sub
    (
        input [3:0] alu_opsel,
        //Need muxes to select between RS, RT, PC, IMM Data: Special Case for AUiPC
        input [31:0] wire opA, opB,
        output logic [31:0] result,
    );

always_comb
    begin   : Add_Sub
        if (alu_opsel == 0 || alu_opsel == 7 || alu_opsel == 15)
            result = opA + opB;
        else if (alu_opsel == 1 || alu_opsel == 8)
            result = opA - opB;
        else
            result = 0;
    end     : Add_Sub

endmodule