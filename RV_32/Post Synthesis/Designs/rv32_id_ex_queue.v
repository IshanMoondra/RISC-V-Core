`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 19:44:32
// Design Name: 
// Module Name: rv32_id_ex_queue
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


module rv32_id_ex_queue(
    input clk,
    input [31:0] code_in,
    input [31:0] pc_in,
    output reg [31:0] code_out,
    output reg [31:0] pc_out,
    input flush,
    input busy,
    input [4:0] alu_in,
    output reg [4:0] alu_out,
    input [18:0] rb_in,
    output reg [18:0] rb_out,
    input [3:0] bshift_in,
    output reg [3:0] bshift_out,
    input [4:0] pc_ctrl_in,
    output reg [4:0] pc_ctrl_out,
    input [1:0] data_ctrl_in,
    output reg [1:0] data_ctrl_out
    );
    
//Instruction Decode to Execute Queue
reg [31:0] code_queue;
reg [31:0] pc_queue;        
reg [4:0] alu_queue;      //{EN, [3:0]OpSel}    
reg [18:0] rb_queue;      //{[4:0]S1, [4:0]S2, [4:0]D1, Load, Store, [1:0]Source}
reg [3:0] bshift_queue;   //{EN, Logical, Direction, Immediate} 
reg [4:0] pc_ctrl_queue;  //{EN, [2:0]OpSel, Normal_Op}  
reg [1:0] data_ctrl_queue;//{EN, Read}   

//The Pipeline Flop will be flushed on every reset, as controlled by the PC module.

//Input to the Queues.
always@(posedge clk)
begin  
    if (flush)
        begin
            //Reinitialise the Queues with NOP Conditions.
            code_queue <= {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};     //Replaced with the Appropriate NOP Condition. ADDi x0, x0, 0.
            
            alu_queue <= {1'd0, 4'd7};
            
            rb_queue <= {5'd0, 5'd0, 5'd0, 1'd0, 1'd0, 2'd0};
            
            bshift_queue <= {1'd0, 1'd0, 1'd0, 1'd0};       
            
            pc_ctrl_queue <= {1'd1, 3'd0, 1'd1};       
            
            data_ctrl_queue <= {1'd0, 1'd1}; 
            //code_out <= {12'b0, 5'b0, 3'b0, 7'b0010011};          //Replaced with the Appropriate NOP Condition. ADDi x0, x0, 0.
            //pc_out <= 0;
        end
    else if (!busy)
        begin        
            code_queue <= code_in;
            pc_queue <= pc_in;
            alu_queue <= alu_in;
            rb_queue <= rb_in;
            bshift_queue <= bshift_in;
            pc_ctrl_queue <= pc_ctrl_in;
            data_ctrl_queue <= data_ctrl_in;
        end
end

//Output from the Queues.
always@(posedge clk)
    begin
        code_out <= code_queue;
        pc_out <= pc_queue;
        alu_out <= alu_queue;
        rb_out <= rb_queue;
        bshift_out <= bshift_queue;
        pc_ctrl_out <= pc_ctrl_queue;
        data_ctrl_out <= data_ctrl_queue;                       
    end

endmodule    
