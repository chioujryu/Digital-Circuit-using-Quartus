vcom -work work Counter4B.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Counter4B_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
