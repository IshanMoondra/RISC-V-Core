onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/clk
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/rst_n
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/decode_sel_rs1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/decode_sel_rs2
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/execute_sel_rs1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/execute_reg_write
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/memory_reg_write
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/execute_sel_rd1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/memory_sel_rd1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/RS2_EX2EX
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/RS1_EX2EX
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/RS2_Mem2EX
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/RS1_Mem2EX
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/RS1_Mem2Mem
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/set_rs2_mem2ex
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/set_rs1_mem2ex
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/set_rs2_ex2ex
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/set_rs1_ex2ex
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iForward/set_rs1_mem2mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 187
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
WaveRestoreZoom {938598 ps} {1450601 ps}
