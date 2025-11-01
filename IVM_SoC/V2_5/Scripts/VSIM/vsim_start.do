vsim -voptargs=+acc work.soc_tb_v1
# vsim work.soc_tb_v1 -coverage -voptargs="cover+sbceft"

view -new wave
do wave1.do
view -new wave
do wave2.do
view -new wave
do wave3.do
view -new wave
do wave4.do
view -new wave
do wave5.do
view -new wave
do wave6.do
do sram0.do
