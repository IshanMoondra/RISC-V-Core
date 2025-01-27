onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rv32_system_tb/clk
add wave -noupdate /rv32_system_tb/rst_n
add wave -noupdate /rv32_system_tb/flush
add wave -noupdate /rv32_system_tb/stall
add wave -noupdate /rv32_system_tb/halt
add wave -noupdate -radix decimal /rv32_system_tb/wb_result
add wave -noupdate -radix decimal /rv32_system_tb/count
add wave -noupdate -divider iSoC
add wave -noupdate /rv32_system_tb/iSoC/pc_fetch
add wave -noupdate /rv32_system_tb/iSoC/code_fetch
add wave -noupdate /rv32_system_tb/iSoC/data_addr
add wave -noupdate /rv32_system_tb/iSoC/data_fetch
add wave -noupdate /rv32_system_tb/iSoC/data_store
add wave -noupdate /rv32_system_tb/iSoC/data_enable
add wave -noupdate /rv32_system_tb/iSoC/data_read
add wave -noupdate -divider {RF Debug}
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iRF/reg_s1
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iRF/reg_s2
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iRF/rf_s1
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iRF/rf_s2
add wave -noupdate -divider Forwarding
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iForward/RS2_EX2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iForward/RS1_EX2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iForward/RS2_Mem2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iForward/RS1_Mem2EX
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iForward/RS1_Mem2Mem
add wave -noupdate -divider ALU
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/reg_d1
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/add_A
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/add_B
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/comp_B
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/logical_B
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/add_result
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/comp_result
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iALU/logical_result
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/LUi_result
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
WaveRestoreCursors {{Cursor 1} {1025000 ps} 0} {{Cursor 2} {65000 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 284
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
WaveRestoreZoom {0 ps} {269064 ps}
