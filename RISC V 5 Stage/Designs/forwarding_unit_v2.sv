/***************************************************************************************************************
  Adapted from:
  
  Computer Organization and Design: The Hardware/Software Interface, 5th Edition 
  by David A. Patterson and John L. Hennessy

  This module implements forwarding logic to handle data hazards in a pipelined processor. It enables the following
  forwarding mechanisms to ensure that the most recent and relevant values are available for dependent instructions:

  - MEM-to-MEM Forwarding: 
      Used when an instruction in the MEM stage needs to access data produced by a previous load in the MEM stage.

  - MEM-to-EX Forwarding: 
      Forwards data from the MEM stage to the EX stage when the EX stage instruction depends on a value computed in MEM.

  - EX-to-EX Forwarding: 
      Provides data within the EX stage when an instruction depends on a result calculated in the same stage, ensuring 
      the highest priority for the most recent result.

  Priority Order: 
      EX-to-EX (highest) > MEM-to-EX > MEM-to-MEM (lowest), ensuring that data dependencies are resolved in the 
      order of most recent updates in the pipeline.
******************************************************************************************************************/


module forwarding_unit_v2
    (
        input clk,
        input rst_n,
        input [4:0] decode_sel_rs1, 
        input [4:0] decode_sel_rs2,
        input [4:0] execute_sel_rs1,
        input execute_reg_write,
        input memory_reg_write,
        input [4:0] execute_sel_rd1,
        input [4:0] memory_sel_rd1,
        // control signals to the forwarding mux
        output logic RS2_EX2EX,
        output logic RS1_EX2EX, 
        output logic RS2_Mem2EX,
        output logic RS1_Mem2EX,
        output logic RS1_Mem2Mem
    );

// Defining Wires
wire set_rs2_mem2ex;
wire set_rs1_mem2ex;
wire set_rs2_ex2ex;
wire set_rs1_ex2ex;
wire set_rs1_mem2mem;

// MEM - to - MEM forwarding
// if(MEM/WB.RegWrite and (MEM/WB.RegisterRd != 0)
//      and (MEM/WB.RegisterRd == EX/MEM.RegisterRt)) enable MEM-to-MEM forwarding;

assign set_rs1_mem2mem  =  (memory_reg_write & ((memory_sel_rd1 != 5'h00) & (memory_sel_rd1 == execute_sel_rs1)));


// MEM - to - EX fowarding 
// if (MEM/WB.RegWrite 
//    and (MEM/WB.RegisterRd != 0) 
//    and (MEM/WB.RegisterRd = ID/EX.RegisterRs)) ForwardA = 01
// if (MEM/WB.RegWrite 
//    and (MEM/WB.RegisterRd !=� 0) 
//    and (MEM/WB.RegisterRd = ID/EX.RegisterRt)) ForwardB = 01

assign set_rs2_mem2ex  =  (memory_reg_write && ((memory_sel_rd1 != 5'h00) & (memory_sel_rd1 == decode_sel_rs2)));
assign set_rs1_mem2ex  =  (memory_reg_write && ((memory_sel_rd1 != 5'h00) & (memory_sel_rd1 == decode_sel_rs1)));


// EX - to - EX forwarding
// if (EX/MEM.RegWrite
//	and (EX/MEM.RegisterRd !=� 0)
//	and (EX/MEM.RegisterRd = ID/EX.RegisterRs)) ForwardA 10
// if (EX/MEM.RegWrite
//	and (EX/MEM.RegisterRd !=� 0)
//	and (EX/MEM.RegisterRd = ID/EX.RegisterRt)) ForwardB 10

assign set_rs2_ex2ex  =  (execute_reg_write && (execute_sel_rd1 != 5'h00) & (execute_sel_rd1 == decode_sel_rs2));
assign set_rs1_ex2ex  =  (execute_reg_write && (execute_sel_rd1 != 5'h00) & (execute_sel_rd1 == decode_sel_rs1));

always_ff @( posedge clk, negedge rst_n )
    begin : Delay_FF
        if (!rst_n)
            begin
                RS1_Mem2Mem <= 0;
                RS2_Mem2EX  <= 0;
                RS1_Mem2EX  <= 0;
                RS2_EX2EX   <= 0;
                RS1_EX2EX   <= 0;
            end
        else
            begin
                RS1_Mem2Mem <= set_rs1_mem2mem;
                RS2_Mem2EX  <= set_rs2_mem2ex;
                RS1_Mem2EX  <= set_rs1_mem2ex;
                RS2_EX2EX   <= set_rs2_ex2ex;
                RS1_EX2EX   <= set_rs1_ex2ex;
            end
    end

endmodule