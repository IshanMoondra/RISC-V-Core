###################################################################

# Created by write_sdc on Tue Jan 14 19:50:34 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_wire_load_model -name TSMC32K_Lowk_Conservative -library tcbn40lpbwptc
set_max_transition 0.05 [current_design]
set_driving_cell -min -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports     \
rst_n]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[31]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[30]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[29]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[28]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[27]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[26]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[25]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[24]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[23]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[22]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[21]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[20]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[19]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[18]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[17]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[16]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[15]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[14]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[13]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[12]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[11]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[10]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[9]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[8]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[7]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[6]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[5]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[4]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[3]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[2]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[1]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{code_fetch[0]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[31]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[30]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[29]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[28]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[27]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[26]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[25]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[24]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[23]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[22]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[21]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[20]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[19]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[18]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[17]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[16]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[15]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[14]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[13]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[12]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[11]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[10]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[9]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[8]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[7]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[6]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[5]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[4]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[3]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[2]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[1]}]
set_driving_cell -lib_cell ND2D2BWP -library tcbn40lpbwptc [get_ports          \
{data_fetch[0]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[31]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[30]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[29]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[28]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[27]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[26]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[25]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[24]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[23]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[22]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[21]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[20]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[19]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[18]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[17]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[16]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[15]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[14]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[13]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[12]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[11]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[10]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[9]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[8]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[7]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[6]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[5]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[4]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[3]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[2]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[1]}]
set_load -pin_load 0.1 [get_ports {pc_fetch[0]}]
set_load -pin_load 0.1 [get_ports {data_addr[31]}]
set_load -pin_load 0.1 [get_ports {data_addr[30]}]
set_load -pin_load 0.1 [get_ports {data_addr[29]}]
set_load -pin_load 0.1 [get_ports {data_addr[28]}]
set_load -pin_load 0.1 [get_ports {data_addr[27]}]
set_load -pin_load 0.1 [get_ports {data_addr[26]}]
set_load -pin_load 0.1 [get_ports {data_addr[25]}]
set_load -pin_load 0.1 [get_ports {data_addr[24]}]
set_load -pin_load 0.1 [get_ports {data_addr[23]}]
set_load -pin_load 0.1 [get_ports {data_addr[22]}]
set_load -pin_load 0.1 [get_ports {data_addr[21]}]
set_load -pin_load 0.1 [get_ports {data_addr[20]}]
set_load -pin_load 0.1 [get_ports {data_addr[19]}]
set_load -pin_load 0.1 [get_ports {data_addr[18]}]
set_load -pin_load 0.1 [get_ports {data_addr[17]}]
set_load -pin_load 0.1 [get_ports {data_addr[16]}]
set_load -pin_load 0.1 [get_ports {data_addr[15]}]
set_load -pin_load 0.1 [get_ports {data_addr[14]}]
set_load -pin_load 0.1 [get_ports {data_addr[13]}]
set_load -pin_load 0.1 [get_ports {data_addr[12]}]
set_load -pin_load 0.1 [get_ports {data_addr[11]}]
set_load -pin_load 0.1 [get_ports {data_addr[10]}]
set_load -pin_load 0.1 [get_ports {data_addr[9]}]
set_load -pin_load 0.1 [get_ports {data_addr[8]}]
set_load -pin_load 0.1 [get_ports {data_addr[7]}]
set_load -pin_load 0.1 [get_ports {data_addr[6]}]
set_load -pin_load 0.1 [get_ports {data_addr[5]}]
set_load -pin_load 0.1 [get_ports {data_addr[4]}]
set_load -pin_load 0.1 [get_ports {data_addr[3]}]
set_load -pin_load 0.1 [get_ports {data_addr[2]}]
set_load -pin_load 0.1 [get_ports {data_addr[1]}]
set_load -pin_load 0.1 [get_ports {data_addr[0]}]
set_load -pin_load 0.1 [get_ports flush]
set_load -pin_load 0.1 [get_ports stall]
set_load -pin_load 0.1 [get_ports halt]
create_clock [get_ports clk]  -period 1.5  -waveform {0 0.75}
set_clock_uncertainty 0.08  [get_clocks clk]
set_input_delay -clock clk  0.2  [get_ports rst_n]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[31]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[30]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[29]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[28]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[27]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[26]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[25]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[24]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[23]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[22]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[21]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[20]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[19]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[18]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[17]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[16]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[15]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[14]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[13]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[12]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[11]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[10]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[9]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[8]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[7]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[6]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[5]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[4]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[3]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[2]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[1]}]
set_input_delay -clock clk  0.2  [get_ports {code_fetch[0]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[31]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[30]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[29]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[28]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[27]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[26]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[25]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[24]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[23]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[22]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[21]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[20]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[19]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[18]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[17]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[16]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[15]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[14]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[13]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[12]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[11]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[10]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[9]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[8]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[7]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[6]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[5]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[4]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[3]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[2]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[1]}]
set_input_delay -clock clk  0.2  [get_ports {data_fetch[0]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[31]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[30]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[29]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[28]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[27]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[26]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[25]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[24]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[23]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[22]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[21]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[20]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[19]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[18]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[17]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[16]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[15]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[14]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[13]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[12]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[11]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[10]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[9]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[8]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[7]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[6]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[5]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[4]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[3]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[2]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[1]}]
set_output_delay -clock clk  0.2  [get_ports {pc_fetch[0]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[31]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[30]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[29]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[28]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[27]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[26]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[25]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[24]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[23]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[22]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[21]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[20]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[19]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[18]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[17]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[16]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[15]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[14]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[13]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[12]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[11]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[10]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[9]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[8]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[7]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[6]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[5]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[4]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[3]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[2]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[1]}]
set_output_delay -clock clk  0.2  [get_ports {data_addr[0]}]
set_output_delay -clock clk  0.2  [get_ports flush]
set_output_delay -clock clk  0.2  [get_ports stall]
set_output_delay -clock clk  0.2  [get_ports halt]
set_drive 0.0001  [get_ports rst_n]
