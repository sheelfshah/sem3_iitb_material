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

-- DATE "10/25/2020 18:03:37"

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

ENTITY 	xor4 IS
    PORT (
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	IN4 : IN std_logic;
	OUT1 : BUFFER std_logic
	);
END xor4;

-- Design Ports Information
-- OUT1	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN4	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF xor4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_IN4 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \IN4~input_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \m7|final_or|OUT2~0_combout\ : std_logic;
SIGNAL \ALT_INV_IN2~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1~input_o\ : std_logic;
SIGNAL \ALT_INV_IN4~input_o\ : std_logic;
SIGNAL \ALT_INV_IN3~input_o\ : std_logic;

BEGIN

ww_IN1 <= IN1;
ww_IN2 <= IN2;
ww_IN3 <= IN3;
ww_IN4 <= IN4;
OUT1 <= ww_OUT1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IN2~input_o\ <= NOT \IN2~input_o\;
\ALT_INV_IN1~input_o\ <= NOT \IN1~input_o\;
\ALT_INV_IN4~input_o\ <= NOT \IN4~input_o\;
\ALT_INV_IN3~input_o\ <= NOT \IN3~input_o\;

-- Location: IOOBUF_X4_Y0_N19
\OUT1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|final_or|OUT2~0_combout\,
	devoe => ww_devoe,
	o => ww_OUT1);

-- Location: IOIBUF_X4_Y0_N35
\IN2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\IN3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN3,
	o => \IN3~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\IN4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN4,
	o => \IN4~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\IN1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: LABCELL_X4_Y1_N33
\m7|final_or|OUT2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|final_or|OUT2~0_combout\ = ( \IN4~input_o\ & ( \IN1~input_o\ & ( !\IN2~input_o\ $ (!\IN3~input_o\) ) ) ) # ( !\IN4~input_o\ & ( \IN1~input_o\ & ( !\IN2~input_o\ $ (\IN3~input_o\) ) ) ) # ( \IN4~input_o\ & ( !\IN1~input_o\ & ( !\IN2~input_o\ $ 
-- (\IN3~input_o\) ) ) ) # ( !\IN4~input_o\ & ( !\IN1~input_o\ & ( !\IN2~input_o\ $ (!\IN3~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2~input_o\,
	datac => \ALT_INV_IN3~input_o\,
	datae => \ALT_INV_IN4~input_o\,
	dataf => \ALT_INV_IN1~input_o\,
	combout => \m7|final_or|OUT2~0_combout\);

-- Location: LABCELL_X51_Y24_N0
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


