onerror {exit -code 1}
vlib work
vcom -work work Complex_Adder.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Complex_Adder_vhd_vec_tst/i1=Complex_Adder_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Complex_Adder_vhd_vec_tst
vcd file -direction Complex_Adder.msim.vcd
vcd add -internal Complex_Adder_vhd_vec_tst/*
vcd add -internal Complex_Adder_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
