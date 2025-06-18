onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/reg_s1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/reg_s2
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/reg_d1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/pc
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/enable
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/alu_opsel
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/code_bus
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/bshift_ctrl
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/add_A
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/add_B
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/comp_B
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/logical_B
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/add_result
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/comp_result
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/logical_result
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/LUi_result
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iALU/bshift_result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {911288 ps} {1452038 ps}
