/*
write_back.sv
This module implements the mux for the write back stage. 
*/

module write_back
    (
        input wire [31:0] pc_result,
        input wire [31:0] alu_result,
        input wire [31:0] bshift_result,
        input wire [31:0] data_result,
        input wire [1:0] source_select,
        output logic [31:0] write_result
    );

// Local Parameters
localparam ALU      = 0;
localparam BShift   = 1;
localparam PC       = 2;
localparam D_Mem    = 3;

always_comb
begin
    casex(source_select)
        ALU:    write_result = alu_result;
        BShift: write_result = bshift_result;
        PC:     write_result = pc_result;
        D_Mem:  write_result = data_result;
    endcase
end

endmodule