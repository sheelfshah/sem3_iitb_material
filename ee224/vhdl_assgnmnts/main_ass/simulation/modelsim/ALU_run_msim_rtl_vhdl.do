transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/NAND_gate.vhd}
vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/ALU.vhd}
vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/XOR_gate.vhd}
vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/KS16bitAdder.vhd}
vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/LogicGates.vhd}

vcom -93 -work work {D:/drbha/sem3_iitb_material/ee224/vhdl_assgnmnts/main_ass/TB_ALU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  TB_ALU

add wave *
view structure
view signals
run -all
