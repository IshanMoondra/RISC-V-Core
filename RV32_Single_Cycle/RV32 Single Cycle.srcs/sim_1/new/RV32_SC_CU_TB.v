`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 12:36:16
// Design Name: 
// Module Name: RV32_SC_CU_TB
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


module RV32_SC_CU_TB();

reg CLK;
wire [31:0] OUT;
wire [31:0] PC;

RV32_SC_CU TEST (
    .clk(CLK),
    .led(OUT[15:0]),
    .JA(OUT[23:16]),
    .JB(OUT[31:24]),
    .PC(PC)
    );

reg [4:0] counter;

initial
begin
    CLK <= 0;
    for (counter = 0; counter < 32; counter = counter + 1)
    begin
        #5;
        CLK <= 0;
        #5; 
        CLK <= 1;        
    end
end

endmodule
