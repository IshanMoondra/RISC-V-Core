onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rv32_system_tb/iSoC/clk
add wave -noupdate /rv32_system_tb/iSoC/rst_n
add wave -noupdate /rv32_system_tb/iSoC/flush
add wave -noupdate /rv32_system_tb/iSoC/stall
add wave -noupdate /rv32_system_tb/iSoC/halt
add wave -noupdate /rv32_system_tb/iSoC/wb_result
add wave -noupdate -radix decimal /rv32_system_tb/iSoC/pc_fetch
add wave -noupdate /rv32_system_tb/iSoC/code_fetch
add wave -noupdate /rv32_system_tb/iSoC/data_addr
add wave -noupdate /rv32_system_tb/iSoC/data_fetch
add wave -noupdate /rv32_system_tb/iSoC/data_store
add wave -noupdate /rv32_system_tb/iSoC/data_enable
add wave -noupdate /rv32_system_tb/iSoC/data_read
add wave -noupdate -divider Debug
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {795000 ps} 0} {{Cursor 2} {1015000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
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
WaveRestoreZoom {0 ps} {1065750 ps}
