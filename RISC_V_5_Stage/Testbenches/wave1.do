onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rv32_system_tb/clk
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/wb_result
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_code_bus
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_pc
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_pc_ret
add wave -noupdate /rv32_system_tb/iSoC/iCPU/pc_branch
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_pc_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_alu_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_bshift_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_rf_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_data_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_rs1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_rs2
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_code_bus
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_pc
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_rs1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_rs2
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_pc_ret
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_alu_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_bshift_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_data_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_rf_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_pc_hlt
add wave -noupdate /rv32_system_tb/iSoC/iCPU/RS1_EX2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/RS2_EX2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/RS1_Mem2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/RS2_Mem2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/RS1_Mem2Mem
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/operandA
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/operandB
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/execute_alu_res
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/execute_comp_res
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/execute_bshift_res
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_data_store
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_code_bus
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_pc_ret
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/memory_alu_res
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/memory_bshift_res
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_rf_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_data_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/memory_pc_hlt
add wave -noupdate /rv32_system_tb/iSoC/iCPU/wb_code_bus
add wave -noupdate /rv32_system_tb/iSoC/iCPU/wb_pc_ret
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/wb_alu_res
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/wb_bshift_res
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/wb_data_res
add wave -noupdate /rv32_system_tb/iSoC/iCPU/wb_rf_ctrl
add wave -noupdate /rv32_system_tb/iSoC/iCPU/wb_pc_hlt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {825000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 296
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1076250 ps}
