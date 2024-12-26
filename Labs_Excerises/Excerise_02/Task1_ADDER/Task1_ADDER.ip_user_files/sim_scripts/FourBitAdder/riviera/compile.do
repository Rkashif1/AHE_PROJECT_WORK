transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/FullAdder/Task1_ADDER/Task1_ADDER.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/xlconcat_v2_1_4
vlib riviera/xlconstant_v1_1_7

vcom -work xil_defaultlib -93  -incr \
"../../../bd/FourBitAdder/ipshared/303e/src/OneBitAdder.vhd" \
"../../../bd/FourBitAdder/ip/FourBitAdder_OneBitAdder_0_0/sim/FourBitAdder_OneBitAdder_0_0.vhd" \
"../../../bd/FourBitAdder/ip/FourBitAdder_OneBitAdder_0_1/sim/FourBitAdder_OneBitAdder_0_1.vhd" \
"../../../bd/FourBitAdder/ip/FourBitAdder_OneBitAdder_0_2/sim/FourBitAdder_OneBitAdder_0_2.vhd" \
"../../../bd/FourBitAdder/ip/FourBitAdder_OneBitAdder_0_3/sim/FourBitAdder_OneBitAdder_0_3.vhd" \

vlog -work xlslice_v1_0_2  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../../Task1_ADDER.gen/sources_1/bd/FourBitAdder/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_0_0/sim/FourBitAdder_xlslice_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../../Task1_ADDER.gen/sources_1/bd/FourBitAdder/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlconcat_0_0/sim/FourBitAdder_xlconcat_0_0.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_0_1/sim/FourBitAdder_xlslice_0_1.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_0_2/sim/FourBitAdder_xlslice_0_2.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_0_3/sim/FourBitAdder_xlslice_0_3.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_0_4/sim/FourBitAdder_xlslice_0_4.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_1_0/sim/FourBitAdder_xlslice_1_0.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_2_0/sim/FourBitAdder_xlslice_2_0.v" \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlslice_3_0/sim/FourBitAdder_xlslice_3_0.v" \

vlog -work xlconstant_v1_1_7  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../../Task1_ADDER.gen/sources_1/bd/FourBitAdder/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlslice_v1_0_2 -l xlconcat_v2_1_4 -l xlconstant_v1_1_7 \
"../../../bd/FourBitAdder/ip/FourBitAdder_xlconstant_0_0/sim/FourBitAdder_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/FourBitAdder/sim/FourBitAdder.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

