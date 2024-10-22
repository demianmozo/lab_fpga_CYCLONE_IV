onerror {exit -code 1}
vlib work
vcom -work work ej_a.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ej_a_vhd_vec_tst/i1=ej_a_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ej_a_vhd_vec_tst
vcd file -direction ej_a.msim.vcd
vcd add -internal ej_a_vhd_vec_tst/*
vcd add -internal ej_a_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
