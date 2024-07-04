transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/ZJUlesson/24Spring/CO/lab5/SOC-stall/OExp02-IP2SOC.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../../OExp02-IP2SOC.gen/sources_1/ip/ROM/sim/ROM.v" \


vlog -work xil_defaultlib \
"glbl.v"

