onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iHazard/execute_mem_read
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iHazard/decode_sel_rs2
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iHazard/decode_sel_rs1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iHazard/execute_sel_rd1
add wave -noupdate /soc_tb_v1/uut/iSoC/iCPU/iHazard/stall
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
