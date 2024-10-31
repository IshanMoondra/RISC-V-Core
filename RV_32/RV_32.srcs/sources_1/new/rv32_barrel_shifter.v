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
    input clk,
    input enable,
    input logical,
    input direction,
    input immediate,
    input [31:0] code_bus,
    input [31:0] rs2,
    input signed [31:0] rs1,
    output reg [31:0] rd1
    );

initial
begin
    rd1 <= 32'bz;
end
    
always@(negedge clk)
begin
    if (enable)
    begin
        if (immediate)
        begin
            if (direction)
            begin
                if (logical)
                begin
                    //Right Shift, Logical.
                    rd1 <= rs1 >> code_bus[24:20];                
                end
                else
                begin
                    //Right Shift, Arithmetic.
                    //Will use of an additonal If Else Block help reduce on chip complexity?
                    rd1 <= rs1 >>> code_bus[24:20];                
                end
            end
            else
            begin
                //Left Shift, Logical.
                rd1 <= rs1 << code_bus[24:20];
            end
        end
        else
        begin
            if (direction)
            begin
                if (logical)
                begin
                    //Right Shift, Logical.
                    rd1 <= rs1 >> rs2;
                end
                else
                begin
                    //Right Shift, Arithmetic.
                    //Will use of an additonal If Else Block help reduce on chip complexity?
                    rd1 <= rs1 >>> rs2;
                end
            end
            else
            begin
                //Left Shift, Logical.
                rd1 <= rs1 << rs2;
            end
        end
    end
    else
        rd1 <= 32'bz;
end    
    
endmodule

