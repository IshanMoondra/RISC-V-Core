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


module rv32_id_ex_queue
    (
        // Universal Inputs
        input clk,
        input rst_n,
        // Pipeline control inputs
        input flush,
        input stall,
				input load_to_use_stall,
				input load_to_use_stall_ff3,
        input busy,
        // Input Output Pairs for Code & PC
        input [31:0] code_in,
        input [31:0] pc_in,
        output logic [31:0] code_out,
        output logic [31:0] pc_out,
        // Input Output Pairs for RF RS1 & RS2
        input [31:0] rf_rs1_in,
        input [31:0] rf_rs2_in,
        output logic [31:0] rf_rs1_out,
        output logic [31:0] rf_rs2_out,
        // Input Output Pairs for control signals
        // Return Address for Jumps
        input [31:0] pc_ret_in,
        output logic [31:0] pc_ret_out,
        // ALU Control
        input [5:0] alu_in,
        output logic [5:0] alu_out,
        // Register File Control
        input [2:0] rf_in,
        output logic [2:0] rf_out,
        // Register Select Vectors
        input [4:0] sel_rs1_in,
        input [4:0] sel_rs2_in,
        input [4:0] sel_rd1_in,
        output logic [4:0] sel_rs1_out,
        output logic [4:0] sel_rs2_out,
        output logic [4:0] sel_rd1_out,
				output logic [4:0] sel_rs1_queue_skid,
				output logic [4:0] sel_rs2_queue_skid,
        // Barrel Shifter Control
        input [3:0] bshift_in,
        output logic [3:0] bshift_out,
        // PC control
        input pc_hlt_in,
        output logic pc_hlt_out,
        // Data Memory Control
        input [1:0] data_ctrl_in,
        output logic [1:0] data_ctrl_out
    );
    
// Instruction Decode to Execute Queue
reg [31:0] code_queue;      // Holds the current instruction
reg [31:0] pc_queue;        // Holds the PC for the current instruction
reg [31:0] pc_ret_queue;    // Holds the Return Address for JAL instructions
reg [31:0] rf_rs1_queue;    // Holds the RF RS1 Data
reg [31:0] rf_rs2_queue;    // Holds the RF RS2 Data
reg [5:0] alu_queue;        // {EN, [4:0]OpSel}    
reg [2:0] rf_queue;         // {[1:0]Source, Write_Reg}
reg [3:0] bshift_queue;     // {EN, Logical, Direction, Immediate} 
reg pc_hlt_queue;           // {EN}  
reg [1:0] data_ctrl_queue;  // {EN, Read}  
reg [4:0] sel_rs1_queue;
reg [4:0] sel_rs2_queue;
reg [4:0] sel_rd1_queue;

// Turns out, I need a Skid Buffer to properly solve this.
reg [31:0] 	code_queue_skid			;

reg [31:0] 	pc_queue_skid				;
reg [31:0] 	pc_ret_queue_skid		;
reg 				pc_hlt_queue_skid		;

reg [31:0] 	rf_rs1_queue_skid		;
reg [31:0] 	rf_rs2_queue_skid		;
reg [2:0] 	rf_queue_skid				;
// reg [4:0]		sel_rs1_queue_skid	;
// reg [4:0]		sel_rs2_queue_skid	;
reg [4:0]		sel_rd1_queue_skid	;

reg [5:0] 	alu_queue_skid			;
reg [3:0] 	bshift_queue_skid		;

reg [1:0] 	data_ctrl_queue_skid;


logic [31:0] shadow_code_out;
always_ff @(posedge clk, negedge rst_n)
	begin
		if (~rst_n)
			begin
				code_queue_skid 			<= 0;
				
				pc_queue_skid					<= 0;
				pc_ret_queue_skid			<= 0;
				pc_hlt_queue_skid			<= 0;

				rf_rs1_queue_skid			<= 0;
				rf_rs2_queue_skid			<= 0;
				rf_queue_skid					<= 0;
				sel_rs1_queue_skid		<= 0;
				sel_rs2_queue_skid		<= 0;
				sel_rd1_queue_skid		<= 0;

				alu_queue_skid				<= 0;
				bshift_queue_skid			<= 0;

				data_ctrl_queue_skid	<= 0;

			end
		else if (load_to_use_stall)
			begin
				code_queue_skid 			<= code_in;
				rf_rs1_queue_skid			<= rf_rs1_in;
				rf_rs2_queue_skid			<= rf_rs2_in;
				rf_queue_skid					<= rf_in;
				sel_rs1_queue_skid		<= sel_rs1_in;
				sel_rs2_queue_skid		<= sel_rs2_in;
				sel_rd1_queue_skid		<= sel_rd1_in;
				alu_queue_skid				<= alu_in;
				bshift_queue_skid			<= bshift_in;
				data_ctrl_queue_skid	<= data_ctrl_in;
				pc_queue_skid					<= pc_in;
				pc_ret_queue_skid			<= pc_ret_in;
				pc_hlt_queue_skid			<= pc_hlt_in;
			end
	end

assign shadow_code_out = (load_to_use_stall_ff3) ? (code_queue_skid) : (code_queue); 

