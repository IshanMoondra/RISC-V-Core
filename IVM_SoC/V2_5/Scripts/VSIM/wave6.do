onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/clk
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/rst_n
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/enable
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/branch
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/execute_pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/code_bus
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/reg_s1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/normal_op
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/pc_opsel
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/busy
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/stall
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/return_d1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/flush
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/halt
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/uj_offset
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/sb_offset
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/sb_pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/normal_pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/uj_pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iPC/branch_pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {140000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 171
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
WaveRestoreZoom {46484 ps} {233516 ps}
