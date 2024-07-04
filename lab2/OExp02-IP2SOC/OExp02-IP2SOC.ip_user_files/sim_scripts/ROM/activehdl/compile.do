transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/ZJUlesson/24Spring/CO/lab2/OExp02-IP2SOC/OExp02-IP2SOC.cache/compile_simlib/activehdl}
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -v2k5 -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../../OExp02-IP2SOC.gen/sources_1/ip/ROM/sim/ROM.v" \


vlog -work xil_defaultlib \
"glbl.v"

