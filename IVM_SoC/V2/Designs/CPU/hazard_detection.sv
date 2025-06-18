/*
hazard_detection_v
This module implements Hazard Detection for the 5 Stage WISC F24 Processor (Phase 2)_
This module can insert bubbles in the ID_EX pipeline for covering Load to Use stalls
*/

/*
Input Port List:
1_ execute_mem_read
2_ IF_ID_RT
3_ IF_ID_RS
4_ ID_EX_RT

Output Port List:
1_ IF_ID_Write
2_ PC_Write
3_ Mux Select for Bubble vs Control

Note: 
    Bubble must have an Instruction OPCODE (PADDSB) that does not touch the flags_ 
    Also, we have to change the Instruction [15:12] passing through the Pipeline to preserve flags
*/

module hazard_detection
    (
        input execute_mem_read,
        input [4:0] decode_sel_rs2,
        input [4:0] decode_sel_rs1,
        input [4:0] execute_sel_rd1,
        output logic stall
    );

/*
If (ID_EX_MemRead and ((ID_EX_RegisterRt = IF_ID_RegisterRs) or (ID_EX_RegisterRt = IF_ID_RegisterRt))):
    Stall the pipeline
Adapted from Computer Organisation & Design, MIPS Edition, pg 314
*/

assign stall = (execute_mem_read & ((execute_sel_rd1 == decode_sel_rs1) | (execute_sel_rd1 == decode_sel_rs2)));

endmodule
