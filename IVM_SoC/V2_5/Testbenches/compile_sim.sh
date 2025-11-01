#!/bin/bash

source /raid/synopsys/synopsyssetup.bashrc
cd /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS
rm -rf /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/ivm_soc.out.daidir/.vcs.timestamp
clear
vcs -sverilog -full64 -debug_all -timescale=1ns/1ns -cm line+cond+fsm+tgl -l /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/compile.log -file /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/design_files.f -o /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/ivm_soc.out 
/filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/ivm_soc.out -cm line+cond+fsm+tgl -cm_name test_run -cm_dir /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/coverage -l /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/sim.log 
echo Done