onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iRF/clk
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iRF/rst_n
add wave -noupdate -divider Decode
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_sel_rs1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/decode_sel_rs2
add wave -noupdate -divider Execute
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_sel_rs1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_sel_rs2
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iALU/enable
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iALU/alu_opsel
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/operandA
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/operandB
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/add_A
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/add_B
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/iCPU/iALU/reg_d1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/execute_sel_rd1
add wave -noupdate -divider {Write Back}
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iRF/write_reg
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iRF/sel_d1
add wave -noupdate /rv32_system_tb/iSoC/iCPU/iRF/reg_d1
add wave -noupdate -divider {Final Result}
add wave -noupdate -radix decimal /rv32_system_tb/wb_result
add wave -noupdate -radix decimal /rv32_system_tb/count
add wave -noupdate -divider {Data Signals}
add wave -noupdate /rv32_system_tb/iSoC/data_addr
add wave -noupdate /rv32_system_tb/iSoC/data_fetch
add wave -noupdate /rv32_system_tb/iSoC/data_enable
add wave -noupdate /rv32_system_tb/iSoC/data_read
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2598999 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 260
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
WaveRestoreZoom {2560263 ps} {2670513 ps}
