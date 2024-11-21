`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 10:47:44
// Design Name: 
// Module Name: rv32_register_bank
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
//This Module defines the 32 Registers present in the RV32I instruction set. 
//This Module does not have the Program Counter. 
//The Program Counter Module will be defined seperately.

//Probably needs RF Bypass

module rv32_register_bank
    (
        input clk,
        input load,
        input store,    
        input [4:0] sel_s1,
        input [4:0] sel_s2,
        input [4:0] sel_d1,
        input [31:0] code_bus,
        output reg [31:0] data_addr_bus,
        output reg [31:0] reg_s1,
        output reg [31:0] reg_s2,
        input [31:0] alu_reg_d1,
        input [31:0] bshift_reg_d1,
        input [31:0] pc_reg_d1,
        input [31:0] data_reg_d1,
        input [1:0] source_sel_d1,
        output reg busy,
        output reg [1:0] prev_ssd
    );
    
reg [5:0] i;
reg [31:0] register_bank [31:0];
reg [1:0] state;
reg [1:0] ssd;
/*
reg [1:0] prev_ssl;
reg [1:0] prev_sel_d1;
reg [31:0] write_back;
*/

always@(posedge clk)
begin
    /*
    case(ssl)
        0: write_back <= alu_reg_d1;
        1: write_back <= bshift_reg_d1;
        2: write_back <= pc_reg_d1;
        3: write_back <= data_reg_d1;
    endcase
    */
    
    //Need to implement prev_ssl for actual register file update during busy cycle.
    //Need to reimplement write_back reg so that outputs are latched on to. 
    //Write_Back will use SSL while Reg_File will use prev_ssl. 
    if (state == 1 | state == 2)
    begin    
        case(prev_ssd)
            0: register_bank[sel_d1] <= alu_reg_d1;
            1: register_bank[sel_d1] <= bshift_reg_d1;
            2: register_bank[sel_d1] <= pc_reg_d1;
            3: register_bank[sel_d1] <= data_reg_d1;
        endcase
    end    
    /*
    case(state)
        1:
            begin
            
            end
        2: 
            case(ssd)
                0: write_back <= alu_reg_d1;
                1: write_back <= bshift_reg_d1;
                2: write_back <= pc_reg_d1;
                3: write_back <= data_reg_d1;
            endcase
        0: register_bank[prev_sel_d1] <= write_back;        
    endcase
    */
    /*
    //register_bank[0] <= 0;  //0 Register of the RV32 CPU.
    //busy <= state;    
    case(state)
    1:
    begin
        case(ssl)
        0: register_bank[sel_d1] <= alu_reg_d1;
        1: register_bank[sel_d1] <= bshift_reg_d1;
        2: register_bank[sel_d1] <= pc_reg_d1;
        3: register_bank[sel_d1] <= data_reg_d1;
        endcase
    end
    0:
    begin
        register_bank[sel_d1] <= register_bank[sel_d1];
        //prev_sel_d1 <= ssl;
    end
    endcase
    */    
end

always@(posedge clk, negedge rst_n)
begin    
    if (!rst_n)
        begin
            prev_ssd <= 0;
            ssd <= 0;
            busy <= 0;
            state <= 0;
            reg_s1 <= 0;
            reg_s2 <= 0;
            data_addr_bus <= 0;        
        end
    else
        begin
            case(state)
            0:
                begin
                    state <= 1;
                    busy <= 1;
                    ssd <= source_sel_d1;            
                    //register_bank[prev_sel_d1] <= write_back;
                    reg_s1 <= (sel_s1 == 0) ? (0) : (register_bank[sel_s1]);
                    reg_s2 <= (sel_s2 == 0) ? (0) : (register_bank[sel_s2]);               
                    if (load)
                        begin
                            if (sel_s1 != 0)
                                data_addr_bus <= {{20{code_bus[31]}}, code_bus[31:20]} + register_bank[sel_s1];
                            else
                                data_addr_bus <= {{20{code_bus[31]}}, code_bus[31:20]};
                            //state <= 2;                
                        end
                    if (store)
                        begin
                            if (sel_s1 != 0)                   
                                data_addr_bus <= {{20{code_bus[31]}}, code_bus[31:25], code_bus[11:7]} + register_bank[sel_s1];
                            else
                                data_addr_bus <= {{20{code_bus[31]}}, code_bus[31:25], code_bus[11:7]};             
                        end
                    end
            1: 
                begin
                    state <= 2;
                    busy <= 1;
                    prev_ssd <= ssd;             
                    //register_bank[prev_sel_d1] <= write_back;          
                end
            2:
                begin
                    state <= 0;
                    busy <= 0;
                end
            3:
                begin
                    state <= 0;
                    busy <= 0;
                end    
            endcase
        end
end
endmodule
