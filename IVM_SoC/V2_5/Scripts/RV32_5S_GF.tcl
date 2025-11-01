# source ./scripts/values.tcl

#############################################

# set target_library "$libraries"

# set link_library "$libraries"

analyze -format sverilog -lib work -vcs "-f /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/RISC-V-Core/IVM_SoC/V2/design_files_core.f"

# read_file -format sverilog "/filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/RISC-V-Core/IVM_SoC/V2/design_files_core.f"
read_file -format sverilog {    ./Designs/CPU/rv32_if_id_queue.sv\
                                ./Designs/CPU/rv32_id_ex_queue.sv\
                                ./Designs/CPU/rv32_ex_mem_queue.sv\
                                ./Designs/CPU/rv32_mem_wb_queue.sv\
                                ./Designs/CPU/rv32_pc_v2.sv\
                                ./Designs/CPU/forwarding_unit_v2.sv\
                                ./Designs/CPU/hazard_detection.sv\
                                ./Designs/CPU/interrupt_handler.sv\
                                ./Designs/CPU/branch_resolver_v2.sv\
                                ./Designs/CPU/rv32_cu_v2.sv\
                                ./Designs/CPU/rv32_register_file.sv\
                                ./Designs/CPU/rv32_alu_add_sub.sv\
                                ./Designs/CPU/rv32_alu_comp.sv\
                                ./Designs/CPU/rv32_alu_logical.sv\
                                ./Designs/CPU/rv32_alu_v2.sv\
                                ./Designs/CPU/rv32_barrel_shifter.sv\
                                ./Designs/CPU/write_back.sv\
                                ./Designs/CPU/rv32_load_store_unit.sv\
                                ./Designs/CPU/rv32_cpu_top.sv }

link
list_designs
set DESIGN_NAME rv32_cpu_top
current_design $DESIGN_NAME

#################################################################################

set BUF_CELL UDB116SVT36_BUF_2
set CLK_BUF UDB116SVT36_BUF_2
# Design rule constraint
set_max_capacitance 0.2 $DESIGN_NAME
set_max_fanout 15 $DESIGN_NAME
# set_max_area 0.0
# set PERIOD_CLK 3
set PERIOD_CLK 1.00
# set PERIOD_CLK 1.00

# I0 drive & load
set_driving_cell -lib_cell $BUF_CELL -pin Y [all_inputs]
set_driving_cell -lib_cell $CLK_BUF -pin Y [get_ports "clk"]
# Clock definition

create_clock -period $PERIOD_CLK -name clk -waveform [list 0 [expr 0.5*$PERIOD_CLK]] [get_port clk]

# set_clock_uncertainty -setup 0.2 clk
# set_clock_uncertainty -hold 0.25 clk
set_clock_uncertainty -setup 0.1 clk
set_clock_uncertainty -hold 0.125 clk
set_clock_groups -asynchronous -group [get_clocks clk]

# Timing constraint

# set_max_transition 1.0 -clock_path [all_clocks]
# set_max_transition 1.8 -data_path [all_clocks]
set_max_transition 0.2 -clock_path [all_clocks]
set_max_transition 0.3 -data_path [all_clocks]
#################
# 0thers

#Case analysis
# set false path -through Iget pins i dig top/i dig core/i mtp ctrl top/i AEONFTP AH 64R16CHOPOWOXOY M7P0/READYset ideal network [get ports "clk"]
set_ideal_network [get_ports "rst_n"]

set_dont_touch [get_designs *saduvssd8ULTRALOW1p6* -quiet]
# saduvssd8ULTRALOW1
########################################################################################

check_design
# set_app_var spg_congestion_placement_in_incremental_compile true

compile -map_effort high
compile -map_effort high -incremental_mapping

# compile -hierarchy -incremental -no_autofix -no_autofix_violations -no_autofix_warnings -no_autofix_errors
set_fix_hold clk
# set compile_top_all_paths true

###Flatten the Heirarchy
ungroup -all -flatten

# compile -map_effort high
# compile -map_effort high -incremental_mapping
# compile -map_effort high -incremental_mapping
# compile -map_effort high -incremental_mapping
# comments: this seems useful than the -ultra method, may be it is due to the macro, when there are macros, it will ignore the no-autogroup;
# compile -map_effort high -incremental_mapping
# compile_ultra -no_autoungroup  -incremental -only_design_rule
compile_ultra -no_autoungroup -timing_high_effort_script 
compile_ultra -no_autoungroup -incremental -timing_high_effort_script

compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
compile_ultra -no_autoungroup -incremental -timing_high_effort_script

compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
compile_ultra -no_autoungroup -incremental -timing_high_effort_script

compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -timing_high_effort_script 
# compile_ultra -no_autoungroup -incremental -timing_high_effort_script

# compile_ultra -no_autoungroup -incremental -area_high_effort_script 
# use ultra it will be the hierachy default setting inside;
# # compile_ultra -spg -no_autoungroup -congestion
# compile_ultra -no_autoungroup  -incremental -only_design_rule
# oh no, worser than before!!!!
# compile_ultra -no_autoungroup: -0.41
# go back to compile

##############################
set strategy_flag compile_

### Writing the Area, Min & Max Timing Reports to files
report_qor > ./Reports/${strategy_flag}RV32_5S_GF22_qor.rpt
report_power -analysis_effort high > ./Reports/${strategy_flag}RV32_5S_GF22_power.rpt
report_area > ./Reports/${strategy_flag}RV32_5S_GF22_area.rpt
report_timing -delay max > ./Reports/RV32_5S_GF22_timing_max.rpt
report_timing -delay min > ./Reports/RV32_5S_GF22_timing_min.rpt

change_names
### Write out the netlist
write_file -hierarchy -format verilog -output ./Netlists/${DESIGN_NAME}.v
# write_sdc ./${DESIGN_NAME}.sdc

#quit