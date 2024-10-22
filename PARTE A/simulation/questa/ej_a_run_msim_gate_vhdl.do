transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ej_a.vho}

vcom -93 -work work {Z:/Desktop/lab_fpga_CYCLONE_IV/PARTE A/testbench_ej_a.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  testbench_ej_a

add wave *
view structure
view signals
run -all
