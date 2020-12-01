transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU.vho}

vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/TB_NAND.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  TB_NAND

add wave *
view structure
view signals
run -all
