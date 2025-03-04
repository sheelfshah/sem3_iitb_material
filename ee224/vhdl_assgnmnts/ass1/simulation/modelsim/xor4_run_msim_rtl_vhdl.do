transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/xor4.vhd}
vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/MUX.vhd}

vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/TB2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  TB2

add wave *
view structure
view signals
run -all
