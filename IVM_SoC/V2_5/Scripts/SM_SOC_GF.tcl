source /raid/GF22FDX_PLUS/e_chip_II/syn/risc-v_II/syn/scripts/values.tcl

############################################

set target_library "$libraries"

set link_library "$libraries"

set NUM_CORES 8
set_host_options -max_cores $NUM_CORES
set SOC_HOME $env(SOC_HOME)
set RTL_ROOT $env(RTL_ROOT)
set DESIGN_NAME soc_fpga

analyze -format sverilog -lib work -vcs "-f $SOC_HOME/design_files_v2.f"

elaborate $DESIGN_NAME

link
list_designs
current_design $DESIGN_NAME

#################################################################################

set BUF_CELL UDB116SVT36_BUF_2
set CLK_BUF UDB116SVT36_BUF_2
# Design rule constraint
set_max_capacitance 0.2 			$DESIGN_NAME
set_max_fanout 15 						$DESIGN_NAME
set high_fanout_net_threshold 40000
# set_max_area 0.0 
# set PERIOD_CLK 0.75	# Negative Slack of 0.15 ns
set PERIOD_CLK 0.95
# set PERIOD_CLK 1.00
# set PERIOD_CLK 1.33
# set PERIOD_CLK 2.50

# I0 drive & load
set_driving_cell -lib_cell $BUF_CELL -pin X [all_inputs]
set_driving_cell -lib_cell $CLK_BUF -pin X [get_ports "clk"]

# Clock definitioncreate clock -period $PERIOD CLK -name clkin -waveform [list 0 [expr 0.5*$PERIOD CLK]] [get port clk
create_clock -period $PERIOD_CLK -name clkin -waveform [list 0 [expr 0.5*$PERIOD_CLK]] [get_port clk]

set_clock_uncertainty -setup 0.2 clkin
set_clock_uncertainty -hold 0.25 clkin
set_clock_groups -asynchronous -group [get_clocks clkin]

# Timing constraint

set_max_transition 0.1 -clock_path [all_clocks]
set_max_transition 0.18 -data_path [all_clocks]

#################
# 0thers

#Case analysis
# set false path -through Iget pins i dig top/i dig core/i mtp ctrl top/i AEONFTP AH 64R16CHOPOWOXOY M7P0/READYset ideal network [get ports "clk"]
set_ideal_network [get_ports "resetn"]

set_dont_touch [get_designs saduvssd8ULTRALOW1p2048x32m16b1w0c1p1d0l0rm3sdrw11_core -quiet]
set_dont_touch [get_designs saduvssd8ULTRALOW1p2048x32m16b1w1c1p1d0l0rm3sdrw11_core -quiet]
set_dont_touch [get_designs saduvssd8ULTRALOW1p4096x32m16b1w1c1p1d0l0rm3sdrw11_core -quiet]
set_dont_touch [get_designs saduvssd8ULTRALOW1p32768x64m16b8w1c1p0d0l0rm3sdrw11_core -quiet]
set_dont_touch [get_designs *saduvssd8ULTRALOW1p* -quiet]

# set_dont_touch [get_designs *saduvssd8ULTRALOW1p6* -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p256x8m4b1w0c0p0d0l0rm3sdrw01_core  -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p256x32m8b1w0c0p0d0l0rm3sdrw01_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p4096x32m16b1w0c1p1d0l0rm3sdrw11_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p4096x32m16b1w1c1p1d0l0rm3sdrw11_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p1024x32m16b1w0c1p1d0l0rm3sdrw11_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p1024x32m16b1w1c1p1d0l0rm3sdrw11_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p512x32m16b1w0c1p1d0l0rm3sdrw11_core -quiet]
# set_dont_touch [get_designs saduvssd8ULTRALOW1p512x32m16b1w1c1p1d0l0rm3sdrw11_core -quiet]
# saduvssd8ULTRALOW1
########################################################################################

check_design
# set_app_var spg_congestion_placement_in_incremental_compile true
# compile_ultra -no_autoungroup
compile -map_effort high
# compile -map_effort high -incremental_mapping

# compile -map_effort high -incremental_mapping
# compile -map_effort high -incremental_mapping

# compile -hierarchy -incremental -no_autofix -no_autofix_violations -no_autofix_warnings -no_autofix_errors
set_fix_hold clkin
# set compile_top_all_paths true

# compile
# compile -map_effort high -incremental_mapping
# comments: this seems useful than the -ultra method, may be it is due to the macro, when there are macros, it will ignore the no-autogroup;
# compile -map_effort high -incremental_mapping
# compile_ultra -no_autoungroup  -incremental -only_design_rule
# compile_ultra -no_autoungroup
compile -map_effort high
# compile -map_effort high -incremental_mapping

# compile -map_effort high -incremental_mapping
# compile -map_effort high -incremental_mapping
# compile_ultra -no_autoungroup  -incremental -only_design_rule
# use ultra it will be the hierachy default setting inside;
# # compile_ultra -spg -no_autoungroup -congestion
# compile_ultra -no_autoungroup  -incremental -only_design_rule
# oh no, worser than before!!!!
# compile_ultra -no_autoungroup: -0.41
# go back to compile

##############################
# set strategy_flag compile_

### Writing the Area, Min & Max Timing Reports to files
report_qor > 													$SOC_HOME/Reports/${DESIGN_NAME}_qor_2.rpt
report_power -analysis_effort high > 	$SOC_HOME/Reports/${DESIGN_NAME}_power_2.rpt
report_area > 												$SOC_HOME/Reports/${DESIGN_NAME}_area_2.rpt
report_timing -delay max > 						$SOC_HOME/Reports/${DESIGN_NAME}_timing_max_2.rpt
report_timing -delay min > 						$SOC_HOME/Reports/${DESIGN_NAME}_timing_min_2.rpt
report_power -hier > 									$SOC_HOME/Reports/${DESIGN_NAME}_hier_power_2.rpt
report_area -hier > 									$SOC_HOME/Reports/${DESIGN_NAME}_hier_area_2.rpt

change_names
### Write out the netlist
write_file -hierarchy -format verilog -output $SOC_HOME/Netlists/${DESIGN_NAME}_2.v
write_sdc 																		$SOC_HOME/Netlists/${DESIGN_NAME}_2.sdc
# file copy -force ./${DESIGN_NAME}.v   /filespace/s/smiao23/ICC2-RM_W-2024.09/syn/gates
# file copy  -force ./${DESIGN_NAME}.sdc /filespace/s/smiao23/ICC2-RM_W-2024.09/syn/gates
all_high_fanout -net -threshold 500
quit
