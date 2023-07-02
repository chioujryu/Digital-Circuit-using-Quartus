onerror {exit -code 1}
vlib work
vcom -work work EX09.vho
vcom -work work Moore_EX.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Moore_EX_vhd_vec_tst
vcd file -direction EX09.msim.vcd
vcd add -internal Moore_EX_vhd_vec_tst/*
vcd add -internal Moore_EX_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
