`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 19:58:38
// Design Name: 
// Module Name: rv_32_alu
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


module rv_32_alu(
    input clk,
    input [31:0] reg_s1,
    input [31:0] reg_s2,
    output reg [31:0] reg_d1,
    input [31:0] next_pc,
    input enable,
    input [3:0] alu_opsel,
    input [31:0] data_bus
    );

reg [31:0] temp_s1;
reg [31:0] temp_s2;
    
initial
begin
    //reg_d1 <= 0;
    temp_s1 <= 0;
    temp_s2 <= 0;
end    

always@(posedge clk)
begin
    //If both are Operands are Negative:
    //Finding 2's Complement of both the Operands.
    if (reg_s1[31] && reg_s2[31])
    begin
        temp_s1 <= ~reg_s1 + 1;
        temp_s2 <= ~reg_s2 + 1;
    end
end

always@(negedge clk)
begin
    if (enable)
    begin
        //Operation List:
        //{Add, Addi, Sub, Subi, AND, ANDi, OR, ORi, 
        // XOR, XORi, SLT, SLTU, SLTi, SLTUi, LUi (reg_d1[31:12] <= immediate)
        // AUiPC (PC[31:12] <= PC[31:12] + immediate)} 
        case(alu_opsel)
        0: reg_d1 <= reg_s1 + reg_s2;   //Add
        1: reg_d1 <= reg_s1 - reg_s2;   //Sub
        2: reg_d1 <= reg_s1 && reg_s2;  //AND
        3: reg_d1 <= reg_s1 || reg_s2;  //OR
        4: reg_d1 <= reg_s1 ^ reg_s2;   //XOR
        5: begin                        //SLT
               if (reg_s1[31] && reg_s2[31])    //Both operands negative.
               begin
                   if (temp_s1 > temp_s2)       //Reverse condition.
                    reg_d1 <= 1;
                   else
                    reg_d1 <= 0;
               end
               
               if (reg_s1[31] && ~reg_s2[31])   //Operand 1 Negative & Operand 2 Positive
                reg_d1 <= 1;                    //By default less than Operand 2.
               
               if (~reg_s1[31] && reg_s2[31])   //Operand 1 Positive & Operand 2 Negative
                reg_d1 <= 0;                    //By default more than Operand 2.
                
               if (~reg_s1[31] && ~reg_s2[31])  //Both Operands Positive.
                if (reg_s1 < reg_s2)            //Same as SLTU. 
                    reg_d1 <= 1;
                else
                    reg_d1 <= 0;
           end
        6: begin                        //SLTU
                if (reg_s1 < reg_s2)
                begin
                    reg_d1 <= 1;
                end
                else
                begin
                    reg_d1 <= 0;
                end    
           end
        15: reg_d1 <= next_pc + {data_bus[31:12], 12'b0} - 3;    //AUiPC
        endcase
    end
end
    
endmodule
