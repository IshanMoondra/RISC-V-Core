`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 12:44:34
// Design Name: 
// Module Name: rv32_queue
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

module rv32_queue(
    input clk,
    input [31:0] code_in,
    input [7:0] control_in,
    output reg [31:0] code_out,
    output reg [7:0] control_out,
    input flush,
    input busy,
    output reg full
    );
//Instruction Fetch Queue    
reg [31:0] code_queue [3:0];
reg [7:0]  control_queue [3:0];  
reg [1:0] head;
reg [1:0] tail;

//Initialising the Queues.
initial 
begin
    //Initialise the Queues with NOP Conditions.
    code_queue[0] <= 0;     //Replace with the Appropriate NOP Condition.
    control_queue[0] <= 0;  //Replace with the Appropriate NOP Condition.
    code_queue[1] <= 0;     //Replace with the Appropriate NOP Condition.
    control_queue[1] <= 0;  //Replace with the Appropriate NOP Condition.
    code_queue[2] <= 0;     //Replace with the Appropriate NOP Condition.
    control_queue[2] <= 0;  //Replace with the Appropriate NOP Condition.
    code_queue[3] <= 0;     //Replace with the Appropriate NOP Condition.
    control_queue[3] <= 0;  //Replace with the Appropriate NOP Condition.
    head <= 0;
    tail <= 0;
    full <= 0;
    code_out <= 0;                  //Replace with the Appropriate NOP Condition.
    control_out <= 0;               //Replace with the Appropriate NOP Condition.
end

//Input to the Queues.
always@(negedge clk)
begin  
    if (flush)
    begin
        code_queue[0] <= 0;     //Replace with the Appropriate NOP Condition.
        control_queue[0] <= 0;  //Replace with the Appropriate NOP Condition.
        code_queue[1] <= 0;     //Replace with the Appropriate NOP Condition.
        control_queue[1] <= 0;  //Replace with the Appropriate NOP Condition.
        code_queue[2] <= 0;     //Replace with the Appropriate NOP Condition.
        control_queue[2] <= 0;  //Replace with the Appropriate NOP Condition.
        code_queue[3] <= 0;     //Replace with the Appropriate NOP Condition.
        control_queue[3] <= 0;  //Replace with the Appropriate NOP Condition.
        head <= 0;
        tail <= 0;
        full <= 0;
    end
    else
    begin
    if (tail + 1 != head)
    begin
        code_queue[tail] <= code_in;
        control_queue[tail] <= control_in;
        tail <= tail + 1;
        full <= 0;
    end
    else
        full <= 1;
    end
end

//Output from the Queues.
always@(posedge clk)
begin
    if (busy)
        head <= head;
    else
    begin
        code_out <= code_queue[head];
        control_out <= control_queue[head];
        head <= head + 1;
    end
end

    
endmodule
