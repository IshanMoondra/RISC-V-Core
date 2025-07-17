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


module rv32_if_id_queue
    (
        input clk,
        input rst_n,
        input flush,
        input stall,
        input [31:0] code_in,
        input [31:0] pc_in,
        output logic [31:0] code_out,
        output logic [31:0] pc_out
    );
//Instruction Fetch  to Instruction Decode Queue
reg [31:0] pc_queue;    
reg [31:0] code_queue;
// Add a single instruction deep "siding" buffer, to absorb the correct instruction on L2U case. 
// Flop the L2U_FF again, to provide 3 cycle PC freeze for load to use. 
// Global Flush controls the "siding" buffer. 
//The Pipeline Flop will be flushed on every reset, as controlled by the PC module.

//Input to the Queues.
always_ff @(posedge clk, negedge rst_n)
begin
    if (~rst_n)
        begin
            code_queue  <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};
            pc_queue    <= 0;
        end  
    else if (flush)
        begin
            //Reinitialise the Queues with NOP Conditions.
            // code_queue <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};     //Replaced with the Appropriate NOP Condition. ADDi x0, x0, 0.    
            code_queue <= 0;
        end
    else if (stall)
        begin
            code_queue <= code_queue;
            pc_queue <= pc_queue;            
        end
    else
        begin
            code_queue  <= code_in;
            pc_queue    <= pc_in;
        end
end

// Output from the Queues.
assign code_out = code_queue;
assign pc_out   = pc_queue;

endmodule