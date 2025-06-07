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


module forwarding_unit(
    input [4:0] ID2EX_RS2, 
    input [4:0] ID2EX_RS1,
    input [4:0] EX2Mem_RS1,
    input EX2Mem_RegWrite,
    input Mem2WB_RegWrite,
    input [4:0] EX2Mem_RD1,
    input [4:0] Mem2WB_RD1,
    // control signals to the forwarding mux
    output logic RS2_EX2EX,
    output logic RS1_EX2EX, 
    output logic RS2_Mem2EX,
    output logic RS1_Mem2EX,
    output logic RS1_Mem2Mem
);


// MEM - to - MEM forwarding
// if(MEM/WB.RegWrite and (MEM/WB.RegisterRd != 0)
//      and (MEM/WB.RegisterRd == EX/MEM.RegisterRt)) enable MEM-to-MEM forwarding;

assign RS1_Mem2Mem  =  (Mem2WB_RegWrite & (Mem2WB_RD1 != 5'h00) & (Mem2WB_RD1 == EX2Mem_RS1));


// MEM - to - EX fowarding 
// if (MEM/WB.RegWrite 
//    and (MEM/WB.RegisterRd != 0) 
//    and (MEM/WB.RegisterRd = ID/EX.RegisterRs)) ForwardA = 01
// if (MEM/WB.RegWrite 
//    and (MEM/WB.RegisterRd !=� 0) 
//    and (MEM/WB.RegisterRd = ID/EX.RegisterRt)) ForwardB = 01

assign RS2_Mem2EX  =  (Mem2WB_RegWrite & (Mem2WB_RD1 != 5'h00) & (Mem2WB_RD1 == ID2EX_RS2));
assign RS1_Mem2EX  =  (Mem2WB_RegWrite & (Mem2WB_RD1 != 5'h00) & (Mem2WB_RD1 == ID2EX_RS1));


// EX - to - EX forwarding
// if (EX/MEM.RegWrite
//	and (EX/MEM.RegisterRd !=� 0)
//	and (EX/MEM.RegisterRd = ID/EX.RegisterRs)) ForwardA 10
// if (EX/MEM.RegWrite
//	and (EX/MEM.RegisterRd !=� 0)
//	and (EX/MEM.RegisterRd = ID/EX.RegisterRt)) ForwardB 10

assign RS2_EX2EX  =  (EX2Mem_RegWrite & (EX2Mem_RD1 != 5'h00) & (EX2Mem_RD1 == ID2EX_RS2));
assign RS1_EX2EX  =  (EX2Mem_RegWrite & (EX2Mem_RD1 != 5'h00) & (EX2Mem_RD1 == ID2EX_RS1));

endmodule