`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 19:43:25
// Design Name: 
// Module Name: rv32_if_id_queue
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


module rv32_if_id_queue(
    input clk,
    input [31:0] code_in,
    input [31:0] pc_in,
    output reg [31:0] code_out,
    output reg [31:0] pc_out,
    input flush
    );
//Instruction Fetch  to Instruction Decode Queue
reg [31:0] pc_queue;    
reg [31:0] code_queue;

//Initialising the Queues.
initial 
begin
    //Initialise the Queues with NOP Conditions.
    code_queue <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};     //Replaced with the Appropriate NOP Condition. ADDi x0, x0, 0.
    
    pc_queue <= 0;       //Replace with the Appropriate NOP Condition.
    
    code_out <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};           //Replace with the Appropriate NOP Condition.
    pc_out <= 0;             //Replace with the Appropriate NOP Condition.
end

//Input to the Queues.
always@(posedge clk)
begin  
    if (flush)
    begin
        //Reinitialise the Queues with NOP Conditions.
        code_queue <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};     //Replaced with the Appropriate NOP Condition. ADDi x0, x0, 0.    
    end
    else
    begin
        code_queue <= code_in;
        pc_queue <= pc_in;
    end
end

//Output from the Queues.
always@(negedge clk)
begin
    code_out <= code_queue;
    pc_out <= pc_queue;
end
endmodule