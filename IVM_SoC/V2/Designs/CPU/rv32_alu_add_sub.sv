/*
rv32_alu_add_sub.sv
Submodule will handle additions and subtractions for the ALU of RV32I Core.
*/

module rv32_alu_add_sub
    (
        input [4:0] alu_opsel,
        //Need muxes to select between RS, RT, PC, IMM Data: Special Case for AUiPC
        input wire [31:0] opA,
        input wire [31:0] opB,
        output logic [31:0] result
    );

always_comb
    begin   : Add_Sub
        if (alu_opsel == 0 || alu_opsel == 7 || alu_opsel == 15 || alu_opsel == 16 || alu_opsel == 17)
            result = opA + opB;
        else if (alu_opsel == 1 || alu_opsel == 8)
            result = opA - opB;
        else
            result = 0;
    end     : Add_Sub

endmodule