assign code_out 			= (load_to_use_stall_ff3) ? (code_queue_skid) 			: (code_queue)			;
assign rf_rs1_out			= (load_to_use_stall_ff3) ? (rf_rs1_queue_skid)			: (rf_rs1_queue)		;
assign rf_rs2_out			= (load_to_use_stall_ff3) ? (rf_rs2_queue_skid)			: (rf_rs2_queue)		;
// assign rf_rs1_out			= rf_rs1_queue;
// assign rf_rs2_out			= rf_rs2_queue;
assign rf_out					= (load_to_use_stall_ff3) ? (rf_queue_skid)					: (rf_queue)				;
assign sel_rs1_out		= (load_to_use_stall_ff3) ? (sel_rs1_queue_skid)		: (sel_rs1_queue)		;
assign sel_rs2_out		= (load_to_use_stall_ff3) ? (sel_rs2_queue_skid)		: (sel_rs2_queue)		;
assign sel_rd1_out		= (load_to_use_stall_ff3) ? (sel_rd1_queue_skid)		: (sel_rd1_queue)		;
assign alu_out				= (load_to_use_stall_ff3)	? (alu_queue_skid)				: (alu_queue)				;
assign bshift_out			= (load_to_use_stall_ff3)	? (bshift_queue_skid)			: (bshift_queue)		;
assign data_ctrl_out	= (load_to_use_stall_ff3) ? (data_ctrl_queue_skid)	: (data_ctrl_queue)	;
// assign pc_out					= (load_to_use_stall_ff3) ? (pc_queue_skid)					: (pc_queue)				;
// assign pc_ret_out			= (load_to_use_stall_ff3)	? (pc_ret_queue_skid)			: (pc_ret_queue)		;
assign pc_out					= pc_queue;
assign pc_ret_out			= pc_ret_queue;
assign pc_hlt_out			= (load_to_use_stall_ff3) ? (pc_hlt_queue_skid)			: (pc_hlt_queue)		;

// The Pipeline Flop will be flushed on every reset, as controlled by the PC module.

// Input to the Queues.
always_ff @(posedge clk, negedge rst_n)
begin
    if (~rst_n)
        begin
            // Reinitialise the Queues with NOP Conditions.
            // code_queue      <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011}; //Replaced with ADDi x0, x0, 0.
            code_queue      <= 0;
            alu_queue       <= {1'd0, 5'd7};
            rf_queue        <= {2'd0, 1'd0};
            rf_rs1_queue    <= 0;
            rf_rs2_queue    <= 0;
            bshift_queue    <= {1'd0, 1'd0, 1'd0, 1'd0};       
            pc_hlt_queue    <= 1'd1;
            pc_queue        <= 32'h0;
            data_ctrl_queue <= {1'd0, 1'd1}; 

            sel_rs1_queue <= 0;
            sel_rs2_queue <= 0;
            sel_rd1_queue <= 0;
        end
    else if (flush | stall)
        begin
            // Bubble NOP Condition on Stalls & Flushes.
            // code_queue      <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011}; //Replaced with ADDi x0, x0, 0.
            code_queue      <= 0;
            alu_queue       <= {1'd0, 5'd7};
            rf_queue        <= {2'd0, 1'd0};
            rf_rs1_queue    <= 0;
            rf_rs2_queue    <= 0;
            bshift_queue    <= {1'd0, 1'd0, 1'd0, 1'd0};       
            pc_hlt_queue    <= 1'd1;       
            data_ctrl_queue <= {1'd0, 1'd1};
            
            sel_rs1_queue <= 0;
            sel_rs2_queue <= 0;
            sel_rd1_queue <= 0; 
        end
    // else if (stall)
    //     begin
    //         code_queue      <= code_queue;
    //         alu_queue       <= alu_queue;
    //         rf_queue        <= rf_queue;
    //         rf_rs1_queue    <= rf_rs1_queue;
    //         rf_rs2_queue    <= rf_rs2_queue;
    //         bshift_queue    <= bshift_queue;
    //         pc_hlt_queue    <= pc_hlt_queue;
    //         data_ctrl_queue <= data_ctrl_queue;

    //         sel_rs1_queue <= sel_rs1_queue;            
    //         sel_rs2_queue <= sel_rs2_queue;
    //         sel_rd1_queue <= sel_rd1_queue;
    //     end
    else if (~busy)
        begin
            code_queue      <= code_in;
            pc_queue        <= pc_in;
            pc_ret_queue    <= pc_ret_in;
            alu_queue       <= alu_in;
            rf_queue        <= rf_in;
            rf_rs1_queue    <= rf_rs1_in;
            rf_rs2_queue    <= rf_rs2_in;
            bshift_queue    <= bshift_in;
            pc_hlt_queue    <= pc_hlt_in;
            data_ctrl_queue <= data_ctrl_in;

            sel_rs1_queue   <= sel_rs1_in;
            sel_rs2_queue   <= sel_rs2_in;
            sel_rd1_queue   <= sel_rd1_in;
        end
end

// Output from the Queues.
always_comb
	begin
		// code_out        = code_queue;
		// pc_out          = pc_queue;
		// pc_ret_out      = pc_ret_queue;
		// alu_out         = alu_queue;
		// rf_rs1_out      = rf_rs1_queue;
		// rf_rs2_out      = rf_rs2_queue;
		// rf_out          = rf_queue;
		// bshift_out      = bshift_queue;
		// pc_hlt_out      = pc_hlt_queue;
		// data_ctrl_out   = data_ctrl_queue;

		// sel_rs1_out     = sel_rs1_queue;
		// sel_rs2_out     = sel_rs2_queue;
		// sel_rd1_out     = sel_rd1_queue; 
	end

endmodule    
