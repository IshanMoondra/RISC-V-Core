#!/bin/bash

source /raid/synopsys/synopsyssetup.bashrc
cd /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS
Verdi -sv -f /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/design_files.f -ssf /filespace/i/imoondra/GlobalFoundries_RTL_Flow/Tapeout_V1/VCS/soc_v1.fsdb &