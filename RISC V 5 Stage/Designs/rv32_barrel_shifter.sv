`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 15:21:25
// Design Name: 
// Module Name: rv32_barrel_shifter
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


module rv32_barrel_shifter(
    input enable,
    input logical,
    input direction,
    input immediate,
    input [31:0] code_bus,
    input [31:0] rs2,
    input signed [31:0] rs1,
    output reg signed [31:0] rd1
    );

wire signed [31:0] shift_amt;
assign shift_amt = (immediate) ? (code_bus[24:20]) : (rs2); // Immediate or Register as Shift Amount

always_comb
begin
    if (enable)
    begin
        casex({direction, logical})
            2'b11: rd1 <= rs1 >>    shift_amt;  // SRL
            2'b10: rd1 <= rs1 >>>   shift_amt;  // SRA
            default: rd1 <= rs1 <<  shift_amt;  // SLL
        endcase    
    end
    else
        rd1 <= 0;
end
endmodule
