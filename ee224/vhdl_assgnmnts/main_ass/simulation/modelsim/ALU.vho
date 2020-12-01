-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/30/2020 20:33:33"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	XOR_gate IS
    PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	O : OUT STD.STANDARD.bit
	);
END XOR_gate;

-- Design Ports Information
-- O	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF XOR_gate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_O : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \final_or|OUT2~0_combout\ : std_logic;
SIGNAL \ALT_INV_I1~input_o\ : std_logic;
SIGNAL \ALT_INV_I0~input_o\ : std_logic;

BEGIN

ww_I0 <= I0;
ww_I1 <= I1;
O <= IEEE.STD_LOGIC_1164.TO_BIT(ww_O);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_I1~input_o\ <= NOT \I1~input_o\;
\ALT_INV_I0~input_o\ <= NOT \I0~input_o\;

-- Location: IOOBUF_X89_Y8_N5
\O~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \final_or|OUT2~0_combout\,
	devoe => ww_devoe,
	o => ww_O);

-- Location: IOIBUF_X89_Y8_N38
\I1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\I0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LABCELL_X88_Y8_N0
\final_or|OUT2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \final_or|OUT2~0_combout\ = ( \I0~input_o\ & ( !\I1~input_o\ ) ) # ( !\I0~input_o\ & ( \I1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_I1~input_o\,
	datae => \ALT_INV_I0~input_o\,
	combout => \final_or|OUT2~0_combout\);

-- Location: LABCELL_X64_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


