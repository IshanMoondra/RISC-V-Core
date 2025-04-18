`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 19:41:39
// Design Name: 
// Module Name: rv32_cpu_top
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


module rv32_cpu_top
    (
        
        /*
        input clk,
        output reg [15:0] led,
        output reg [7:0] JA,
        output reg [7:0] JB
        );
        */
        //Universal Signals
        input clk,
        input rst_n,
        //Code Memory Signals
        output wire [31:0] pc_fetch,
        input wire [31:0] code_fetch,
        //Data Memory Signals
        //Using Memory with write and read ports seperate
        output wire data_mem_enable,
        output wire [31:0] data_addr_bus,
        output wire [31:0] write_data,
        input wire [31:0] read_data,
        //Read Enable for Data Memory
        output wire data_mem_read,
        /*
        //Outputs of Stages & Functional Units
        output reg [31:0] alu,   
        output reg [31:0] bshift,
        output reg [31:0] data,
        output reg [31:0] pc,
        output reg [31:0] s1,
        output reg [31:0] s2,
        output reg [31:0] if_id_q,
        output reg [31:0] id_ex_q,
        output reg [31:0] c_ex2,
        output reg [31:0] d_addr,
        */
        //Processor Status Signals: Branch stuff
        output wire BUSY,
        output wire FLUSH
        /*
        //Processor Status Signals: Dataflow Control Signals
        output reg [4:0] PC_CTRL,
        output reg [1:0] RAM_CTRL,
        output reg [18:0] RB_CTRL,    
        output reg [1:0] PSSD,
        output reg [1:0] PSD1
        */
    );
    
//Setting some dummy wires for implementation onto BASYS3 board.
//All output wires are now basically internalized. Doesn't work, Synthesis makes empty netlist.
// wire [31:0] pc_fetch;
// wire data_mem_enable;
// wire [31:0] data_addr_bus;
// wire [31:0] write_data;
// wire data_mem_read;
// wire FLUSH, BUSY;

//wire [31:0] code_fetch;
//wire [31:0] pc_fetch;
wire flush;

wire [31:0] code_decode;
wire [31:0] pc_decode;    

wire [18:0] rb_decode;          // {[4:0]S1, [4:0]S2, [4:0]D1, Load, Store, [1:0]Source}
wire [4:0] alu_decode;          // {EN, [3:0]OpSel}
wire [3:0] bshift_decode;       // {EN, Logical, Direction, Immediate}
wire [4:0] pc_ctrl_decode;      // {EN, [2:0]OpSel, Normal_Op}
wire [1:0] data_ctrl_decode;    // {EN, Read}

wire [31:0] code_ex;
wire [31:0] pc_ex;
wire busy;

wire [18:0] rb_ex;
wire [4:0] alu_ex;
wire [3:0] bshift_ex;
wire [4:0] pc_ctrl_ex;
wire [1:0] data_ctrl_ex;

wire [31:0] code_ex2;
wire [31:0] pc_ex2;
wire [4:0] alu_ex2;
wire [3:0] bshift_ex2;
wire [4:0] pc_ctrl_ex2;

//wire [31:0] data_addr_bus;
wire [31:0] register_s1;
wire [31:0] register_s2;
wire [31:0] alu_register_d1;
wire [31:0] bshift_register_d1;
wire [31:0] pc_register_d1;
wire [31:0] data_register_d1;
wire [1:0] prev_ssd;

/*
rv32_code_32bit CODE (
    .clk(clk),
    .address(pc_fetch),
    .data_out(code_fetch));      
*/

rv32_if_id_queue IF_ID_QUEUE (
    .clk(clk),
    .code_in(code_fetch),
    .pc_in(pc_fetch),
    .code_out(code_decode),
    .pc_out(pc_decode),
    .flush(flush)
    );

rv32_cu CU (
    .clk(clk),
    .rst_n(rst_n),
    .code_bus(code_decode),
    .rb_ctrl(rb_decode),
    .alu_ctrl(alu_decode),
    .bshift_ctrl(bshift_decode),
    .pc_ctrl(pc_ctrl_decode),
    .data_ctrl(data_ctrl_decode)
    );    

rv32_id_ex_queue ID_EX_QUEUE (
    .clk(clk),
    .code_in(code_decode),
    .pc_in(pc_decode),
    .code_out(code_ex),
    .pc_out(pc_ex),
    .flush(flush),
    .busy(busy),
    .alu_in(alu_decode),
    .alu_out(alu_ex),
    .rb_in(rb_decode),
    .rb_out(rb_ex),
    .pc_ctrl_in(pc_ctrl_decode),
    .pc_ctrl_out(pc_ctrl_ex),
    .bshift_in(bshift_decode),
    .bshift_out(bshift_ex),
    .data_ctrl_in(data_ctrl_decode),
    .data_ctrl_out(data_ctrl_ex)
    );
        
rv32_register_bank RB (
    .clk(clk),
    .rst_n(rst_n),
    .load(rb_ex[3]),
    .store(rb_ex[2]),
    .sel_s1(rb_ex[18:14]),
    .sel_s2(rb_ex[13:9]),
    .sel_d1(rb_ex[8:4]),
    .source_sel_d1(rb_ex[1:0]),
    .busy(busy),
    .code_bus(code_ex),
    .data_addr_bus(data_addr_bus),
    .reg_s1(register_s1),
    .reg_s2(register_s2),
    .alu_reg_d1(alu_register_d1),
    .bshift_reg_d1(bshift_register_d1),
    .pc_reg_d1(pc_register_d1),
    .data_reg_d1(data_register_d1),
    .prev_ssd(prev_ssd));

/*
rv32_data_32bit DATA (
    .clk(clk),
    //.enable(data_ctrl_ex[1] | data_ctrl_decode[1]),
    .enable(1'b1),
    .data_addr(data_addr_bus),
    .data_in(register_s2),
    .data_out(data_register_d1),
    .read(data_ctrl_ex[0]));
*/

rv32_ex_ex2_delay DELAY(
    .clk(clk),
    .flush(flush),
    .code_in(code_ex),
    .code_out(code_ex2),
    .pc_in(pc_ex),
    .pc_out(pc_ex2),
    .alu_in(alu_ex),
    .alu_out(alu_ex2),
    .bshift_in(bshift_ex),
    .bshift_out(bshift_ex2),
    .pc_ctrl_in(pc_ctrl_ex),
    .pc_ctrl_out(pc_ctrl_ex2));
/*
//ALU V1: Older and simple.
rv32_alu_v2 ALU (
    .clk(clk),
    .code_bus(code_ex2),
    .reg_s1(register_s1),
    .reg_s2(register_s2),
    .reg_d1(alu_register_d1),
    .pc(pc_ex2),
    //.enable(alu_ex2[4] | alu_ex[4]),
    .enable(1'b1),
    .alu_opsel(alu_ex2[3:0]));
*/

// ALU V2: Power Optimized
rv32_alu_v2 ALU (
    .code_bus(code_ex2),
    .reg_s1(register_s1),
    .reg_s2(register_s2),
    .reg_d1(alu_register_d1),
    .pc(pc_ex2),
    //.enable(alu_ex2[4] | alu_ex[4]),
    .enable(1'b1),
    .alu_opsel(alu_ex2[3:0]));
    
rv32_barrel_shifter BShift (
    .rs1(register_s1),
    .rs2(register_s2),
    .rd1(bshift_register_d1),
    //.enable(bshift_ex2[3] | bshift_ex[3]),
    .enable(1'b1),
    .immediate(bshift_ex2[0]),
    .logical(bshift_ex2[2]),
    .direction(bshift_ex2[1]),
    .code_bus(code_ex2));    

rv32_pc PC (
    .clk(clk),
    .rst_n(rst_n),
    .enable(pc_ctrl_ex2[4]),
    .data_bus(code_ex2),
    .reg_s1(register_s1),
    .reg_s2(register_s2),
    .return_d1(pc_register_d1),
    .pc(pc_fetch),
    .normal_op(pc_ctrl_ex2[0]),
    .pc_opsel(pc_ctrl_ex2[3:1]),
    .flush(flush),
    .busy(busy)
    );

initial
begin
    /*
    led <= 0;
    JA <= 0;
    JB <= 0;
    */
    /*
    alu <= 0;
    bshift <= 0;
    data <= 0;
    pc <= 0;
    if_id_q <= 0;
    id_ex_q <= 0;
    s1 <= 0;
    s2 <= 0;
    BUSY <= 0;
    FLUSH <= 0;
    c_ex2 <= 0;
    d_addr <= 0;
    RB_CTRL <= 0;
    PC_CTRL <= 0;
    RAM_CTRL <= 0;
    */       
end

always@(negedge clk)
begin
    /*
    led <= alu_register_d1[15:0];
    JA <= alu_register_d1[23:16];
    JB <= alu_register_d1[31:24];
    */
    /*
    alu <= alu_register_d1;    
    bshift <= bshift_register_d1;
    data <= data_register_d1;
    pc <= pc_ex2;
    if_id_q <= code_decode;
    */
    //BUSY <= busy;
    /*
    c_ex2 <= code_ex2;
    d_addr <= data_addr_bus;
    PSSD <= prev_ssd;
    */
    
end

/*
always@(posedge clk)
begin
    
    id_ex_q <= code_ex;
    s1 <= register_s1;
    s2 <= register_s2;
    RB_CTRL <= rb_ex;
    PC_CTRL <= pc_ctrl_ex2;
    RAM_CTRL <= data_ctrl_ex;
      
end
*/

assign write_data = register_s2;
assign data_register_d1 = read_data;
assign data_mem_read = data_ctrl_ex[0];
assign FLUSH = flush;
assign BUSY = busy;

endmodule
