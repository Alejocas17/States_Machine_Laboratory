onerror {quit -f}
vlib work
vlog -work work Laboratorio3.vo
vlog -work work Laboratorio3.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Esquema_FF_vlg_vec_tst
vcd file -direction Laboratorio3.msim.vcd
vcd add -internal Esquema_FF_vlg_vec_tst/*
vcd add -internal Esquema_FF_vlg_vec_tst/i1/*
add wave /*
run -all
