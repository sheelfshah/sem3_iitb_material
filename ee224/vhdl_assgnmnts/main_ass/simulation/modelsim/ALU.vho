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

-- DATE "12/03/2020 21:24:10"

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

ENTITY 	ALU IS
    PORT (
	IN1 : IN STD.STANDARD.bit_vector(15 DOWNTO 0);
	IN2 : IN STD.STANDARD.bit_vector(15 DOWNTO 0);
	S0 : IN std_logic;
	S1 : IN std_logic;
	Z : OUT STD.STANDARD.bit_vector(15 DOWNTO 0);
	Cout : OUT STD.STANDARD.bit;
	zero_bit : OUT STD.STANDARD.bit
	);
END ALU;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero_bit	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[13]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[13]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2[15]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1[15]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IN2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_Z : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_zero_bit : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IN1[0]~input_o\ : std_logic;
SIGNAL \IN2[0]~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \IN1[1]~input_o\ : std_logic;
SIGNAL \IN2[1]~input_o\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \IN2[2]~input_o\ : std_logic;
SIGNAL \add_part|stg1:0:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \sub_part|finalstg:6:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \IN1[2]~input_o\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:0:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:0:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN1[3]~input_o\ : std_logic;
SIGNAL \sub_part|finalstg:7:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \IN2[3]~input_o\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \add_part|stg2:1:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:1:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \xor_part|zero_bit~0_combout\ : std_logic;
SIGNAL \sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:4:OrS_ins|y~combout\ : std_logic;
SIGNAL \IN2[4]~input_o\ : std_logic;
SIGNAL \IN1[4]~input_o\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \IN1[5]~input_o\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:2:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:2:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:0:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:5:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \IN2[5]~input_o\ : std_logic;
SIGNAL \Z~5_combout\ : std_logic;
SIGNAL \IN1[6]~input_o\ : std_logic;
SIGNAL \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:3:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:6:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \IN2[6]~input_o\ : std_logic;
SIGNAL \add_part|stg2:3:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:3:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:1:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \Z~6_combout\ : std_logic;
SIGNAL \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:4:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:4:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:7:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:4:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:4:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:2:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN2[7]~input_o\ : std_logic;
SIGNAL \IN1[7]~input_o\ : std_logic;
SIGNAL \Z~7_combout\ : std_logic;
SIGNAL \IN2[8]~input_o\ : std_logic;
SIGNAL \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:5:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:5:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:3:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN1[8]~input_o\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:5:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:5:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:8:OrS_ins|y~combout\ : std_logic;
SIGNAL \Z~8_combout\ : std_logic;
SIGNAL \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|y~3_combout\ : std_logic;
SIGNAL \IN1[9]~input_o\ : std_logic;
SIGNAL \add_part|stg2:6:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:6:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:0:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN2[9]~input_o\ : std_logic;
SIGNAL \Z~9_combout\ : std_logic;
SIGNAL \IN2[10]~input_o\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \IN1[10]~input_o\ : std_logic;
SIGNAL \add_part|stg2:7:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:7:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \Z~10_combout\ : std_logic;
SIGNAL \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:8:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|And0_instance|y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN1[11]~input_o\ : std_logic;
SIGNAL \sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|y~3_combout\ : std_logic;
SIGNAL \IN2[11]~input_o\ : std_logic;
SIGNAL \Z~11_combout\ : std_logic;
SIGNAL \IN2[12]~input_o\ : std_logic;
SIGNAL \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:9:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \add_part|stg2:9:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:3:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:3:prefixcomp|Orga|y~combout\ : std_logic;
SIGNAL \IN1[12]~input_o\ : std_logic;
SIGNAL \Z~12_combout\ : std_logic;
SIGNAL \IN2[13]~input_o\ : std_logic;
SIGNAL \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|y~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|y~4_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|y~2_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|y~3_combout\ : std_logic;
SIGNAL \IN1[13]~input_o\ : std_logic;
SIGNAL \Z~13_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \IN2[14]~input_o\ : std_logic;
SIGNAL \IN1[14]~input_o\ : std_logic;
SIGNAL \add_part|stg42:5:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:5:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:5:prefixcomp|Orga|y~2_combout\ : std_logic;
SIGNAL \Z~14_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|y~3_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|y~2_combout\ : std_logic;
SIGNAL \IN1[15]~input_o\ : std_logic;
SIGNAL \IN2[15]~input_o\ : std_logic;
SIGNAL \Z~15_combout\ : std_logic;
SIGNAL \add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:7:prefixcomp|Orga|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\ : std_logic;
SIGNAL \Cout~2_combout\ : std_logic;
SIGNAL \Cout~3_combout\ : std_logic;
SIGNAL \sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:16:OrS_ins|y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:16:OrS_ins|y~1_combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \Cout~4_combout\ : std_logic;
SIGNAL \xor_part|zero_bit~combout\ : std_logic;
SIGNAL \nand_part|zero_bit~1_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~2_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~4_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~3_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~5_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~6_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~0_combout\ : std_logic;
SIGNAL \nand_part|zero_bit~7_combout\ : std_logic;
SIGNAL \add_part|finalstg:7:XorS_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~0_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~1_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~2_combout\ : std_logic;
SIGNAL \add_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:10:XorS_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~3_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~4_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|y~combout\ : std_logic;
SIGNAL \temp_zero2[15]~0_combout\ : std_logic;
SIGNAL \temp_zero2[15]~1_combout\ : std_logic;
SIGNAL \temp_zero2[15]~2_combout\ : std_logic;
SIGNAL \temp_zero2[15]~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ : std_logic;
SIGNAL \temp_zero2[15]~4_combout\ : std_logic;
SIGNAL \temp_zero2[15]~5_combout\ : std_logic;
SIGNAL \zero_bit~0_combout\ : std_logic;
SIGNAL temp_zero2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg1:11:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:14:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|XorGa:10:Xor_instance|AND2_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|ALT_INV_y~4_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:3:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:7:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:12:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:6:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:5:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:0:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:3:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:8:OrS_ins|ALT_INV_y~combout\ : std_logic;
SIGNAL \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|stg32:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg32:2:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:7:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:1:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg32:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:6:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg32:0:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg32:0:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:5:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:4:OrS_ins|ALT_INV_y~combout\ : std_logic;
SIGNAL \sub_part|stg1:2:prefixcomp|Andgat|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_part|ALT_INV_zero_bit~0_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:2:XorS_instance|AND2_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\ : std_logic;
SIGNAL \sub_part|finalstg:6:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \ALT_INV_IN1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1[0]~input_o\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~4_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|zlogic:15:Orz0_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:7:XorS_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:10:XorS_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL ALT_INV_temp_zero2 : std_logic_vector(15 DOWNTO 15);
SIGNAL \ALT_INV_temp_zero2[15]~5_combout\ : std_logic;
SIGNAL \ALT_INV_temp_zero2[15]~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp_zero2[15]~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_zero2[15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_zero2[15]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_zero2[15]~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_part|ALT_INV_zero_bit~combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~7_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~6_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~5_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~4_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~3_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~2_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~1_combout\ : std_logic;
SIGNAL \nand_part|ALT_INV_zero_bit~0_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~3_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:7:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:16:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:16:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|ALT_INV_y~2_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\ : std_logic;

BEGIN

ww_IN1 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(IN1);
ww_IN2 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(IN2);
ww_S0 <= S0;
ww_S1 <= S1;
Z <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_Z);
Cout <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Cout);
zero_bit <= IEEE.STD_LOGIC_1164.TO_BIT(ww_zero_bit);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~2_combout\ <= NOT \add_part|stg42:5:prefixcomp|Orga|y~2_combout\;
\add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg42:5:prefixcomp|Orga|y~1_combout\;
\add_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\;
\add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:5:prefixcomp|Orga|y~0_combout\;
\add_part|stg1:11:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:14:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:14:OrS_ins|y~2_combout\;
\sub_part|finalstg:14:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:14:OrS_ins|y~1_combout\;
\sub_part|finalstg:14:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:14:OrS_ins|y~0_combout\;
\add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~3_combout\ <= NOT \add_part|stg42:4:prefixcomp|Orga|y~3_combout\;
\add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~2_combout\ <= NOT \add_part|stg42:4:prefixcomp|Orga|y~2_combout\;
\add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg42:4:prefixcomp|Orga|y~1_combout\;
\add_part|XorGa:10:Xor_instance|AND2_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\;
\add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:4:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:13:OrS_ins|ALT_INV_y~4_combout\ <= NOT \sub_part|finalstg:13:OrS_ins|y~4_combout\;
\sub_part|finalstg:13:OrS_ins|ALT_INV_y~3_combout\ <= NOT \sub_part|finalstg:13:OrS_ins|y~3_combout\;
\sub_part|finalstg:13:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:13:OrS_ins|y~2_combout\;
\sub_part|finalstg:13:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:13:OrS_ins|y~1_combout\;
\sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:13:OrS_ins|y~0_combout\;
\add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg42:3:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg42:3:prefixcomp|Orga|y~combout\;
\add_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:9:prefixcomp|Orga|y~0_combout\;
\add_part|stg42:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:3:prefixcomp|And0_instance|y~0_combout\;
\add_part|stg32:7:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:12:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:12:OrS_ins|y~2_combout\;
\sub_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:9:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:12:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:12:OrS_ins|y~1_combout\;
\sub_part|finalstg:12:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:12:OrS_ins|y~0_combout\;
\add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg42:2:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg42:2:prefixcomp|Orga|y~combout\;
\add_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:8:prefixcomp|Orga|y~0_combout\;
\add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~1_combout\ <= NOT \add_part|stg42:2:prefixcomp|And0_instance|y~1_combout\;
\add_part|stg32:6:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\;
\add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:11:OrS_ins|ALT_INV_y~3_combout\ <= NOT \sub_part|finalstg:11:OrS_ins|y~3_combout\;
\sub_part|finalstg:11:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:11:OrS_ins|y~2_combout\;
\sub_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:8:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg42:1:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg42:1:prefixcomp|Orga|y~combout\;
\add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:7:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:7:prefixcomp|Orga|y~0_combout\;
\add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~1_combout\ <= NOT \add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\;
\add_part|stg32:5:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\;
\add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\;
\sub_part|finalstg:10:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:10:OrS_ins|y~2_combout\;
\sub_part|finalstg:10:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:10:OrS_ins|y~1_combout\;
\sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:10:OrS_ins|y~0_combout\;
\sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:11:OrS_ins|y~1_combout\;
\add_part|stg42:0:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg42:0:prefixcomp|Orga|y~combout\;
\add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:6:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:6:prefixcomp|Orga|y~0_combout\;
\add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:9:OrS_ins|ALT_INV_y~3_combout\ <= NOT \sub_part|finalstg:9:OrS_ins|y~3_combout\;
\sub_part|finalstg:9:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:9:OrS_ins|y~2_combout\;
\sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg32:3:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg32:3:prefixcomp|Orga|y~combout\;
\add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:5:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:5:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\;
\sub_part|finalstg:8:OrS_ins|ALT_INV_y~combout\ <= NOT \sub_part|finalstg:8:OrS_ins|y~combout\;
\sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:5:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:5:prefixcomp|Orga|y~0_combout\;
\sub_part|stg32:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:9:OrS_ins|y~1_combout\;
\add_part|stg32:2:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg32:2:prefixcomp|Orga|y~combout\;
\add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:4:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:4:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:7:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:7:OrS_ins|y~1_combout\;
\sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:4:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:4:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg32:1:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg32:1:prefixcomp|Orga|y~combout\;
\add_part|stg32:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\;
\add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:3:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:3:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:6:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:6:OrS_ins|y~1_combout\;
\sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:11:OrS_ins|y~0_combout\;
\sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:3:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg32:0:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg32:0:prefixcomp|Orga|y~combout\;
\add_part|stg32:0:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\;
\add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg2:2:prefixcomp|Orga|y~1_combout\;
\add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:2:prefixcomp|Orga|y~0_combout\;
\add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:5:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:5:OrS_ins|y~0_combout\;
\sub_part|finalstg:9:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:9:OrS_ins|y~0_combout\;
\sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~2_combout\ <= NOT \sub_part|stg2:2:prefixcomp|Orga|y~2_combout\;
\sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:2:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:2:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg2:1:prefixcomp|Orga|y~combout\;
\add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:1:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:4:OrS_ins|ALT_INV_y~combout\ <= NOT \sub_part|finalstg:4:OrS_ins|y~combout\;
\sub_part|stg1:2:prefixcomp|Andgat|ALT_INV_y~0_combout\ <= NOT \sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\;
\xor_part|ALT_INV_zero_bit~0_combout\ <= NOT \xor_part|zero_bit~0_combout\;
\sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~2_combout\ <= NOT \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\;
\sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \sub_part|stg2:1:prefixcomp|Orga|y~1_combout\;
\sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \sub_part|stg2:1:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg2:0:prefixcomp|Orga|y~combout\;
\add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg2:0:prefixcomp|Orga|y~0_combout\;
\add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\;
\add_part|finalstg:2:XorS_instance|AND2_instance|ALT_INV_y~0_combout\ <= NOT \add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\;
\sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:7:OrS_ins|y~0_combout\;
\add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\ <= NOT \add_part|stg1:0:prefixcomp|Orga|y~combout\;
\sub_part|finalstg:6:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:6:OrS_ins|y~0_combout\;
\ALT_INV_IN1[15]~input_o\ <= NOT \IN1[15]~input_o\;
\ALT_INV_IN2[15]~input_o\ <= NOT \IN2[15]~input_o\;
\ALT_INV_IN1[14]~input_o\ <= NOT \IN1[14]~input_o\;
\ALT_INV_IN2[14]~input_o\ <= NOT \IN2[14]~input_o\;
\ALT_INV_IN1[13]~input_o\ <= NOT \IN1[13]~input_o\;
\ALT_INV_IN2[13]~input_o\ <= NOT \IN2[13]~input_o\;
\ALT_INV_IN1[12]~input_o\ <= NOT \IN1[12]~input_o\;
\ALT_INV_IN2[12]~input_o\ <= NOT \IN2[12]~input_o\;
\ALT_INV_IN1[11]~input_o\ <= NOT \IN1[11]~input_o\;
\ALT_INV_IN2[11]~input_o\ <= NOT \IN2[11]~input_o\;
\ALT_INV_IN1[10]~input_o\ <= NOT \IN1[10]~input_o\;
\ALT_INV_IN2[10]~input_o\ <= NOT \IN2[10]~input_o\;
\ALT_INV_IN1[9]~input_o\ <= NOT \IN1[9]~input_o\;
\ALT_INV_IN2[9]~input_o\ <= NOT \IN2[9]~input_o\;
\ALT_INV_IN1[8]~input_o\ <= NOT \IN1[8]~input_o\;
\ALT_INV_IN2[8]~input_o\ <= NOT \IN2[8]~input_o\;
\ALT_INV_IN1[7]~input_o\ <= NOT \IN1[7]~input_o\;
\ALT_INV_IN2[7]~input_o\ <= NOT \IN2[7]~input_o\;
\ALT_INV_IN1[6]~input_o\ <= NOT \IN1[6]~input_o\;
\ALT_INV_IN2[6]~input_o\ <= NOT \IN2[6]~input_o\;
\ALT_INV_IN1[5]~input_o\ <= NOT \IN1[5]~input_o\;
\ALT_INV_IN2[5]~input_o\ <= NOT \IN2[5]~input_o\;
\ALT_INV_IN1[4]~input_o\ <= NOT \IN1[4]~input_o\;
\ALT_INV_IN2[4]~input_o\ <= NOT \IN2[4]~input_o\;
\ALT_INV_IN1[3]~input_o\ <= NOT \IN1[3]~input_o\;
\ALT_INV_IN2[3]~input_o\ <= NOT \IN2[3]~input_o\;
\ALT_INV_IN1[2]~input_o\ <= NOT \IN1[2]~input_o\;
\ALT_INV_IN2[2]~input_o\ <= NOT \IN2[2]~input_o\;
\ALT_INV_IN1[1]~input_o\ <= NOT \IN1[1]~input_o\;
\ALT_INV_IN2[1]~input_o\ <= NOT \IN2[1]~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;
\ALT_INV_IN2[0]~input_o\ <= NOT \IN2[0]~input_o\;
\ALT_INV_IN1[0]~input_o\ <= NOT \IN1[0]~input_o\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~combout\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~4_combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~4_combout\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~3_combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~3_combout\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~2_combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~2_combout\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~1_combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~1_combout\;
\add_part|zlogic:15:Orz0_ins|ALT_INV_y~0_combout\ <= NOT \add_part|zlogic:15:Orz0_ins|y~0_combout\;
\add_part|finalstg:7:XorS_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|finalstg:7:XorS_instance|OR_instance|y~0_combout\;
\add_part|finalstg:10:XorS_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|finalstg:10:XorS_instance|OR_instance|y~0_combout\;
\add_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\;
ALT_INV_temp_zero2(15) <= NOT temp_zero2(15);
\ALT_INV_temp_zero2[15]~5_combout\ <= NOT \temp_zero2[15]~5_combout\;
\ALT_INV_temp_zero2[15]~4_combout\ <= NOT \temp_zero2[15]~4_combout\;
\ALT_INV_temp_zero2[15]~3_combout\ <= NOT \temp_zero2[15]~3_combout\;
\ALT_INV_temp_zero2[15]~2_combout\ <= NOT \temp_zero2[15]~2_combout\;
\ALT_INV_temp_zero2[15]~1_combout\ <= NOT \temp_zero2[15]~1_combout\;
\ALT_INV_temp_zero2[15]~0_combout\ <= NOT \temp_zero2[15]~0_combout\;
\sub_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\;
\xor_part|ALT_INV_zero_bit~combout\ <= NOT \xor_part|zero_bit~combout\;
\nand_part|ALT_INV_zero_bit~7_combout\ <= NOT \nand_part|zero_bit~7_combout\;
\nand_part|ALT_INV_zero_bit~6_combout\ <= NOT \nand_part|zero_bit~6_combout\;
\nand_part|ALT_INV_zero_bit~5_combout\ <= NOT \nand_part|zero_bit~5_combout\;
\nand_part|ALT_INV_zero_bit~4_combout\ <= NOT \nand_part|zero_bit~4_combout\;
\nand_part|ALT_INV_zero_bit~3_combout\ <= NOT \nand_part|zero_bit~3_combout\;
\nand_part|ALT_INV_zero_bit~2_combout\ <= NOT \nand_part|zero_bit~2_combout\;
\nand_part|ALT_INV_zero_bit~1_combout\ <= NOT \nand_part|zero_bit~1_combout\;
\nand_part|ALT_INV_zero_bit~0_combout\ <= NOT \nand_part|zero_bit~0_combout\;
\ALT_INV_Cout~3_combout\ <= NOT \Cout~3_combout\;
\ALT_INV_Cout~2_combout\ <= NOT \Cout~2_combout\;
\add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~1_combout\ <= NOT \add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\;
\add_part|stg42:7:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:7:prefixcomp|Orga|y~0_combout\;
\ALT_INV_Cout~1_combout\ <= NOT \Cout~1_combout\;
\ALT_INV_Cout~0_combout\ <= NOT \Cout~0_combout\;
\add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\;
\sub_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\ <= NOT \sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\;
\sub_part|finalstg:16:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:16:OrS_ins|y~1_combout\;
\sub_part|finalstg:16:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:16:OrS_ins|y~0_combout\;
\add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\;
\add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~2_combout\ <= NOT \add_part|stg42:6:prefixcomp|Orga|y~2_combout\;
\add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~1_combout\ <= NOT \add_part|stg42:6:prefixcomp|Orga|y~1_combout\;
\add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~0_combout\ <= NOT \add_part|stg42:6:prefixcomp|Orga|y~0_combout\;
\sub_part|finalstg:15:OrS_ins|ALT_INV_y~3_combout\ <= NOT \sub_part|finalstg:15:OrS_ins|y~3_combout\;
\sub_part|finalstg:15:OrS_ins|ALT_INV_y~2_combout\ <= NOT \sub_part|finalstg:15:OrS_ins|y~2_combout\;
\sub_part|finalstg:15:OrS_ins|ALT_INV_y~1_combout\ <= NOT \sub_part|finalstg:15:OrS_ins|y~1_combout\;
\sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\ <= NOT \sub_part|finalstg:15:OrS_ins|y~0_combout\;
\add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\ <= NOT \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\;

-- Location: IOOBUF_X36_Y0_N36
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~0_combout\,
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X58_Y0_N42
\Z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(1));

-- Location: IOOBUF_X50_Y0_N76
\Z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(2));

-- Location: IOOBUF_X64_Y0_N36
\Z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~3_combout\,
	devoe => ww_devoe,
	o => ww_Z(3));

-- Location: IOOBUF_X38_Y0_N53
\Z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~4_combout\,
	devoe => ww_devoe,
	o => ww_Z(4));

-- Location: IOOBUF_X50_Y0_N42
\Z[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~5_combout\,
	devoe => ww_devoe,
	o => ww_Z(5));

-- Location: IOOBUF_X60_Y0_N2
\Z[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~6_combout\,
	devoe => ww_devoe,
	o => ww_Z(6));

-- Location: IOOBUF_X40_Y0_N19
\Z[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~7_combout\,
	devoe => ww_devoe,
	o => ww_Z(7));

-- Location: IOOBUF_X66_Y0_N93
\Z[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~8_combout\,
	devoe => ww_devoe,
	o => ww_Z(8));

-- Location: IOOBUF_X62_Y0_N19
\Z[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~9_combout\,
	devoe => ww_devoe,
	o => ww_Z(9));

-- Location: IOOBUF_X58_Y0_N76
\Z[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~10_combout\,
	devoe => ww_devoe,
	o => ww_Z(10));

-- Location: IOOBUF_X70_Y0_N19
\Z[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~11_combout\,
	devoe => ww_devoe,
	o => ww_Z(11));

-- Location: IOOBUF_X60_Y0_N53
\Z[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~12_combout\,
	devoe => ww_devoe,
	o => ww_Z(12));

-- Location: IOOBUF_X56_Y0_N53
\Z[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~13_combout\,
	devoe => ww_devoe,
	o => ww_Z(13));

-- Location: IOOBUF_X72_Y0_N53
\Z[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~14_combout\,
	devoe => ww_devoe,
	o => ww_Z(14));

-- Location: IOOBUF_X54_Y0_N53
\Z[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~15_combout\,
	devoe => ww_devoe,
	o => ww_Z(15));

-- Location: IOOBUF_X56_Y0_N19
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~4_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X66_Y0_N59
\zero_bit~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \zero_bit~0_combout\,
	devoe => ww_devoe,
	o => ww_zero_bit);

-- Location: IOIBUF_X52_Y0_N18
\IN1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(0),
	o => \IN1[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\IN2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(0),
	o => \IN2[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\S0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: MLABCELL_X52_Y3_N30
\Z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (!\IN1[0]~input_o\ & (((\S1~input_o\ & !\S0~input_o\)) # (\IN2[0]~input_o\))) # (\IN1[0]~input_o\ & (!\IN2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111001100110011011100110011001101110011001100110111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[0]~input_o\,
	datab => \ALT_INV_IN2[0]~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_S0~input_o\,
	combout => \Z~0_combout\);

-- Location: IOIBUF_X58_Y0_N58
\IN1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(1),
	o => \IN1[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\IN2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(1),
	o => \IN2[1]~input_o\);

-- Location: MLABCELL_X52_Y3_N6
\Z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = ( \IN1[0]~input_o\ & ( \IN2[0]~input_o\ & ( (!\IN1[1]~input_o\ & ((!\IN2[1]~input_o\ & ((!\S0~input_o\))) # (\IN2[1]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))) # (\IN1[1]~input_o\ & (!\IN2[1]~input_o\ $ (((!\S1~input_o\ & 
-- !\S0~input_o\))))) ) ) ) # ( !\IN1[0]~input_o\ & ( \IN2[0]~input_o\ & ( (!\S1~input_o\ & (!\IN1[1]~input_o\ $ (!\IN2[1]~input_o\ $ (\S0~input_o\)))) # (\S1~input_o\ & ((!\IN1[1]~input_o\ & ((!\S0~input_o\) # (\IN2[1]~input_o\))) # (\IN1[1]~input_o\ & 
-- (!\IN2[1]~input_o\)))) ) ) ) # ( \IN1[0]~input_o\ & ( !\IN2[0]~input_o\ & ( (!\IN1[1]~input_o\ & (((\S1~input_o\ & !\S0~input_o\)) # (\IN2[1]~input_o\))) # (\IN1[1]~input_o\ & (!\IN2[1]~input_o\)) ) ) ) # ( !\IN1[0]~input_o\ & ( !\IN2[0]~input_o\ & ( 
-- (!\IN1[1]~input_o\ & (((\S1~input_o\ & !\S0~input_o\)) # (\IN2[1]~input_o\))) # (\IN1[1]~input_o\ & (!\IN2[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111001100110011011100110011001101110100101101001111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \Z~1_combout\);

-- Location: IOIBUF_X70_Y0_N52
\IN2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(2),
	o => \IN2[2]~input_o\);

-- Location: MLABCELL_X52_Y3_N12
\add_part|stg1:0:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg1:0:prefixcomp|Orga|y~combout\ = ( \IN2[0]~input_o\ & ( (!\IN2[1]~input_o\ & (\IN1[1]~input_o\ & \IN1[0]~input_o\)) # (\IN2[1]~input_o\ & ((\IN1[0]~input_o\) # (\IN1[1]~input_o\))) ) ) # ( !\IN2[0]~input_o\ & ( (\IN2[1]~input_o\ & 
-- \IN1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_IN1[1]~input_o\,
	datad => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \add_part|stg1:0:prefixcomp|Orga|y~combout\);

-- Location: MLABCELL_X52_Y3_N33
\sub_part|finalstg:6:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:6:OrS_ins|y~0_combout\ = (!\IN2[1]~input_o\ & (!\IN1[0]~input_o\ & (\IN2[0]~input_o\ & !\IN1[1]~input_o\))) # (\IN2[1]~input_o\ & ((!\IN1[1]~input_o\) # ((!\IN1[0]~input_o\ & \IN2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100000010001011110000001000101111000000100010111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[0]~input_o\,
	datab => \ALT_INV_IN2[0]~input_o\,
	datac => \ALT_INV_IN2[1]~input_o\,
	datad => \ALT_INV_IN1[1]~input_o\,
	combout => \sub_part|finalstg:6:OrS_ins|y~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\IN1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(2),
	o => \IN1[2]~input_o\);

-- Location: MLABCELL_X52_Y3_N48
\Z~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = ( \sub_part|finalstg:6:OrS_ins|y~0_combout\ & ( \IN1[2]~input_o\ & ( !\IN2[2]~input_o\ $ (((!\S1~input_o\ & ((\S0~input_o\) # (\add_part|stg1:0:prefixcomp|Orga|y~combout\))))) ) ) ) # ( !\sub_part|finalstg:6:OrS_ins|y~0_combout\ & ( 
-- \IN1[2]~input_o\ & ( !\IN2[2]~input_o\ $ (((\add_part|stg1:0:prefixcomp|Orga|y~combout\ & (!\S1~input_o\ & !\S0~input_o\)))) ) ) ) # ( \sub_part|finalstg:6:OrS_ins|y~0_combout\ & ( !\IN1[2]~input_o\ & ( (!\S1~input_o\ & (!\IN2[2]~input_o\ $ 
-- (((!\add_part|stg1:0:prefixcomp|Orga|y~combout\ & !\S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\)) # (\IN2[2]~input_o\))) ) ) ) # ( !\sub_part|finalstg:6:OrS_ins|y~0_combout\ & ( !\IN1[2]~input_o\ & ( (!\S0~input_o\ & ((!\IN2[2]~input_o\ $ 
-- (!\add_part|stg1:0:prefixcomp|Orga|y~combout\)) # (\S1~input_o\))) # (\S0~input_o\ & (\IN2[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101010101011011111010010110011010101010101001101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[2]~input_o\,
	datab => \add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN1[2]~input_o\,
	combout => \Z~2_combout\);

-- Location: MLABCELL_X52_Y3_N39
\add_part|XorGa:2:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ = ( \IN2[2]~input_o\ & ( !\IN1[2]~input_o\ ) ) # ( !\IN2[2]~input_o\ & ( \IN1[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN1[2]~input_o\,
	dataf => \ALT_INV_IN2[2]~input_o\,
	combout => \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\);

-- Location: MLABCELL_X52_Y3_N3
\add_part|finalstg:2:XorS_instance|AND2_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\ = ( \IN2[0]~input_o\ & ( (\IN1[0]~input_o\ & (!\IN1[1]~input_o\ $ (!\IN2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datad => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\);

-- Location: MLABCELL_X52_Y3_N45
\add_part|stg2:0:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:0:prefixcomp|Orga|y~0_combout\ = ( \IN2[2]~input_o\ & ( ((\IN1[1]~input_o\ & \IN2[1]~input_o\)) # (\IN1[2]~input_o\) ) ) # ( !\IN2[2]~input_o\ & ( (\IN1[1]~input_o\ & (\IN2[1]~input_o\ & \IN1[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_IN1[2]~input_o\,
	dataf => \ALT_INV_IN2[2]~input_o\,
	combout => \add_part|stg2:0:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y5_N3
\add_part|stg2:0:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:0:prefixcomp|Orga|y~combout\ = (!\add_part|stg2:0:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\) # (!\add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|finalstg:2:XorS_instance|AND2_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:0:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X40_Y0_N52
\IN1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(3),
	o => \IN1[3]~input_o\);

-- Location: MLABCELL_X52_Y3_N54
\sub_part|finalstg:7:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:7:OrS_ins|y~0_combout\ = ( \IN1[0]~input_o\ & ( \IN2[0]~input_o\ & ( (!\IN2[2]~input_o\ & (\IN2[1]~input_o\ & (!\IN1[1]~input_o\ & !\IN1[2]~input_o\))) # (\IN2[2]~input_o\ & ((!\IN1[2]~input_o\) # ((\IN2[1]~input_o\ & 
-- !\IN1[1]~input_o\)))) ) ) ) # ( !\IN1[0]~input_o\ & ( \IN2[0]~input_o\ & ( (!\IN2[2]~input_o\ & (!\IN1[2]~input_o\ & ((!\IN1[1]~input_o\) # (\IN2[1]~input_o\)))) # (\IN2[2]~input_o\ & (((!\IN1[1]~input_o\) # (!\IN1[2]~input_o\)) # (\IN2[1]~input_o\))) ) ) 
-- ) # ( \IN1[0]~input_o\ & ( !\IN2[0]~input_o\ & ( (!\IN2[2]~input_o\ & (\IN2[1]~input_o\ & (!\IN1[1]~input_o\ & !\IN1[2]~input_o\))) # (\IN2[2]~input_o\ & ((!\IN1[2]~input_o\) # ((\IN2[1]~input_o\ & !\IN1[1]~input_o\)))) ) ) ) # ( !\IN1[0]~input_o\ & ( 
-- !\IN2[0]~input_o\ & ( (!\IN2[2]~input_o\ & (\IN2[1]~input_o\ & (!\IN1[1]~input_o\ & !\IN1[2]~input_o\))) # (\IN2[2]~input_o\ & ((!\IN1[2]~input_o\) # ((\IN2[1]~input_o\ & !\IN1[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100010000011101010001000011110111010100010111010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[2]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_IN1[1]~input_o\,
	datad => \ALT_INV_IN1[2]~input_o\,
	datae => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \sub_part|finalstg:7:OrS_ins|y~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\IN2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(3),
	o => \IN2[3]~input_o\);

-- Location: LABCELL_X53_Y3_N0
\Z~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = ( \IN2[3]~input_o\ & ( \S1~input_o\ & ( !\IN1[3]~input_o\ ) ) ) # ( !\IN2[3]~input_o\ & ( \S1~input_o\ & ( (!\S0~input_o\) # (\IN1[3]~input_o\) ) ) ) # ( \IN2[3]~input_o\ & ( !\S1~input_o\ & ( !\IN1[3]~input_o\ $ (((!\S0~input_o\ & 
-- (!\add_part|stg2:0:prefixcomp|Orga|y~combout\)) # (\S0~input_o\ & ((\sub_part|finalstg:7:OrS_ins|y~0_combout\))))) ) ) ) # ( !\IN2[3]~input_o\ & ( !\S1~input_o\ & ( !\IN1[3]~input_o\ $ (((!\S0~input_o\ & (\add_part|stg2:0:prefixcomp|Orga|y~combout\)) # 
-- (\S0~input_o\ & ((!\sub_part|finalstg:7:OrS_ins|y~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100111100011001101100001111111111001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \ALT_INV_IN1[3]~input_o\,
	datac => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_IN2[3]~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \Z~3_combout\);

-- Location: LABCELL_X53_Y3_N48
\add_part|stg2:1:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:1:prefixcomp|Orga|y~0_combout\ = ( \IN2[2]~input_o\ & ( \IN1[2]~input_o\ & ( (\IN2[3]~input_o\) # (\IN1[3]~input_o\) ) ) ) # ( !\IN2[2]~input_o\ & ( \IN1[2]~input_o\ & ( (\IN1[3]~input_o\ & \IN2[3]~input_o\) ) ) ) # ( \IN2[2]~input_o\ & ( 
-- !\IN1[2]~input_o\ & ( (\IN1[3]~input_o\ & \IN2[3]~input_o\) ) ) ) # ( !\IN2[2]~input_o\ & ( !\IN1[2]~input_o\ & ( (\IN1[3]~input_o\ & \IN2[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN1[3]~input_o\,
	datac => \ALT_INV_IN2[3]~input_o\,
	datae => \ALT_INV_IN2[2]~input_o\,
	dataf => \ALT_INV_IN1[2]~input_o\,
	combout => \add_part|stg2:1:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y3_N9
\add_part|XorGa:3:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ = ( \IN2[3]~input_o\ & ( !\IN1[3]~input_o\ ) ) # ( !\IN2[3]~input_o\ & ( \IN1[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN1[3]~input_o\,
	datae => \ALT_INV_IN2[3]~input_o\,
	combout => \add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X53_Y5_N36
\add_part|stg2:1:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:1:prefixcomp|Orga|y~combout\ = ( \add_part|stg1:0:prefixcomp|Orga|y~combout\ & ( (!\add_part|stg2:1:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\))) ) ) # ( !\add_part|stg1:0:prefixcomp|Orga|y~combout\ & ( !\add_part|stg2:1:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \add_part|stg2:1:prefixcomp|Orga|y~combout\);

-- Location: MLABCELL_X52_Y3_N18
\xor_part|zero_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_part|zero_bit~0_combout\ = ( \IN2[2]~input_o\ & ( (\IN1[2]~input_o\ & (!\IN1[1]~input_o\ $ (\IN2[1]~input_o\))) ) ) # ( !\IN2[2]~input_o\ & ( (!\IN1[2]~input_o\ & (!\IN1[1]~input_o\ $ (\IN2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN1[2]~input_o\,
	datad => \ALT_INV_IN2[1]~input_o\,
	dataf => \ALT_INV_IN2[2]~input_o\,
	combout => \xor_part|zero_bit~0_combout\);

-- Location: MLABCELL_X52_Y3_N24
\sub_part|stg1:2:prefixcomp|Andgat|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ = ( \xor_part|zero_bit~0_combout\ & ( (!\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & (!\IN2[0]~input_o\ $ (\IN1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[0]~input_o\,
	datac => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN1[0]~input_o\,
	dataf => \xor_part|ALT_INV_zero_bit~0_combout\,
	combout => \sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\);

-- Location: LABCELL_X53_Y3_N15
\sub_part|stg2:1:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ = ( \IN2[2]~input_o\ & ( \IN1[2]~input_o\ & ( (!\IN2[3]~input_o\ & \IN1[3]~input_o\) ) ) ) # ( !\IN2[2]~input_o\ & ( \IN1[2]~input_o\ & ( (!\IN2[3]~input_o\) # (\IN1[3]~input_o\) ) ) ) # ( \IN2[2]~input_o\ & ( 
-- !\IN1[2]~input_o\ & ( (!\IN2[3]~input_o\ & \IN1[3]~input_o\) ) ) ) # ( !\IN2[2]~input_o\ & ( !\IN1[2]~input_o\ & ( (!\IN2[3]~input_o\ & \IN1[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111101011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[3]~input_o\,
	datac => \ALT_INV_IN1[3]~input_o\,
	datae => \ALT_INV_IN2[2]~input_o\,
	dataf => \ALT_INV_IN1[2]~input_o\,
	combout => \sub_part|stg2:1:prefixcomp|Orga|y~1_combout\);

-- Location: MLABCELL_X52_Y3_N42
\sub_part|stg2:1:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:1:prefixcomp|Orga|y~0_combout\ = ( \IN2[0]~input_o\ & ( (\IN1[1]~input_o\ & !\IN2[1]~input_o\) ) ) # ( !\IN2[0]~input_o\ & ( (!\IN1[1]~input_o\ & (!\IN2[1]~input_o\ & \IN1[0]~input_o\)) # (\IN1[1]~input_o\ & ((!\IN2[1]~input_o\) # 
-- (\IN1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \sub_part|stg2:1:prefixcomp|Orga|y~0_combout\);

-- Location: MLABCELL_X52_Y3_N36
\sub_part|stg2:1:prefixcomp|Orga|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\ = ( \sub_part|stg2:1:prefixcomp|Orga|y~0_combout\ & ( (!\sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ & ((\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\) # 
-- (\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\))) ) ) # ( !\sub_part|stg2:1:prefixcomp|Orga|y~0_combout\ & ( !\sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\);

-- Location: LABCELL_X51_Y4_N30
\sub_part|finalstg:4:OrS_ins|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:4:OrS_ins|y~combout\ = (!\sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ & \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sub_part|stg1:2:prefixcomp|Andgat|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~2_combout\,
	combout => \sub_part|finalstg:4:OrS_ins|y~combout\);

-- Location: IOIBUF_X50_Y0_N58
\IN2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(4),
	o => \IN2[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\IN1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(4),
	o => \IN1[4]~input_o\);

-- Location: LABCELL_X50_Y4_N0
\Z~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = ( \IN2[4]~input_o\ & ( \IN1[4]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (!\add_part|stg2:1:prefixcomp|Orga|y~combout\)) # (\S0~input_o\ & ((\sub_part|finalstg:4:OrS_ins|y~combout\))))) ) ) ) # ( !\IN2[4]~input_o\ & ( 
-- \IN1[4]~input_o\ & ( ((!\S0~input_o\ & (\add_part|stg2:1:prefixcomp|Orga|y~combout\)) # (\S0~input_o\ & ((!\sub_part|finalstg:4:OrS_ins|y~combout\)))) # (\S1~input_o\) ) ) ) # ( \IN2[4]~input_o\ & ( !\IN1[4]~input_o\ & ( ((!\S0~input_o\ & 
-- (\add_part|stg2:1:prefixcomp|Orga|y~combout\)) # (\S0~input_o\ & ((!\sub_part|finalstg:4:OrS_ins|y~combout\)))) # (\S1~input_o\) ) ) ) # ( !\IN2[4]~input_o\ & ( !\IN1[4]~input_o\ & ( (!\S0~input_o\ & ((!\add_part|stg2:1:prefixcomp|Orga|y~combout\) # 
-- ((\S1~input_o\)))) # (\S0~input_o\ & (((\sub_part|finalstg:4:OrS_ins|y~combout\ & !\S1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101010011100101111111101110010111111111000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\,
	datac => \sub_part|finalstg:4:OrS_ins|ALT_INV_y~combout\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_IN2[4]~input_o\,
	dataf => \ALT_INV_IN1[4]~input_o\,
	combout => \Z~4_combout\);

-- Location: IOIBUF_X40_Y0_N1
\IN1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(5),
	o => \IN1[5]~input_o\);

-- Location: LABCELL_X50_Y4_N18
\add_part|stg42:1:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ = ( \IN1[3]~input_o\ & ( (!\IN2[3]~input_o\ & (!\IN1[4]~input_o\ $ (!\IN2[4]~input_o\))) ) ) # ( !\IN1[3]~input_o\ & ( (\IN2[3]~input_o\ & (!\IN1[4]~input_o\ $ (!\IN2[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[4]~input_o\,
	datab => \ALT_INV_IN2[4]~input_o\,
	datad => \ALT_INV_IN2[3]~input_o\,
	dataf => \ALT_INV_IN1[3]~input_o\,
	combout => \add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X50_Y4_N45
\add_part|stg2:2:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:2:prefixcomp|Orga|y~0_combout\ = (!\IN1[4]~input_o\ & (\IN2[4]~input_o\ & (\IN2[3]~input_o\ & \IN1[3]~input_o\))) # (\IN1[4]~input_o\ & (((\IN2[3]~input_o\ & \IN1[3]~input_o\)) # (\IN2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[4]~input_o\,
	datab => \ALT_INV_IN2[4]~input_o\,
	datac => \ALT_INV_IN2[3]~input_o\,
	datad => \ALT_INV_IN1[3]~input_o\,
	combout => \add_part|stg2:2:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y3_N24
\add_part|stg2:2:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:2:prefixcomp|Orga|y~1_combout\ = ( !\add_part|stg2:2:prefixcomp|Orga|y~0_combout\ & ( \add_part|stg2:0:prefixcomp|Orga|y~0_combout\ & ( !\add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ ) ) ) # ( 
-- !\add_part|stg2:2:prefixcomp|Orga|y~0_combout\ & ( !\add_part|stg2:0:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datae => \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:2:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N0
\add_part|stg32:0:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\ = (\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (\add_part|finalstg:2:XorS_instance|AND2_instance|y~0_combout\ & \add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|finalstg:2:XorS_instance|AND2_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X57_Y4_N0
\add_part|stg32:0:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:0:prefixcomp|Orga|y~combout\ = (\add_part|stg2:2:prefixcomp|Orga|y~1_combout\ & !\add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datab => \add_part|stg32:0:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:0:prefixcomp|Orga|y~combout\);

-- Location: MLABCELL_X52_Y3_N27
\sub_part|finalstg:9:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:9:OrS_ins|y~0_combout\ = ( \xor_part|zero_bit~0_combout\ & ( (!\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & ((!\IN2[0]~input_o\) # (\IN1[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[0]~input_o\,
	datab => \ALT_INV_IN2[0]~input_o\,
	datad => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \xor_part|ALT_INV_zero_bit~0_combout\,
	combout => \sub_part|finalstg:9:OrS_ins|y~0_combout\);

-- Location: LABCELL_X50_Y4_N36
\add_part|XorGa:4:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ = ( \IN1[4]~input_o\ & ( !\IN2[4]~input_o\ ) ) # ( !\IN1[4]~input_o\ & ( \IN2[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[4]~input_o\,
	dataf => \ALT_INV_IN1[4]~input_o\,
	combout => \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X50_Y4_N42
\sub_part|stg2:2:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:2:prefixcomp|Orga|y~1_combout\ = ( \IN1[3]~input_o\ & ( (!\IN1[4]~input_o\ & (!\IN2[4]~input_o\ & !\IN2[3]~input_o\)) # (\IN1[4]~input_o\ & ((!\IN2[4]~input_o\) # (!\IN2[3]~input_o\))) ) ) # ( !\IN1[3]~input_o\ & ( (\IN1[4]~input_o\ & 
-- !\IN2[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101010001001101110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[4]~input_o\,
	datab => \ALT_INV_IN2[4]~input_o\,
	datad => \ALT_INV_IN2[3]~input_o\,
	dataf => \ALT_INV_IN1[3]~input_o\,
	combout => \sub_part|stg2:2:prefixcomp|Orga|y~1_combout\);

-- Location: MLABCELL_X52_Y3_N21
\sub_part|stg2:2:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:2:prefixcomp|Orga|y~0_combout\ = ( \IN2[2]~input_o\ & ( (\IN1[1]~input_o\ & (\IN1[2]~input_o\ & !\IN2[1]~input_o\)) ) ) # ( !\IN2[2]~input_o\ & ( ((\IN1[1]~input_o\ & !\IN2[1]~input_o\)) # (\IN1[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datac => \ALT_INV_IN1[2]~input_o\,
	datad => \ALT_INV_IN2[1]~input_o\,
	dataf => \ALT_INV_IN2[2]~input_o\,
	combout => \sub_part|stg2:2:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y4_N30
\sub_part|stg2:2:prefixcomp|Orga|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:2:prefixcomp|Orga|y~2_combout\ = ( \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|stg2:2:prefixcomp|Orga|y~1_combout\ ) ) # ( !\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (!\sub_part|stg2:2:prefixcomp|Orga|y~1_combout\ & ((!\sub_part|stg2:2:prefixcomp|Orga|y~0_combout\) # (\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:2:prefixcomp|Orga|y~2_combout\);

-- Location: MLABCELL_X52_Y4_N33
\sub_part|finalstg:5:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:5:OrS_ins|y~0_combout\ = ( \sub_part|stg2:2:prefixcomp|Orga|y~2_combout\ & ( (!\sub_part|finalstg:9:OrS_ins|y~0_combout\) # (\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~2_combout\,
	combout => \sub_part|finalstg:5:OrS_ins|y~0_combout\);

-- Location: IOIBUF_X50_Y0_N92
\IN2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(5),
	o => \IN2[5]~input_o\);

-- Location: LABCELL_X50_Y4_N54
\Z~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~5_combout\ = ( \S0~input_o\ & ( \IN2[5]~input_o\ & ( !\IN1[5]~input_o\ $ (((!\S1~input_o\ & \sub_part|finalstg:5:OrS_ins|y~0_combout\))) ) ) ) # ( !\S0~input_o\ & ( \IN2[5]~input_o\ & ( !\IN1[5]~input_o\ $ (((!\S1~input_o\ & 
-- !\add_part|stg32:0:prefixcomp|Orga|y~combout\))) ) ) ) # ( \S0~input_o\ & ( !\IN2[5]~input_o\ & ( !\IN1[5]~input_o\ $ (((!\sub_part|finalstg:5:OrS_ins|y~0_combout\) # (\S1~input_o\))) ) ) ) # ( !\S0~input_o\ & ( !\IN2[5]~input_o\ & ( (!\IN1[5]~input_o\ $ 
-- (\add_part|stg32:0:prefixcomp|Orga|y~combout\)) # (\S1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011110110111010101011001100101101010011010101010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[5]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \add_part|stg32:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datad => \sub_part|finalstg:5:OrS_ins|ALT_INV_y~0_combout\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_IN2[5]~input_o\,
	combout => \Z~5_combout\);

-- Location: IOIBUF_X38_Y0_N35
\IN1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(6),
	o => \IN1[6]~input_o\);

-- Location: LABCELL_X50_Y4_N30
\add_part|XorGa:5:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ = !\IN2[5]~input_o\ $ (!\IN1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[5]~input_o\,
	datac => \ALT_INV_IN1[5]~input_o\,
	combout => \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\);

-- Location: MLABCELL_X52_Y4_N45
\sub_part|finalstg:11:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:11:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & !\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:11:OrS_ins|y~0_combout\);

-- Location: LABCELL_X50_Y4_N33
\sub_part|stg2:3:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:3:prefixcomp|Orga|y~0_combout\ = ( \IN1[4]~input_o\ & ( (!\IN2[5]~input_o\ & ((!\IN2[4]~input_o\) # (\IN1[5]~input_o\))) # (\IN2[5]~input_o\ & (!\IN2[4]~input_o\ & \IN1[5]~input_o\)) ) ) # ( !\IN1[4]~input_o\ & ( (!\IN2[5]~input_o\ & 
-- \IN1[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[5]~input_o\,
	datac => \ALT_INV_IN2[4]~input_o\,
	datad => \ALT_INV_IN1[5]~input_o\,
	dataf => \ALT_INV_IN1[4]~input_o\,
	combout => \sub_part|stg2:3:prefixcomp|Orga|y~0_combout\);

-- Location: MLABCELL_X52_Y4_N6
\sub_part|stg2:3:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\ = ( \sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ & ( (!\sub_part|stg2:3:prefixcomp|Orga|y~0_combout\ & ((\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\) # 
-- (\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\))) ) ) # ( !\sub_part|stg2:1:prefixcomp|Orga|y~1_combout\ & ( !\sub_part|stg2:3:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\);

-- Location: MLABCELL_X52_Y4_N21
\sub_part|finalstg:6:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:6:OrS_ins|y~1_combout\ = ( \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\ & ( ((!\sub_part|finalstg:11:OrS_ins|y~0_combout\) # (\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\)) # (\sub_part|finalstg:6:OrS_ins|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:6:OrS_ins|y~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\IN2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(6),
	o => \IN2[6]~input_o\);

-- Location: LABCELL_X50_Y4_N6
\add_part|stg2:3:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:3:prefixcomp|Orga|y~0_combout\ = ( \IN1[4]~input_o\ & ( (!\IN1[5]~input_o\ & (\IN2[5]~input_o\ & \IN2[4]~input_o\)) # (\IN1[5]~input_o\ & ((\IN2[4]~input_o\) # (\IN2[5]~input_o\))) ) ) # ( !\IN1[4]~input_o\ & ( (\IN1[5]~input_o\ & 
-- \IN2[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[5]~input_o\,
	datac => \ALT_INV_IN2[5]~input_o\,
	datad => \ALT_INV_IN2[4]~input_o\,
	dataf => \ALT_INV_IN1[4]~input_o\,
	combout => \add_part|stg2:3:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y5_N39
\add_part|stg2:3:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:3:prefixcomp|Orga|y~1_combout\ = ( !\add_part|stg2:3:prefixcomp|Orga|y~0_combout\ & ( (!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\) # ((!\add_part|stg2:1:prefixcomp|Orga|y~0_combout\) # 
-- (!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:3:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N12
\add_part|stg32:1:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|stg1:0:prefixcomp|Orga|y~combout\ & ( (\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (\add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ & 
-- \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X53_Y5_N21
\add_part|stg32:1:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:1:prefixcomp|Orga|y~combout\ = ( !\add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\ & ( \add_part|stg2:3:prefixcomp|Orga|y~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	dataf => \add_part|stg32:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:1:prefixcomp|Orga|y~combout\);

-- Location: LABCELL_X50_Y4_N12
\Z~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~6_combout\ = ( \S1~input_o\ & ( \add_part|stg32:1:prefixcomp|Orga|y~combout\ & ( (!\IN1[6]~input_o\ & ((!\S0~input_o\) # (\IN2[6]~input_o\))) # (\IN1[6]~input_o\ & ((!\IN2[6]~input_o\))) ) ) ) # ( !\S1~input_o\ & ( 
-- \add_part|stg32:1:prefixcomp|Orga|y~combout\ & ( !\IN1[6]~input_o\ $ (!\IN2[6]~input_o\ $ (((\S0~input_o\ & \sub_part|finalstg:6:OrS_ins|y~1_combout\)))) ) ) ) # ( \S1~input_o\ & ( !\add_part|stg32:1:prefixcomp|Orga|y~combout\ & ( (!\IN1[6]~input_o\ & 
-- ((!\S0~input_o\) # (\IN2[6]~input_o\))) # (\IN1[6]~input_o\ & ((!\IN2[6]~input_o\))) ) ) ) # ( !\S1~input_o\ & ( !\add_part|stg32:1:prefixcomp|Orga|y~combout\ & ( !\IN1[6]~input_o\ $ (!\IN2[6]~input_o\ $ (((!\S0~input_o\) # 
-- (\sub_part|finalstg:6:OrS_ins|y~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110001100011101110111100110000110110110010011011101111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_IN1[6]~input_o\,
	datac => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~1_combout\,
	datad => \ALT_INV_IN2[6]~input_o\,
	datae => \ALT_INV_S1~input_o\,
	dataf => \add_part|stg32:1:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \Z~6_combout\);

-- Location: LABCELL_X50_Y4_N39
\add_part|XorGa:6:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ = ( \IN2[6]~input_o\ & ( !\IN1[6]~input_o\ ) ) # ( !\IN2[6]~input_o\ & ( \IN1[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN1[6]~input_o\,
	dataf => \ALT_INV_IN2[6]~input_o\,
	combout => \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X50_Y4_N9
\sub_part|stg2:4:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:4:prefixcomp|Orga|y~0_combout\ = ( \IN2[6]~input_o\ & ( (\IN1[5]~input_o\ & (!\IN2[5]~input_o\ & \IN1[6]~input_o\)) ) ) # ( !\IN2[6]~input_o\ & ( ((\IN1[5]~input_o\ & !\IN2[5]~input_o\)) # (\IN1[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[5]~input_o\,
	datab => \ALT_INV_IN2[5]~input_o\,
	datac => \ALT_INV_IN1[6]~input_o\,
	dataf => \ALT_INV_IN2[6]~input_o\,
	combout => \sub_part|stg2:4:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X51_Y4_N6
\sub_part|stg2:4:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:4:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|stg2:4:prefixcomp|Orga|y~0_combout\ ) ) # ( !\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (!\sub_part|stg2:4:prefixcomp|Orga|y~0_combout\ & ((!\sub_part|stg2:2:prefixcomp|Orga|y~1_combout\) # (\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:4:prefixcomp|Orga|y~1_combout\);

-- Location: MLABCELL_X52_Y4_N27
\sub_part|finalstg:7:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:7:OrS_ins|y~1_combout\ = ( \sub_part|finalstg:7:OrS_ins|y~0_combout\ & ( \sub_part|stg2:4:prefixcomp|Orga|y~1_combout\ ) ) # ( !\sub_part|finalstg:7:OrS_ins|y~0_combout\ & ( (\sub_part|stg2:4:prefixcomp|Orga|y~1_combout\ & 
-- ((!\sub_part|finalstg:11:OrS_ins|y~0_combout\) # (\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\,
	datad => \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\,
	dataf => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:7:OrS_ins|y~1_combout\);

-- Location: LABCELL_X50_Y4_N48
\add_part|stg2:4:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:4:prefixcomp|Orga|y~0_combout\ = ( \IN2[6]~input_o\ & ( ((\IN2[5]~input_o\ & \IN1[5]~input_o\)) # (\IN1[6]~input_o\) ) ) # ( !\IN2[6]~input_o\ & ( (\IN2[5]~input_o\ & (\IN1[6]~input_o\ & \IN1[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[5]~input_o\,
	datab => \ALT_INV_IN1[6]~input_o\,
	datad => \ALT_INV_IN1[5]~input_o\,
	dataf => \ALT_INV_IN2[6]~input_o\,
	combout => \add_part|stg2:4:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X50_Y4_N24
\add_part|stg2:4:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:4:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|stg2:4:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|stg2:2:prefixcomp|Orga|y~0_combout\))) ) ) # ( !\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|stg2:4:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:4:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N24
\add_part|stg32:2:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:2:prefixcomp|Orga|y~combout\ = ( \add_part|stg2:4:prefixcomp|Orga|y~1_combout\ & ( ((!\add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\) # ((!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\))) # (\add_part|stg2:0:prefixcomp|Orga|y~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \add_part|stg32:2:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X54_Y0_N18
\IN2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(7),
	o => \IN2[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\IN1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(7),
	o => \IN1[7]~input_o\);

-- Location: LABCELL_X51_Y4_N42
\Z~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~7_combout\ = ( \S1~input_o\ & ( \IN1[7]~input_o\ & ( !\IN2[7]~input_o\ ) ) ) # ( !\S1~input_o\ & ( \IN1[7]~input_o\ & ( !\IN2[7]~input_o\ $ (((!\S0~input_o\ & ((!\add_part|stg32:2:prefixcomp|Orga|y~combout\))) # (\S0~input_o\ & 
-- (\sub_part|finalstg:7:OrS_ins|y~1_combout\)))) ) ) ) # ( \S1~input_o\ & ( !\IN1[7]~input_o\ & ( (!\S0~input_o\) # (\IN2[7]~input_o\) ) ) ) # ( !\S1~input_o\ & ( !\IN1[7]~input_o\ & ( !\IN2[7]~input_o\ $ (((!\S0~input_o\ & 
-- ((\add_part|stg32:2:prefixcomp|Orga|y~combout\))) # (\S0~input_o\ & (!\sub_part|finalstg:7:OrS_ins|y~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001101011010111111110000111100111100101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~1_combout\,
	datab => \add_part|stg32:2:prefixcomp|Orga|ALT_INV_y~combout\,
	datac => \ALT_INV_IN2[7]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_IN1[7]~input_o\,
	combout => \Z~7_combout\);

-- Location: IOIBUF_X62_Y0_N35
\IN2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(8),
	o => \IN2[8]~input_o\);

-- Location: LABCELL_X51_Y4_N54
\add_part|XorGa:7:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ = ( \IN1[7]~input_o\ & ( !\IN2[7]~input_o\ ) ) # ( !\IN1[7]~input_o\ & ( \IN2[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[7]~input_o\,
	dataf => \ALT_INV_IN1[7]~input_o\,
	combout => \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X51_Y4_N57
\add_part|stg2:5:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:5:prefixcomp|Orga|y~0_combout\ = ( \IN1[7]~input_o\ & ( ((\IN2[6]~input_o\ & \IN1[6]~input_o\)) # (\IN2[7]~input_o\) ) ) # ( !\IN1[7]~input_o\ & ( (\IN2[7]~input_o\ & (\IN2[6]~input_o\ & \IN1[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[7]~input_o\,
	datac => \ALT_INV_IN2[6]~input_o\,
	datad => \ALT_INV_IN1[6]~input_o\,
	dataf => \ALT_INV_IN1[7]~input_o\,
	combout => \add_part|stg2:5:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y4_N33
\add_part|stg2:5:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:5:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|stg2:5:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|stg2:3:prefixcomp|Orga|y~0_combout\))) ) ) # ( !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|stg2:5:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:5:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y4_N6
\add_part|stg32:3:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:3:prefixcomp|Orga|y~combout\ = ( \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|stg2:5:prefixcomp|Orga|y~1_combout\ & ( (!\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\) # 
-- ((!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\) # ((!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\) # (\add_part|stg2:1:prefixcomp|Orga|y~combout\))) ) ) ) # ( !\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( 
-- \add_part|stg2:5:prefixcomp|Orga|y~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\,
	datae => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \add_part|stg32:3:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X66_Y0_N41
\IN1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(8),
	o => \IN1[8]~input_o\);

-- Location: LABCELL_X50_Y4_N27
\sub_part|finalstg:9:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:9:OrS_ins|y~1_combout\ = ( \IN1[6]~input_o\ & ( (\IN2[6]~input_o\ & (!\IN2[7]~input_o\ $ (\IN1[7]~input_o\))) ) ) # ( !\IN1[6]~input_o\ & ( (!\IN2[6]~input_o\ & (!\IN2[7]~input_o\ $ (\IN1[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[7]~input_o\,
	datac => \ALT_INV_IN2[6]~input_o\,
	datad => \ALT_INV_IN1[7]~input_o\,
	dataf => \ALT_INV_IN1[6]~input_o\,
	combout => \sub_part|finalstg:9:OrS_ins|y~1_combout\);

-- Location: LABCELL_X51_Y4_N9
\sub_part|stg32:3:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\ = (!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & (\sub_part|finalstg:9:OrS_ins|y~1_combout\ & !\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\,
	datad => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X51_Y4_N18
\sub_part|stg2:5:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:5:prefixcomp|Orga|y~0_combout\ = ( \IN1[7]~input_o\ & ( (!\IN2[7]~input_o\) # ((!\IN2[6]~input_o\ & \IN1[6]~input_o\)) ) ) # ( !\IN1[7]~input_o\ & ( (!\IN2[6]~input_o\ & (!\IN2[7]~input_o\ & \IN1[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[6]~input_o\,
	datac => \ALT_INV_IN2[7]~input_o\,
	datad => \ALT_INV_IN1[6]~input_o\,
	dataf => \ALT_INV_IN1[7]~input_o\,
	combout => \sub_part|stg2:5:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X51_Y4_N33
\sub_part|stg2:5:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:5:prefixcomp|Orga|y~1_combout\ = ( !\sub_part|stg2:5:prefixcomp|Orga|y~0_combout\ & ( (!\sub_part|stg2:3:prefixcomp|Orga|y~0_combout\) # (!\sub_part|finalstg:9:OrS_ins|y~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:5:prefixcomp|Orga|y~1_combout\);

-- Location: MLABCELL_X52_Y4_N9
\sub_part|finalstg:8:OrS_ins|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:8:OrS_ins|y~combout\ = ( \sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ & ( (!\sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\ & \sub_part|stg2:5:prefixcomp|Orga|y~1_combout\) ) ) # ( 
-- !\sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ & ( (\sub_part|stg2:5:prefixcomp|Orga|y~1_combout\ & ((!\sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\) # (\sub_part|stg2:1:prefixcomp|Orga|y~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|stg32:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~2_combout\,
	dataf => \sub_part|stg1:2:prefixcomp|Andgat|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:8:OrS_ins|y~combout\);

-- Location: LABCELL_X57_Y4_N6
\Z~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~8_combout\ = ( \IN1[8]~input_o\ & ( \sub_part|finalstg:8:OrS_ins|y~combout\ & ( !\IN2[8]~input_o\ $ (((!\S1~input_o\ & ((!\add_part|stg32:3:prefixcomp|Orga|y~combout\) # (\S0~input_o\))))) ) ) ) # ( !\IN1[8]~input_o\ & ( 
-- \sub_part|finalstg:8:OrS_ins|y~combout\ & ( (!\S0~input_o\ & ((!\IN2[8]~input_o\ $ (\add_part|stg32:3:prefixcomp|Orga|y~combout\)) # (\S1~input_o\))) # (\S0~input_o\ & (!\IN2[8]~input_o\ $ ((\S1~input_o\)))) ) ) ) # ( \IN1[8]~input_o\ & ( 
-- !\sub_part|finalstg:8:OrS_ins|y~combout\ & ( !\IN2[8]~input_o\ $ (((!\S0~input_o\ & (!\S1~input_o\ & !\add_part|stg32:3:prefixcomp|Orga|y~combout\)))) ) ) ) # ( !\IN1[8]~input_o\ & ( !\sub_part|finalstg:8:OrS_ins|y~combout\ & ( (!\S0~input_o\ & 
-- ((!\IN2[8]~input_o\ $ (\add_part|stg32:3:prefixcomp|Orga|y~combout\)) # (\S1~input_o\))) # (\S0~input_o\ & (\IN2[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101100111011011011001100110011001011011010110011110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_IN2[8]~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \add_part|stg32:3:prefixcomp|Orga|ALT_INV_y~combout\,
	datae => \ALT_INV_IN1[8]~input_o\,
	dataf => \sub_part|finalstg:8:OrS_ins|ALT_INV_y~combout\,
	combout => \Z~8_combout\);

-- Location: LABCELL_X57_Y3_N30
\add_part|XorGa:8:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ = ( \IN1[8]~input_o\ & ( !\IN2[8]~input_o\ ) ) # ( !\IN1[8]~input_o\ & ( \IN2[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN2[8]~input_o\,
	dataf => \ALT_INV_IN1[8]~input_o\,
	combout => \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X57_Y4_N12
\sub_part|stg2:6:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\ = ( \IN2[7]~input_o\ & ( (!\IN2[8]~input_o\ & \IN1[8]~input_o\) ) ) # ( !\IN2[7]~input_o\ & ( (!\IN2[8]~input_o\ & ((\IN1[7]~input_o\) # (\IN1[8]~input_o\))) # (\IN2[8]~input_o\ & (\IN1[8]~input_o\ & 
-- \IN1[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[8]~input_o\,
	datac => \ALT_INV_IN1[8]~input_o\,
	datad => \ALT_INV_IN1[7]~input_o\,
	dataf => \ALT_INV_IN2[7]~input_o\,
	combout => \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y4_N42
\sub_part|stg2:6:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|stg2:6:prefixcomp|Orga|y~0_combout\ ) ) # ( !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (!\sub_part|stg2:6:prefixcomp|Orga|y~0_combout\ & ((!\sub_part|stg2:4:prefixcomp|Orga|y~0_combout\) # (\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y4_N45
\sub_part|finalstg:9:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:9:OrS_ins|y~2_combout\ = ( \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ ) ) # ( !\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (\sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ & (((!\sub_part|finalstg:9:OrS_ins|y~1_combout\) # (\sub_part|stg2:2:prefixcomp|Orga|y~2_combout\)) # (\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \sub_part|stg2:2:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datad => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:9:OrS_ins|y~2_combout\);

-- Location: MLABCELL_X52_Y4_N30
\sub_part|finalstg:9:OrS_ins|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:9:OrS_ins|y~3_combout\ = ( \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:9:OrS_ins|y~2_combout\ ) ) # ( !\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (\sub_part|finalstg:9:OrS_ins|y~2_combout\ & ((!\sub_part|finalstg:9:OrS_ins|y~0_combout\) # (!\sub_part|stg32:3:prefixcomp|And0_instance|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~2_combout\,
	datad => \sub_part|stg32:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:9:OrS_ins|y~3_combout\);

-- Location: IOIBUF_X70_Y0_N1
\IN1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(9),
	o => \IN1[9]~input_o\);

-- Location: LABCELL_X57_Y4_N15
\add_part|stg2:6:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:6:prefixcomp|Orga|y~0_combout\ = ( \IN2[7]~input_o\ & ( (!\IN1[8]~input_o\ & (\IN2[8]~input_o\ & \IN1[7]~input_o\)) # (\IN1[8]~input_o\ & ((\IN1[7]~input_o\) # (\IN2[8]~input_o\))) ) ) # ( !\IN2[7]~input_o\ & ( (\IN1[8]~input_o\ & 
-- \IN2[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[8]~input_o\,
	datab => \ALT_INV_IN2[8]~input_o\,
	datac => \ALT_INV_IN1[7]~input_o\,
	dataf => \ALT_INV_IN2[7]~input_o\,
	combout => \add_part|stg2:6:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y4_N54
\add_part|stg2:6:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:6:prefixcomp|Orga|y~1_combout\ = ( \add_part|stg2:4:prefixcomp|Orga|y~0_combout\ & ( (!\add_part|stg2:6:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\))) ) ) # ( !\add_part|stg2:4:prefixcomp|Orga|y~0_combout\ & ( !\add_part|stg2:6:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:6:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y4_N48
\add_part|stg32:4:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & (\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & 
-- \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X57_Y4_N3
\add_part|stg42:0:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:0:prefixcomp|Orga|y~combout\ = (\add_part|stg2:6:prefixcomp|Orga|y~1_combout\ & ((!\add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\) # ((\add_part|stg2:2:prefixcomp|Orga|y~1_combout\ & 
-- !\add_part|stg32:0:prefixcomp|And0_instance|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000100000011110000010000001111000001000000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:2:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datab => \add_part|stg32:0:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:0:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X64_Y0_N1
\IN2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(9),
	o => \IN2[9]~input_o\);

-- Location: LABCELL_X57_Y4_N48
\Z~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~9_combout\ = ( \add_part|stg42:0:prefixcomp|Orga|y~combout\ & ( \IN2[9]~input_o\ & ( !\IN1[9]~input_o\ $ (((\sub_part|finalstg:9:OrS_ins|y~3_combout\ & (\S0~input_o\ & !\S1~input_o\)))) ) ) ) # ( !\add_part|stg42:0:prefixcomp|Orga|y~combout\ & ( 
-- \IN2[9]~input_o\ & ( !\IN1[9]~input_o\ $ (((!\S1~input_o\ & ((!\S0~input_o\) # (\sub_part|finalstg:9:OrS_ins|y~3_combout\))))) ) ) ) # ( \add_part|stg42:0:prefixcomp|Orga|y~combout\ & ( !\IN2[9]~input_o\ & ( (!\S0~input_o\ & (((\S1~input_o\) # 
-- (\IN1[9]~input_o\)))) # (\S0~input_o\ & (!\IN1[9]~input_o\ $ (((!\sub_part|finalstg:9:OrS_ins|y~3_combout\) # (\S1~input_o\))))) ) ) ) # ( !\add_part|stg42:0:prefixcomp|Orga|y~combout\ & ( !\IN2[9]~input_o\ & ( (!\S0~input_o\ & (((!\IN1[9]~input_o\) # 
-- (\S1~input_o\)))) # (\S0~input_o\ & (!\IN1[9]~input_o\ $ (((!\sub_part|finalstg:9:OrS_ins|y~3_combout\) # (\S1~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011110011001101101111001100111001110011001100100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~3_combout\,
	datab => \ALT_INV_IN1[9]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \add_part|stg42:0:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \ALT_INV_IN2[9]~input_o\,
	combout => \Z~9_combout\);

-- Location: IOIBUF_X56_Y0_N1
\IN2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(10),
	o => \IN2[10]~input_o\);

-- Location: LABCELL_X57_Y4_N27
\sub_part|finalstg:11:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:11:OrS_ins|y~1_combout\ = ( \IN1[9]~input_o\ & ( (\IN2[9]~input_o\ & (!\IN2[8]~input_o\ $ (\IN1[8]~input_o\))) ) ) # ( !\IN1[9]~input_o\ & ( (!\IN2[9]~input_o\ & (!\IN2[8]~input_o\ $ (\IN1[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \ALT_INV_IN2[8]~input_o\,
	datad => \ALT_INV_IN1[8]~input_o\,
	dataf => \ALT_INV_IN1[9]~input_o\,
	combout => \sub_part|finalstg:11:OrS_ins|y~1_combout\);

-- Location: LABCELL_X57_Y4_N30
\sub_part|stg2:7:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\ = ( \IN2[8]~input_o\ & ( (\IN1[9]~input_o\ & !\IN2[9]~input_o\) ) ) # ( !\IN2[8]~input_o\ & ( (!\IN1[9]~input_o\ & (!\IN2[9]~input_o\ & \IN1[8]~input_o\)) # (\IN1[9]~input_o\ & ((!\IN2[9]~input_o\) # 
-- (\IN1[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN1[9]~input_o\,
	datac => \ALT_INV_IN2[9]~input_o\,
	datad => \ALT_INV_IN1[8]~input_o\,
	dataf => \ALT_INV_IN2[8]~input_o\,
	combout => \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X51_Y4_N21
\sub_part|stg2:7:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ = ( !\sub_part|stg2:7:prefixcomp|Orga|y~0_combout\ & ( (!\sub_part|stg2:5:prefixcomp|Orga|y~0_combout\) # (!\sub_part|finalstg:11:OrS_ins|y~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X51_Y4_N3
\sub_part|finalstg:10:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:10:OrS_ins|y~0_combout\ = ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( \sub_part|finalstg:9:OrS_ins|y~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:10:OrS_ins|y~0_combout\);

-- Location: MLABCELL_X52_Y4_N18
\sub_part|finalstg:10:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:10:OrS_ins|y~1_combout\ = ( \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ ) ) # ( !\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (\sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ & (((!\sub_part|finalstg:11:OrS_ins|y~0_combout\) # (!\sub_part|finalstg:10:OrS_ins|y~0_combout\)) # (\sub_part|finalstg:6:OrS_ins|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:10:OrS_ins|y~1_combout\);

-- Location: MLABCELL_X52_Y4_N0
\sub_part|finalstg:10:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:10:OrS_ins|y~2_combout\ = ( \sub_part|stg2:3:prefixcomp|Orga|y~1_combout\ & ( \sub_part|finalstg:10:OrS_ins|y~1_combout\ ) ) # ( !\sub_part|stg2:3:prefixcomp|Orga|y~1_combout\ & ( (\sub_part|finalstg:10:OrS_ins|y~1_combout\ & 
-- !\sub_part|finalstg:10:OrS_ins|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~1_combout\,
	datac => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:10:OrS_ins|y~2_combout\);

-- Location: IOIBUF_X54_Y0_N35
\IN1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(10),
	o => \IN1[10]~input_o\);

-- Location: LABCELL_X57_Y4_N24
\add_part|stg2:7:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:7:prefixcomp|Orga|y~0_combout\ = ( \IN1[9]~input_o\ & ( ((\IN2[8]~input_o\ & \IN1[8]~input_o\)) # (\IN2[9]~input_o\) ) ) # ( !\IN1[9]~input_o\ & ( (\IN2[9]~input_o\ & (\IN2[8]~input_o\ & \IN1[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \ALT_INV_IN2[8]~input_o\,
	datac => \ALT_INV_IN1[8]~input_o\,
	dataf => \ALT_INV_IN1[9]~input_o\,
	combout => \add_part|stg2:7:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X57_Y4_N39
\add_part|XorGa:9:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ = ( \IN2[9]~input_o\ & ( !\IN1[9]~input_o\ ) ) # ( !\IN2[9]~input_o\ & ( \IN1[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[9]~input_o\,
	dataf => \ALT_INV_IN2[9]~input_o\,
	combout => \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X53_Y4_N39
\add_part|stg2:7:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:7:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ & ((!\add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|stg2:5:prefixcomp|Orga|y~0_combout\))) ) ) # ( !\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:7:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N15
\add_part|stg42:1:prefixcomp|And0_instance|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\ = ( \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (\add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ & 
-- (\add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\ & \add_part|stg1:0:prefixcomp|Orga|y~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg1:0:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\);

-- Location: LABCELL_X53_Y4_N0
\add_part|stg32:5:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ & (\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & 
-- \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X53_Y5_N18
\add_part|stg42:1:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:1:prefixcomp|Orga|y~combout\ = ( \add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\ & ( (\add_part|stg2:3:prefixcomp|Orga|y~1_combout\ & (\add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & 
-- !\add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\)) ) ) # ( !\add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\ & ( (\add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & !\add_part|stg42:1:prefixcomp|And0_instance|y~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~1_combout\,
	dataf => \add_part|stg32:5:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:1:prefixcomp|Orga|y~combout\);

-- Location: LABCELL_X55_Y4_N30
\Z~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~10_combout\ = ( \add_part|stg42:1:prefixcomp|Orga|y~combout\ & ( \S1~input_o\ & ( (!\IN2[10]~input_o\ & ((!\S0~input_o\) # (\IN1[10]~input_o\))) # (\IN2[10]~input_o\ & ((!\IN1[10]~input_o\))) ) ) ) # ( !\add_part|stg42:1:prefixcomp|Orga|y~combout\ & ( 
-- \S1~input_o\ & ( (!\IN2[10]~input_o\ & ((!\S0~input_o\) # (\IN1[10]~input_o\))) # (\IN2[10]~input_o\ & ((!\IN1[10]~input_o\))) ) ) ) # ( \add_part|stg42:1:prefixcomp|Orga|y~combout\ & ( !\S1~input_o\ & ( !\IN2[10]~input_o\ $ (!\IN1[10]~input_o\ $ 
-- (((\sub_part|finalstg:10:OrS_ins|y~2_combout\ & \S0~input_o\)))) ) ) ) # ( !\add_part|stg42:1:prefixcomp|Orga|y~combout\ & ( !\S1~input_o\ & ( !\IN2[10]~input_o\ $ (!\IN1[10]~input_o\ $ (((!\S0~input_o\) # (\sub_part|finalstg:10:OrS_ins|y~2_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011001011001010101101010100111110101101010101111010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[10]~input_o\,
	datab => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~2_combout\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_IN1[10]~input_o\,
	datae => \add_part|stg42:1:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \Z~10_combout\);

-- Location: LABCELL_X57_Y3_N39
\add_part|XorGa:10:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ = ( !\IN1[10]~input_o\ & ( \IN2[10]~input_o\ ) ) # ( \IN1[10]~input_o\ & ( !\IN2[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_IN1[10]~input_o\,
	dataf => \ALT_INV_IN2[10]~input_o\,
	combout => \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X57_Y3_N12
\add_part|stg42:2:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datae => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X57_Y3_N21
\add_part|stg32:6:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ & ( (\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X57_Y4_N42
\add_part|stg2:8:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:8:prefixcomp|Orga|y~0_combout\ = ( \add_part|stg2:6:prefixcomp|Orga|y~0_combout\ & ( (!\IN2[10]~input_o\ & (\IN1[10]~input_o\ & ((\IN1[9]~input_o\) # (\IN2[9]~input_o\)))) # (\IN2[10]~input_o\ & (((\IN1[10]~input_o\) # (\IN1[9]~input_o\)) # 
-- (\IN2[9]~input_o\))) ) ) # ( !\add_part|stg2:6:prefixcomp|Orga|y~0_combout\ & ( (!\IN2[10]~input_o\ & (\IN2[9]~input_o\ & (\IN1[9]~input_o\ & \IN1[10]~input_o\))) # (\IN2[10]~input_o\ & (((\IN2[9]~input_o\ & \IN1[9]~input_o\)) # (\IN1[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \ALT_INV_IN1[9]~input_o\,
	datac => \ALT_INV_IN2[10]~input_o\,
	datad => \ALT_INV_IN1[10]~input_o\,
	dataf => \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg2:8:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y5_N27
\add_part|stg42:2:prefixcomp|And0_instance|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:2:prefixcomp|And0_instance|y~1_combout\ = ( \add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ & ( (!\add_part|stg2:0:prefixcomp|Orga|y~combout\ & (\add_part|stg42:1:prefixcomp|And0_instance|y~0_combout\ & 
-- \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \add_part|stg42:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:2:prefixcomp|And0_instance|y~1_combout\);

-- Location: LABCELL_X53_Y5_N33
\add_part|stg42:2:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:2:prefixcomp|Orga|y~combout\ = (!\add_part|stg2:8:prefixcomp|Orga|y~0_combout\ & (!\add_part|stg42:2:prefixcomp|And0_instance|y~1_combout\ & ((!\add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\) # 
-- (\add_part|stg2:4:prefixcomp|Orga|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg32:6:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datab => \add_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~1_combout\,
	combout => \add_part|stg42:2:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X68_Y0_N35
\IN1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(11),
	o => \IN1[11]~input_o\);

-- Location: LABCELL_X57_Y4_N33
\sub_part|stg2:8:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ = ( \IN2[10]~input_o\ & ( (\IN1[10]~input_o\ & ((!\IN2[9]~input_o\ & ((\sub_part|stg2:6:prefixcomp|Orga|y~0_combout\) # (\IN1[9]~input_o\))) # (\IN2[9]~input_o\ & (\IN1[9]~input_o\ & 
-- \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\)))) ) ) # ( !\IN2[10]~input_o\ & ( ((!\IN2[9]~input_o\ & ((\sub_part|stg2:6:prefixcomp|Orga|y~0_combout\) # (\IN1[9]~input_o\))) # (\IN2[9]~input_o\ & (\IN1[9]~input_o\ & 
-- \sub_part|stg2:6:prefixcomp|Orga|y~0_combout\))) # (\IN1[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110111111001011111011111100000010000010110000001000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \ALT_INV_IN1[9]~input_o\,
	datac => \ALT_INV_IN1[10]~input_o\,
	datad => \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN2[10]~input_o\,
	combout => \sub_part|stg2:8:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X51_Y4_N39
\sub_part|finalstg:11:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:11:OrS_ins|y~2_combout\ = ( \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( !\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ ) ) ) # ( 
-- !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( (!\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ & ((\sub_part|stg2:4:prefixcomp|Orga|y~1_combout\) # 
-- (\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\))) ) ) ) # ( \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( !\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ ) ) ) # ( 
-- !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( !\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001011111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:4:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \sub_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datae => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:11:OrS_ins|y~2_combout\);

-- Location: MLABCELL_X52_Y4_N42
\sub_part|finalstg:11:OrS_ins|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:11:OrS_ins|y~3_combout\ = ( \sub_part|finalstg:11:OrS_ins|y~2_combout\ & ( (((!\sub_part|finalstg:10:OrS_ins|y~0_combout\) # (!\sub_part|finalstg:11:OrS_ins|y~0_combout\)) # (\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\)) # 
-- (\sub_part|finalstg:7:OrS_ins|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	datad => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~2_combout\,
	combout => \sub_part|finalstg:11:OrS_ins|y~3_combout\);

-- Location: IOIBUF_X62_Y0_N52
\IN2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(11),
	o => \IN2[11]~input_o\);

-- Location: LABCELL_X55_Y4_N6
\Z~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~11_combout\ = ( \sub_part|finalstg:11:OrS_ins|y~3_combout\ & ( \IN2[11]~input_o\ & ( !\IN1[11]~input_o\ $ (((!\S1~input_o\ & ((!\add_part|stg42:2:prefixcomp|Orga|y~combout\) # (\S0~input_o\))))) ) ) ) # ( !\sub_part|finalstg:11:OrS_ins|y~3_combout\ & ( 
-- \IN2[11]~input_o\ & ( !\IN1[11]~input_o\ $ (((!\S1~input_o\ & (!\add_part|stg42:2:prefixcomp|Orga|y~combout\ & !\S0~input_o\)))) ) ) ) # ( \sub_part|finalstg:11:OrS_ins|y~3_combout\ & ( !\IN2[11]~input_o\ & ( (!\S1~input_o\ & (!\IN1[11]~input_o\ $ 
-- (((\add_part|stg42:2:prefixcomp|Orga|y~combout\ & !\S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\) # (\IN1[11]~input_o\)))) ) ) ) # ( !\sub_part|finalstg:11:OrS_ins|y~3_combout\ & ( !\IN2[11]~input_o\ & ( (!\S0~input_o\ & 
-- ((!\add_part|stg42:2:prefixcomp|Orga|y~combout\ $ (\IN1[11]~input_o\)) # (\S1~input_o\))) # (\S0~input_o\ & (((\IN1[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001111111110110100111010101111111100000000111010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \add_part|stg42:2:prefixcomp|Orga|ALT_INV_y~combout\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_IN1[11]~input_o\,
	datae => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~3_combout\,
	dataf => \ALT_INV_IN2[11]~input_o\,
	combout => \Z~11_combout\);

-- Location: IOIBUF_X68_Y0_N1
\IN2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(12),
	o => \IN2[12]~input_o\);

-- Location: LABCELL_X53_Y3_N33
\add_part|XorGa:11:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ = ( \IN1[11]~input_o\ & ( !\IN2[11]~input_o\ ) ) # ( !\IN1[11]~input_o\ & ( \IN2[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[11]~input_o\,
	datae => \ALT_INV_IN1[11]~input_o\,
	combout => \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X51_Y4_N12
\sub_part|finalstg:12:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:12:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:12:OrS_ins|y~0_combout\);

-- Location: LABCELL_X51_Y4_N15
\sub_part|finalstg:12:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:12:OrS_ins|y~1_combout\ = ( !\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & ( (\sub_part|finalstg:10:OrS_ins|y~0_combout\ & !\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:12:OrS_ins|y~1_combout\);

-- Location: LABCELL_X55_Y4_N12
\sub_part|stg2:9:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg2:9:prefixcomp|Orga|y~0_combout\ = ( \IN2[11]~input_o\ & ( (\IN1[11]~input_o\ & ((!\IN2[10]~input_o\ & ((\sub_part|stg2:7:prefixcomp|Orga|y~0_combout\) # (\IN1[10]~input_o\))) # (\IN2[10]~input_o\ & (\IN1[10]~input_o\ & 
-- \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\)))) ) ) # ( !\IN2[11]~input_o\ & ( ((!\IN2[10]~input_o\ & ((\sub_part|stg2:7:prefixcomp|Orga|y~0_combout\) # (\IN1[10]~input_o\))) # (\IN2[10]~input_o\ & (\IN1[10]~input_o\ & 
-- \sub_part|stg2:7:prefixcomp|Orga|y~0_combout\))) # (\IN1[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111111111001010111111111100000000001010110000000000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[10]~input_o\,
	datab => \ALT_INV_IN1[10]~input_o\,
	datac => \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN1[11]~input_o\,
	dataf => \ALT_INV_IN2[11]~input_o\,
	combout => \sub_part|stg2:9:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X51_Y4_N48
\sub_part|finalstg:12:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:12:OrS_ins|y~2_combout\ = ( !\sub_part|stg2:9:prefixcomp|Orga|y~0_combout\ & ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( (!\sub_part|finalstg:12:OrS_ins|y~0_combout\) # ((\sub_part|stg2:5:prefixcomp|Orga|y~1_combout\ & 
-- ((!\sub_part|finalstg:12:OrS_ins|y~1_combout\) # (\sub_part|finalstg:4:OrS_ins|y~combout\)))) ) ) ) # ( !\sub_part|stg2:9:prefixcomp|Orga|y~0_combout\ & ( !\sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( (!\sub_part|finalstg:12:OrS_ins|y~0_combout\) # 
-- ((!\sub_part|finalstg:12:OrS_ins|y~1_combout\) # (\sub_part|finalstg:4:OrS_ins|y~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011000000000000000010101111101010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:12:OrS_ins|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:4:OrS_ins|ALT_INV_y~combout\,
	datac => \sub_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \sub_part|finalstg:12:OrS_ins|ALT_INV_y~1_combout\,
	datae => \sub_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:12:OrS_ins|y~2_combout\);

-- Location: LABCELL_X53_Y4_N36
\add_part|stg2:9:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg2:9:prefixcomp|Orga|y~0_combout\ = ( \IN1[11]~input_o\ & ( ((!\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ & (\IN2[10]~input_o\ & \IN1[10]~input_o\)) # (\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ & ((\IN1[10]~input_o\) # 
-- (\IN2[10]~input_o\)))) # (\IN2[11]~input_o\) ) ) # ( !\IN1[11]~input_o\ & ( (\IN2[11]~input_o\ & ((!\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ & (\IN2[10]~input_o\ & \IN1[10]~input_o\)) # (\add_part|stg2:7:prefixcomp|Orga|y~0_combout\ & 
-- ((\IN1[10]~input_o\) # (\IN2[10]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[11]~input_o\,
	datab => \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \ALT_INV_IN2[10]~input_o\,
	datad => \ALT_INV_IN1[10]~input_o\,
	dataf => \ALT_INV_IN1[11]~input_o\,
	combout => \add_part|stg2:9:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y4_N15
\add_part|stg32:7:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ & \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X53_Y4_N12
\add_part|stg42:3:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:3:prefixcomp|And0_instance|y~0_combout\ = ( \add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & (\add_part|stg42:2:prefixcomp|And0_instance|y~0_combout\ & 
-- !\add_part|stg2:1:prefixcomp|Orga|y~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg42:2:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:3:prefixcomp|And0_instance|y~0_combout\);

-- Location: LABCELL_X53_Y4_N18
\add_part|stg42:3:prefixcomp|Orga|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:3:prefixcomp|Orga|y~combout\ = ( \add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\ & ( (!\add_part|stg2:9:prefixcomp|Orga|y~0_combout\ & (!\add_part|stg42:3:prefixcomp|And0_instance|y~0_combout\ & 
-- ((!\add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\) # (\add_part|stg2:5:prefixcomp|Orga|y~1_combout\)))) ) ) # ( !\add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\ & ( (!\add_part|stg2:9:prefixcomp|Orga|y~0_combout\ & 
-- ((!\add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\) # (\add_part|stg2:5:prefixcomp|Orga|y~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datab => \add_part|stg32:7:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg2:5:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|stg42:3:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:3:prefixcomp|Orga|y~combout\);

-- Location: IOIBUF_X60_Y0_N18
\IN1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(12),
	o => \IN1[12]~input_o\);

-- Location: LABCELL_X55_Y4_N18
\Z~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~12_combout\ = ( \add_part|stg42:3:prefixcomp|Orga|y~combout\ & ( \IN1[12]~input_o\ & ( !\IN2[12]~input_o\ $ (((!\S1~input_o\ & (\sub_part|finalstg:12:OrS_ins|y~2_combout\ & \S0~input_o\)))) ) ) ) # ( !\add_part|stg42:3:prefixcomp|Orga|y~combout\ & ( 
-- \IN1[12]~input_o\ & ( !\IN2[12]~input_o\ $ (((!\S1~input_o\ & ((!\S0~input_o\) # (\sub_part|finalstg:12:OrS_ins|y~2_combout\))))) ) ) ) # ( \add_part|stg42:3:prefixcomp|Orga|y~combout\ & ( !\IN1[12]~input_o\ & ( (!\S1~input_o\ & (!\IN2[12]~input_o\ $ 
-- (((!\sub_part|finalstg:12:OrS_ins|y~2_combout\) # (!\S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\)) # (\IN2[12]~input_o\))) ) ) ) # ( !\add_part|stg42:3:prefixcomp|Orga|y~combout\ & ( !\IN1[12]~input_o\ & ( (!\S1~input_o\ & (!\IN2[12]~input_o\ $ 
-- (((!\sub_part|finalstg:12:OrS_ins|y~2_combout\ & \S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\)) # (\IN2[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100111001011101110011100101100110110001101100110011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \ALT_INV_IN2[12]~input_o\,
	datac => \sub_part|finalstg:12:OrS_ins|ALT_INV_y~2_combout\,
	datad => \ALT_INV_S0~input_o\,
	datae => \add_part|stg42:3:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \ALT_INV_IN1[12]~input_o\,
	combout => \Z~12_combout\);

-- Location: IOIBUF_X72_Y0_N35
\IN2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(13),
	o => \IN2[13]~input_o\);

-- Location: LABCELL_X53_Y3_N39
\add_part|XorGa:12:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ = ( !\IN1[12]~input_o\ & ( \IN2[12]~input_o\ ) ) # ( \IN1[12]~input_o\ & ( !\IN2[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_IN1[12]~input_o\,
	dataf => \ALT_INV_IN2[12]~input_o\,
	combout => \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X56_Y4_N3
\sub_part|finalstg:13:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:13:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & !\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:13:OrS_ins|y~0_combout\);

-- Location: LABCELL_X55_Y4_N15
\sub_part|finalstg:13:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:13:OrS_ins|y~1_combout\ = ( !\IN2[10]~input_o\ & ( (\IN1[10]~input_o\ & (!\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & !\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN1[10]~input_o\,
	datac => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN2[10]~input_o\,
	combout => \sub_part|finalstg:13:OrS_ins|y~1_combout\);

-- Location: LABCELL_X53_Y3_N42
\sub_part|finalstg:13:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:13:OrS_ins|y~2_combout\ = ( \IN1[12]~input_o\ & ( (!\IN2[12]~input_o\) # ((\IN1[11]~input_o\ & !\IN2[11]~input_o\)) ) ) # ( !\IN1[12]~input_o\ & ( (!\IN2[12]~input_o\ & (\IN1[11]~input_o\ & !\IN2[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101110101011101000100000001000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[12]~input_o\,
	datab => \ALT_INV_IN1[11]~input_o\,
	datac => \ALT_INV_IN2[11]~input_o\,
	datae => \ALT_INV_IN1[12]~input_o\,
	combout => \sub_part|finalstg:13:OrS_ins|y~2_combout\);

-- Location: LABCELL_X57_Y4_N18
\sub_part|finalstg:13:OrS_ins|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:13:OrS_ins|y~3_combout\ = ( \sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ & ( !\sub_part|finalstg:13:OrS_ins|y~2_combout\ & ( (!\sub_part|finalstg:13:OrS_ins|y~1_combout\ & (((!\sub_part|finalstg:13:OrS_ins|y~0_combout\) # 
-- (!\IN1[9]~input_o\)) # (\IN2[9]~input_o\))) ) ) ) # ( !\sub_part|stg2:6:prefixcomp|Orga|y~1_combout\ & ( !\sub_part|finalstg:13:OrS_ins|y~2_combout\ & ( (!\sub_part|finalstg:13:OrS_ins|y~1_combout\ & ((!\sub_part|finalstg:13:OrS_ins|y~0_combout\) # 
-- ((\IN2[9]~input_o\ & !\IN1[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011000000111100001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~1_combout\,
	datad => \ALT_INV_IN1[9]~input_o\,
	datae => \sub_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\,
	dataf => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~2_combout\,
	combout => \sub_part|finalstg:13:OrS_ins|y~3_combout\);

-- Location: LABCELL_X56_Y4_N0
\sub_part|finalstg:13:OrS_ins|y~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:13:OrS_ins|y~4_combout\ = ( \sub_part|finalstg:13:OrS_ins|y~3_combout\ & ( ((!\sub_part|finalstg:10:OrS_ins|y~0_combout\) # ((!\sub_part|finalstg:13:OrS_ins|y~0_combout\) # (\sub_part|finalstg:5:OrS_ins|y~0_combout\))) # 
-- (\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:5:OrS_ins|ALT_INV_y~0_combout\,
	datad => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~3_combout\,
	combout => \sub_part|finalstg:13:OrS_ins|y~4_combout\);

-- Location: LABCELL_X57_Y3_N24
\add_part|stg42:4:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:4:prefixcomp|Orga|y~0_combout\ = ( \add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:4:prefixcomp|Orga|y~0_combout\);

-- Location: LABCELL_X53_Y3_N18
\add_part|XorGa:10:Xor_instance|AND2_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ = ( \IN2[10]~input_o\ & ( \IN1[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN1[10]~input_o\,
	dataf => \ALT_INV_IN2[10]~input_o\,
	combout => \add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N0
\add_part|stg42:4:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:4:prefixcomp|Orga|y~1_combout\ = ( \add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ & ( (!\IN1[12]~input_o\ & (\IN2[12]~input_o\ & ((\IN2[11]~input_o\) # (\IN1[11]~input_o\)))) # (\IN1[12]~input_o\ & (((\IN2[12]~input_o\) # 
-- (\IN2[11]~input_o\)) # (\IN1[11]~input_o\))) ) ) # ( !\add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ & ( (!\IN1[12]~input_o\ & (\IN1[11]~input_o\ & (\IN2[11]~input_o\ & \IN2[12]~input_o\))) # (\IN1[12]~input_o\ & (((\IN1[11]~input_o\ & 
-- \IN2[11]~input_o\)) # (\IN2[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[12]~input_o\,
	datab => \ALT_INV_IN1[11]~input_o\,
	datac => \ALT_INV_IN2[11]~input_o\,
	datad => \ALT_INV_IN2[12]~input_o\,
	dataf => \add_part|XorGa:10:Xor_instance|AND2_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:4:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X57_Y4_N36
\add_part|stg42:4:prefixcomp|Orga|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:4:prefixcomp|Orga|y~2_combout\ = ( \IN2[9]~input_o\ & ( (!\add_part|stg42:4:prefixcomp|Orga|y~1_combout\ & ((!\add_part|stg42:4:prefixcomp|Orga|y~0_combout\) # ((!\IN1[9]~input_o\ & \add_part|stg2:6:prefixcomp|Orga|y~1_combout\)))) ) ) # ( 
-- !\IN2[9]~input_o\ & ( (!\add_part|stg42:4:prefixcomp|Orga|y~1_combout\ & ((!\IN1[9]~input_o\) # ((!\add_part|stg42:4:prefixcomp|Orga|y~0_combout\) # (\add_part|stg2:6:prefixcomp|Orga|y~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000111110110000000011110010000000001111001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[9]~input_o\,
	datab => \add_part|stg2:6:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~1_combout\,
	dataf => \ALT_INV_IN2[9]~input_o\,
	combout => \add_part|stg42:4:prefixcomp|Orga|y~2_combout\);

-- Location: LABCELL_X57_Y4_N54
\add_part|stg42:4:prefixcomp|Orga|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:4:prefixcomp|Orga|y~3_combout\ = ( \add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( (\add_part|stg42:4:prefixcomp|Orga|y~2_combout\ & (((!\add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\) # 
-- (!\add_part|stg32:4:prefixcomp|And0_instance|y~0_combout\)) # (\add_part|stg32:0:prefixcomp|Orga|y~combout\))) ) ) # ( !\add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( \add_part|stg42:4:prefixcomp|Orga|y~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg32:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datad => \add_part|stg32:4:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:4:prefixcomp|Orga|y~3_combout\);

-- Location: IOIBUF_X68_Y0_N52
\IN1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(13),
	o => \IN1[13]~input_o\);

-- Location: LABCELL_X56_Y4_N36
\Z~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~13_combout\ = ( \S0~input_o\ & ( \IN1[13]~input_o\ & ( !\IN2[13]~input_o\ $ (((!\S1~input_o\ & \sub_part|finalstg:13:OrS_ins|y~4_combout\))) ) ) ) # ( !\S0~input_o\ & ( \IN1[13]~input_o\ & ( !\IN2[13]~input_o\ $ (((!\S1~input_o\ & 
-- !\add_part|stg42:4:prefixcomp|Orga|y~3_combout\))) ) ) ) # ( \S0~input_o\ & ( !\IN1[13]~input_o\ & ( !\IN2[13]~input_o\ $ (((!\sub_part|finalstg:13:OrS_ins|y~4_combout\) # (\S1~input_o\))) ) ) ) # ( !\S0~input_o\ & ( !\IN1[13]~input_o\ & ( 
-- (!\IN2[13]~input_o\ $ (\add_part|stg42:4:prefixcomp|Orga|y~3_combout\)) # (\S1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101110111010110010101100101100110101010101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[13]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~4_combout\,
	datad => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~3_combout\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_IN1[13]~input_o\,
	combout => \Z~13_combout\);

-- Location: MLABCELL_X59_Y4_N39
\add_part|XorGa:13:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ = !\IN2[13]~input_o\ $ (!\IN1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[13]~input_o\,
	datab => \ALT_INV_IN1[13]~input_o\,
	combout => \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N12
\sub_part|finalstg:14:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:14:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( (!\IN1[12]~input_o\ & (!\IN2[12]~input_o\ & (!\IN2[11]~input_o\ & \IN1[11]~input_o\))) # (\IN1[12]~input_o\ & ((!\IN2[12]~input_o\) # 
-- ((!\IN2[11]~input_o\ & \IN1[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011010100010001001101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[12]~input_o\,
	datab => \ALT_INV_IN2[12]~input_o\,
	datac => \ALT_INV_IN2[11]~input_o\,
	datad => \ALT_INV_IN1[11]~input_o\,
	dataf => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:14:OrS_ins|y~0_combout\);

-- Location: LABCELL_X56_Y4_N15
\sub_part|finalstg:14:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:14:OrS_ins|y~1_combout\ = ( \sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( (!\sub_part|finalstg:14:OrS_ins|y~0_combout\ & ((!\IN1[13]~input_o\) # (\IN2[13]~input_o\))) ) ) # ( !\sub_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( 
-- (!\sub_part|finalstg:14:OrS_ins|y~0_combout\ & ((!\sub_part|finalstg:13:OrS_ins|y~0_combout\ & ((!\IN1[13]~input_o\) # (\IN2[13]~input_o\))) # (\sub_part|finalstg:13:OrS_ins|y~0_combout\ & (!\IN1[13]~input_o\ & \IN2[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000000000100011100000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	datab => \ALT_INV_IN1[13]~input_o\,
	datac => \ALT_INV_IN2[13]~input_o\,
	datad => \sub_part|finalstg:14:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \sub_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:14:OrS_ins|y~1_combout\);

-- Location: LABCELL_X56_Y4_N18
\sub_part|finalstg:14:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:14:OrS_ins|y~2_combout\ = ( \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:6:OrS_ins|y~1_combout\ & ( \sub_part|finalstg:14:OrS_ins|y~1_combout\ ) ) ) # ( 
-- !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:6:OrS_ins|y~1_combout\ & ( (!\sub_part|finalstg:13:OrS_ins|y~1_combout\ & \sub_part|finalstg:14:OrS_ins|y~1_combout\) ) ) ) # ( 
-- \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|finalstg:6:OrS_ins|y~1_combout\ & ( \sub_part|finalstg:14:OrS_ins|y~1_combout\ ) ) ) # ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( 
-- !\sub_part|finalstg:6:OrS_ins|y~1_combout\ & ( (!\sub_part|finalstg:13:OrS_ins|y~1_combout\ & (\sub_part|finalstg:14:OrS_ins|y~1_combout\ & ((!\sub_part|finalstg:13:OrS_ins|y~0_combout\) # (!\sub_part|finalstg:10:OrS_ins|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001111111100000000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~1_combout\,
	datad => \sub_part|finalstg:14:OrS_ins|ALT_INV_y~1_combout\,
	datae => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~1_combout\,
	combout => \sub_part|finalstg:14:OrS_ins|y~2_combout\);

-- Location: IOIBUF_X64_Y0_N52
\IN2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(14),
	o => \IN2[14]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\IN1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(14),
	o => \IN1[14]~input_o\);

-- Location: MLABCELL_X59_Y4_N27
\add_part|stg42:5:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:5:prefixcomp|Orga|y~0_combout\ = ( \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ & (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & 
-- \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:10:Xor_instance|AND2_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:5:prefixcomp|Orga|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N33
\add_part|stg1:12:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ = ( \IN1[12]~input_o\ & ( (\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & \IN2[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN2[12]~input_o\,
	dataf => \ALT_INV_IN1[12]~input_o\,
	combout => \add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N51
\add_part|stg1:11:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ = (\IN2[11]~input_o\ & (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & \IN1[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN2[11]~input_o\,
	datac => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN1[11]~input_o\,
	combout => \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N30
\add_part|stg42:5:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:5:prefixcomp|Orga|y~1_combout\ = ( \IN2[13]~input_o\ & ( (!\add_part|stg42:5:prefixcomp|Orga|y~0_combout\ & (!\IN1[13]~input_o\ & (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & 
-- !\add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\))) ) ) # ( !\IN2[13]~input_o\ & ( (!\add_part|stg42:5:prefixcomp|Orga|y~0_combout\ & (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & ((!\IN1[13]~input_o\) # 
-- (!\add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datab => \ALT_INV_IN1[13]~input_o\,
	datac => \add_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg1:11:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN2[13]~input_o\,
	combout => \add_part|stg42:5:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N6
\add_part|stg42:5:prefixcomp|Orga|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:5:prefixcomp|Orga|y~2_combout\ = ( \add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( \add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( (\add_part|stg42:5:prefixcomp|Orga|y~1_combout\ & 
-- (((!\add_part|stg32:5:prefixcomp|And0_instance|y~0_combout\) # (!\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\)) # (\add_part|stg32:1:prefixcomp|Orga|y~combout\))) ) ) ) # ( !\add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( 
-- \add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( \add_part|stg42:5:prefixcomp|Orga|y~1_combout\ ) ) ) # ( \add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( !\add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( 
-- (\add_part|stg42:5:prefixcomp|Orga|y~1_combout\ & !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\) ) ) ) # ( !\add_part|stg42:4:prefixcomp|Orga|y~0_combout\ & ( !\add_part|stg2:7:prefixcomp|Orga|y~1_combout\ & ( 
-- \add_part|stg42:5:prefixcomp|Orga|y~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000000000001111000011110000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg32:1:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \add_part|stg32:5:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datae => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|stg2:7:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \add_part|stg42:5:prefixcomp|Orga|y~2_combout\);

-- Location: LABCELL_X56_Y4_N54
\Z~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~14_combout\ = ( \IN1[14]~input_o\ & ( \add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & ( !\IN2[14]~input_o\ $ (((\sub_part|finalstg:14:OrS_ins|y~2_combout\ & (!\S1~input_o\ & \S0~input_o\)))) ) ) ) # ( !\IN1[14]~input_o\ & ( 
-- \add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & ( (!\S1~input_o\ & (!\IN2[14]~input_o\ $ (((!\sub_part|finalstg:14:OrS_ins|y~2_combout\) # (!\S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\) # (\IN2[14]~input_o\)))) ) ) ) # ( \IN1[14]~input_o\ & ( 
-- !\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & ( !\IN2[14]~input_o\ $ (((!\S1~input_o\ & ((!\S0~input_o\) # (\sub_part|finalstg:14:OrS_ins|y~2_combout\))))) ) ) ) # ( !\IN1[14]~input_o\ & ( !\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & ( 
-- (!\S1~input_o\ & (!\IN2[14]~input_o\ $ (((!\sub_part|finalstg:14:OrS_ins|y~2_combout\ & \S0~input_o\))))) # (\S1~input_o\ & (((!\S0~input_o\) # (\IN2[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010000111011001110111100010000110100111110111111101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:14:OrS_ins|ALT_INV_y~2_combout\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_IN2[14]~input_o\,
	datae => \ALT_INV_IN1[14]~input_o\,
	dataf => \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~2_combout\,
	combout => \Z~14_combout\);

-- Location: MLABCELL_X59_Y4_N6
\sub_part|finalstg:15:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:15:OrS_ins|y~1_combout\ = ( \IN2[14]~input_o\ & ( \IN1[13]~input_o\ & ( (\IN1[14]~input_o\ & ((!\IN2[13]~input_o\) # ((\IN1[12]~input_o\ & !\IN2[12]~input_o\)))) ) ) ) # ( !\IN2[14]~input_o\ & ( \IN1[13]~input_o\ & ( 
-- (!\IN2[13]~input_o\) # (((\IN1[12]~input_o\ & !\IN2[12]~input_o\)) # (\IN1[14]~input_o\)) ) ) ) # ( \IN2[14]~input_o\ & ( !\IN1[13]~input_o\ & ( (!\IN2[13]~input_o\ & (\IN1[14]~input_o\ & (\IN1[12]~input_o\ & !\IN2[12]~input_o\))) ) ) ) # ( 
-- !\IN2[14]~input_o\ & ( !\IN1[13]~input_o\ & ( ((!\IN2[13]~input_o\ & (\IN1[12]~input_o\ & !\IN2[12]~input_o\))) # (\IN1[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011000000100000000010111111101110110010001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[13]~input_o\,
	datab => \ALT_INV_IN1[14]~input_o\,
	datac => \ALT_INV_IN1[12]~input_o\,
	datad => \ALT_INV_IN2[12]~input_o\,
	datae => \ALT_INV_IN2[14]~input_o\,
	dataf => \ALT_INV_IN1[13]~input_o\,
	combout => \sub_part|finalstg:15:OrS_ins|y~1_combout\);

-- Location: MLABCELL_X59_Y4_N48
\add_part|XorGa:14:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ = ( \IN2[14]~input_o\ & ( !\IN1[14]~input_o\ ) ) # ( !\IN2[14]~input_o\ & ( \IN1[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN1[14]~input_o\,
	dataf => \ALT_INV_IN2[14]~input_o\,
	combout => \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X56_Y4_N12
\sub_part|finalstg:15:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:15:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:15:OrS_ins|y~0_combout\);

-- Location: LABCELL_X56_Y4_N30
\sub_part|finalstg:15:OrS_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:15:OrS_ins|y~2_combout\ = ( \IN2[11]~input_o\ & ( \IN1[11]~input_o\ & ( (!\sub_part|finalstg:15:OrS_ins|y~1_combout\ & (((!\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\) # (!\sub_part|finalstg:15:OrS_ins|y~0_combout\)) # 
-- (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\))) ) ) ) # ( !\IN2[11]~input_o\ & ( \IN1[11]~input_o\ & ( (!\sub_part|finalstg:15:OrS_ins|y~1_combout\ & ((!\sub_part|finalstg:15:OrS_ins|y~0_combout\) # 
-- (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\))) ) ) ) # ( \IN2[11]~input_o\ & ( !\IN1[11]~input_o\ & ( !\sub_part|finalstg:15:OrS_ins|y~1_combout\ ) ) ) # ( !\IN2[11]~input_o\ & ( !\IN1[11]~input_o\ & ( 
-- (!\sub_part|finalstg:15:OrS_ins|y~1_combout\ & (((!\sub_part|stg2:8:prefixcomp|Orga|y~0_combout\) # (!\sub_part|finalstg:15:OrS_ins|y~0_combout\)) # (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010101010101010001000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~1_combout\,
	datab => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datad => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\,
	datae => \ALT_INV_IN2[11]~input_o\,
	dataf => \ALT_INV_IN1[11]~input_o\,
	combout => \sub_part|finalstg:15:OrS_ins|y~2_combout\);

-- Location: LABCELL_X56_Y4_N6
\sub_part|finalstg:15:OrS_ins|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:15:OrS_ins|y~3_combout\ = ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:15:OrS_ins|y~2_combout\ ) ) ) # ( !\sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( 
-- \add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:15:OrS_ins|y~2_combout\ ) ) ) # ( \sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (\sub_part|finalstg:15:OrS_ins|y~2_combout\ & ((!\sub_part|finalstg:13:OrS_ins|y~0_combout\) # ((!\sub_part|finalstg:15:OrS_ins|y~0_combout\) # (\sub_part|finalstg:7:OrS_ins|y~1_combout\)))) ) ) ) # ( !\sub_part|finalstg:11:OrS_ins|y~1_combout\ & ( 
-- !\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:15:OrS_ins|y~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~2_combout\,
	datac => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~1_combout\,
	datad => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\,
	datae => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:15:OrS_ins|y~3_combout\);

-- Location: LABCELL_X55_Y4_N57
\add_part|stg42:6:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:6:prefixcomp|Orga|y~0_combout\ = ( \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & (\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & 
-- \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:6:prefixcomp|Orga|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N42
\add_part|stg42:6:prefixcomp|Orga|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:6:prefixcomp|Orga|y~1_combout\ = ( \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ & ( \IN1[13]~input_o\ & ( (!\IN1[14]~input_o\ & !\IN2[14]~input_o\) ) ) ) # ( !\add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ & ( 
-- \IN1[13]~input_o\ & ( (!\IN1[14]~input_o\ & ((!\IN2[14]~input_o\) # ((!\IN2[13]~input_o\ & !\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\)))) # (\IN1[14]~input_o\ & (!\IN2[13]~input_o\ & (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ 
-- & !\IN2[14]~input_o\))) ) ) ) # ( \add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ & ( !\IN1[13]~input_o\ & ( (!\IN1[14]~input_o\ & ((!\IN2[14]~input_o\) # ((!\IN2[13]~input_o\ & !\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\)))) # 
-- (\IN1[14]~input_o\ & (!\IN2[13]~input_o\ & (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\IN2[14]~input_o\))) ) ) ) # ( !\add_part|stg1:11:prefixcomp|And0_instance|y~0_combout\ & ( !\IN1[13]~input_o\ & ( (!\IN1[14]~input_o\ & 
-- ((!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\) # (!\IN2[14]~input_o\))) # (\IN1[14]~input_o\ & (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\IN2[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111011001000000011101100100000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[13]~input_o\,
	datab => \ALT_INV_IN1[14]~input_o\,
	datac => \add_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN2[14]~input_o\,
	datae => \add_part|stg1:11:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN1[13]~input_o\,
	combout => \add_part|stg42:6:prefixcomp|Orga|y~1_combout\);

-- Location: LABCELL_X53_Y5_N30
\add_part|stg42:6:prefixcomp|Orga|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:6:prefixcomp|Orga|y~2_combout\ = ( \add_part|stg42:6:prefixcomp|Orga|y~1_combout\ & ( (!\add_part|stg42:6:prefixcomp|Orga|y~0_combout\) # ((!\add_part|stg2:8:prefixcomp|Orga|y~0_combout\ & 
-- ((!\add_part|stg32:6:prefixcomp|And0_instance|y~0_combout\) # (\add_part|stg32:2:prefixcomp|Orga|y~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100011001111111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg32:6:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datab => \add_part|stg2:8:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:2:prefixcomp|Orga|ALT_INV_y~combout\,
	datad => \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~1_combout\,
	combout => \add_part|stg42:6:prefixcomp|Orga|y~2_combout\);

-- Location: IOIBUF_X62_Y0_N1
\IN1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1(15),
	o => \IN1[15]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\IN2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2(15),
	o => \IN2[15]~input_o\);

-- Location: LABCELL_X55_Y4_N0
\Z~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Z~15_combout\ = ( \S0~input_o\ & ( \IN2[15]~input_o\ & ( !\IN1[15]~input_o\ $ (((!\S1~input_o\ & \sub_part|finalstg:15:OrS_ins|y~3_combout\))) ) ) ) # ( !\S0~input_o\ & ( \IN2[15]~input_o\ & ( !\IN1[15]~input_o\ $ (((!\S1~input_o\ & 
-- !\add_part|stg42:6:prefixcomp|Orga|y~2_combout\))) ) ) ) # ( \S0~input_o\ & ( !\IN2[15]~input_o\ & ( !\IN1[15]~input_o\ $ (((!\sub_part|finalstg:15:OrS_ins|y~3_combout\) # (\S1~input_o\))) ) ) ) # ( !\S0~input_o\ & ( !\IN2[15]~input_o\ & ( 
-- (!\add_part|stg42:6:prefixcomp|Orga|y~2_combout\ $ (\IN1[15]~input_o\)) # (\S1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101011111001000101101110101011111101000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~3_combout\,
	datac => \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datad => \ALT_INV_IN1[15]~input_o\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_IN2[15]~input_o\,
	combout => \Z~15_combout\);

-- Location: LABCELL_X55_Y4_N54
\add_part|XorGa:15:Xor_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\ = ( \IN1[15]~input_o\ & ( !\IN2[15]~input_o\ ) ) # ( !\IN1[15]~input_o\ & ( \IN2[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN2[15]~input_o\,
	dataf => \ALT_INV_IN1[15]~input_o\,
	combout => \add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X53_Y4_N3
\add_part|stg42:7:prefixcomp|Orga|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|stg42:7:prefixcomp|Orga|y~0_combout\ = ( \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & (\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\ & 
-- \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|stg42:7:prefixcomp|Orga|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N36
\add_part|XorGa:13:Xor_instance|AND2_instance|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\ = (\IN2[13]~input_o\ & \IN1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[13]~input_o\,
	datab => \ALT_INV_IN1[13]~input_o\,
	combout => \add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\);

-- Location: LABCELL_X55_Y4_N36
\Cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~2_combout\ = ( \IN1[14]~input_o\ & ( \IN2[15]~input_o\ & ( (!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & (!\IN1[15]~input_o\ & (!\IN2[14]~input_o\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\))) ) ) ) # ( 
-- !\IN1[14]~input_o\ & ( \IN2[15]~input_o\ & ( (!\IN1[15]~input_o\ & ((!\IN2[14]~input_o\) # ((!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\)))) ) ) ) # ( \IN1[14]~input_o\ & ( 
-- !\IN2[15]~input_o\ & ( (!\IN1[15]~input_o\) # ((!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & (!\IN2[14]~input_o\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\))) ) ) ) # ( !\IN1[14]~input_o\ & ( !\IN2[15]~input_o\ & ( 
-- (!\IN1[15]~input_o\) # ((!\IN2[14]~input_o\) # ((!\add_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111011001100110011001000110000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datab => \ALT_INV_IN1[15]~input_o\,
	datac => \ALT_INV_IN2[14]~input_o\,
	datad => \add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~1_combout\,
	datae => \ALT_INV_IN1[14]~input_o\,
	dataf => \ALT_INV_IN2[15]~input_o\,
	combout => \Cout~2_combout\);

-- Location: LABCELL_X53_Y4_N21
\Cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~3_combout\ = ( \Cout~2_combout\ & ( (!\add_part|stg42:7:prefixcomp|Orga|y~0_combout\) # ((!\add_part|stg2:9:prefixcomp|Orga|y~0_combout\ & ((!\add_part|stg32:7:prefixcomp|And0_instance|y~0_combout\) # 
-- (\add_part|stg32:3:prefixcomp|Orga|y~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100010101111111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\,
	datab => \add_part|stg32:7:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:3:prefixcomp|Orga|ALT_INV_y~combout\,
	datad => \add_part|stg42:7:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_Cout~2_combout\,
	combout => \Cout~3_combout\);

-- Location: MLABCELL_X59_Y4_N15
\sub_part|stg1:12:prefixcomp|And0_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ = ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( (\IN1[12]~input_o\ & !\IN2[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[12]~input_o\,
	datab => \ALT_INV_IN2[12]~input_o\,
	dataf => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N21
\add_part|XorGa:13:Xor_instance|AND2_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\ = ( !\IN2[13]~input_o\ & ( \IN1[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN1[13]~input_o\,
	dataf => \ALT_INV_IN2[13]~input_o\,
	combout => \add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\);

-- Location: MLABCELL_X59_Y4_N54
\Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = ( \IN1[14]~input_o\ & ( \IN2[15]~input_o\ & ( (!\IN1[15]~input_o\) # ((\IN2[14]~input_o\ & (!\sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\))) ) ) ) # ( 
-- !\IN1[14]~input_o\ & ( \IN2[15]~input_o\ & ( ((!\IN1[15]~input_o\) # ((!\sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\))) # (\IN2[14]~input_o\) ) ) ) # ( \IN1[14]~input_o\ & ( 
-- !\IN2[15]~input_o\ & ( (\IN2[14]~input_o\ & (!\sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & (!\add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\ & !\IN1[15]~input_o\))) ) ) ) # ( !\IN1[14]~input_o\ & ( !\IN2[15]~input_o\ & ( 
-- (!\IN1[15]~input_o\ & (((!\sub_part|stg1:12:prefixcomp|And0_instance|y~0_combout\ & !\add_part|XorGa:13:Xor_instance|AND2_instance|y~0_combout\)) # (\IN2[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010100000000010000000000000011111111110101011111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[14]~input_o\,
	datab => \sub_part|stg1:12:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN1[15]~input_o\,
	datae => \ALT_INV_IN1[14]~input_o\,
	dataf => \ALT_INV_IN2[15]~input_o\,
	combout => \Cout~0_combout\);

-- Location: LABCELL_X56_Y4_N45
\sub_part|finalstg:16:OrS_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:16:OrS_ins|y~0_combout\ = ( !\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:15:OrS_ins|y~0_combout\ & ( \sub_part|finalstg:13:OrS_ins|y~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~0_combout\,
	datae => \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:16:OrS_ins|y~0_combout\);

-- Location: LABCELL_X53_Y4_N51
\sub_part|finalstg:16:OrS_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:16:OrS_ins|y~1_combout\ = ( \sub_part|finalstg:15:OrS_ins|y~0_combout\ & ( (!\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & (!\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\ & 
-- \sub_part|stg2:9:prefixcomp|Orga|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \sub_part|stg2:9:prefixcomp|Orga|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:16:OrS_ins|y~1_combout\);

-- Location: MLABCELL_X52_Y4_N36
\Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = ( \sub_part|finalstg:8:OrS_ins|y~combout\ & ( (\Cout~0_combout\ & !\sub_part|finalstg:16:OrS_ins|y~1_combout\) ) ) # ( !\sub_part|finalstg:8:OrS_ins|y~combout\ & ( (\Cout~0_combout\ & (!\sub_part|finalstg:16:OrS_ins|y~1_combout\ & 
-- ((!\sub_part|finalstg:16:OrS_ins|y~0_combout\) # (!\sub_part|finalstg:11:OrS_ins|y~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000010100000100000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cout~0_combout\,
	datab => \sub_part|finalstg:16:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:16:OrS_ins|ALT_INV_y~1_combout\,
	datad => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \sub_part|finalstg:8:OrS_ins|ALT_INV_y~combout\,
	combout => \Cout~1_combout\);

-- Location: LABCELL_X55_Y4_N42
\Cout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~4_combout\ = ( \Cout~1_combout\ & ( !\S1~input_o\ & ( (!\Cout~3_combout\) # (\S0~input_o\) ) ) ) # ( !\Cout~1_combout\ & ( !\S1~input_o\ & ( (!\Cout~3_combout\ & !\S0~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cout~3_combout\,
	datac => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_Cout~1_combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \Cout~4_combout\);

-- Location: MLABCELL_X52_Y4_N39
\xor_part|zero_bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_part|zero_bit~combout\ = ( \xor_part|zero_bit~0_combout\ & ( (\sub_part|finalstg:16:OrS_ins|y~0_combout\ & (\sub_part|finalstg:11:OrS_ins|y~0_combout\ & \sub_part|finalstg:10:OrS_ins|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sub_part|finalstg:16:OrS_ins|ALT_INV_y~0_combout\,
	datac => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~0_combout\,
	datad => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \xor_part|ALT_INV_zero_bit~0_combout\,
	combout => \xor_part|zero_bit~combout\);

-- Location: MLABCELL_X59_Y4_N24
\nand_part|zero_bit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~1_combout\ = ( \IN2[14]~input_o\ & ( (\IN2[8]~input_o\ & (\add_part|XorGa:10:Xor_instance|AND2_instance|y~0_combout\ & (\IN1[8]~input_o\ & \IN1[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[8]~input_o\,
	datab => \add_part|XorGa:10:Xor_instance|AND2_instance|ALT_INV_y~0_combout\,
	datac => \ALT_INV_IN1[8]~input_o\,
	datad => \ALT_INV_IN1[14]~input_o\,
	dataf => \ALT_INV_IN2[14]~input_o\,
	combout => \nand_part|zero_bit~1_combout\);

-- Location: LABCELL_X50_Y4_N51
\nand_part|zero_bit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~2_combout\ = ( \IN2[6]~input_o\ & ( (\IN2[5]~input_o\ & (\IN1[6]~input_o\ & \IN1[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[5]~input_o\,
	datab => \ALT_INV_IN1[6]~input_o\,
	datad => \ALT_INV_IN1[5]~input_o\,
	dataf => \ALT_INV_IN2[6]~input_o\,
	combout => \nand_part|zero_bit~2_combout\);

-- Location: LABCELL_X53_Y3_N54
\nand_part|zero_bit~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~4_combout\ = ( \IN2[2]~input_o\ & ( \IN1[2]~input_o\ & ( (\IN1[3]~input_o\ & \IN2[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN1[3]~input_o\,
	datac => \ALT_INV_IN2[3]~input_o\,
	datae => \ALT_INV_IN2[2]~input_o\,
	dataf => \ALT_INV_IN1[2]~input_o\,
	combout => \nand_part|zero_bit~4_combout\);

-- Location: LABCELL_X57_Y4_N45
\nand_part|zero_bit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~3_combout\ = ( \IN2[1]~input_o\ & ( (\IN2[9]~input_o\ & (\IN1[9]~input_o\ & (\add_part|XorGa:13:Xor_instance|AND2_instance|y~1_combout\ & \IN1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN2[9]~input_o\,
	datab => \ALT_INV_IN1[9]~input_o\,
	datac => \add_part|XorGa:13:Xor_instance|AND2_instance|ALT_INV_y~1_combout\,
	datad => \ALT_INV_IN1[1]~input_o\,
	dataf => \ALT_INV_IN2[1]~input_o\,
	combout => \nand_part|zero_bit~3_combout\);

-- Location: LABCELL_X50_Y4_N21
\nand_part|zero_bit~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~5_combout\ = ( \nand_part|zero_bit~3_combout\ & ( (\IN1[4]~input_o\ & (\IN2[4]~input_o\ & \nand_part|zero_bit~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[4]~input_o\,
	datab => \ALT_INV_IN2[4]~input_o\,
	datac => \nand_part|ALT_INV_zero_bit~4_combout\,
	dataf => \nand_part|ALT_INV_zero_bit~3_combout\,
	combout => \nand_part|zero_bit~5_combout\);

-- Location: LABCELL_X51_Y4_N27
\nand_part|zero_bit~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~6_combout\ = ( \nand_part|zero_bit~5_combout\ & ( \IN1[7]~input_o\ & ( (\nand_part|zero_bit~2_combout\ & \IN2[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \nand_part|ALT_INV_zero_bit~2_combout\,
	datad => \ALT_INV_IN2[7]~input_o\,
	datae => \nand_part|ALT_INV_zero_bit~5_combout\,
	dataf => \ALT_INV_IN1[7]~input_o\,
	combout => \nand_part|zero_bit~6_combout\);

-- Location: MLABCELL_X59_Y4_N3
\nand_part|zero_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~0_combout\ = (\IN1[12]~input_o\ & (\IN1[11]~input_o\ & (\IN2[11]~input_o\ & \IN2[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[12]~input_o\,
	datab => \ALT_INV_IN1[11]~input_o\,
	datac => \ALT_INV_IN2[11]~input_o\,
	datad => \ALT_INV_IN2[12]~input_o\,
	combout => \nand_part|zero_bit~0_combout\);

-- Location: MLABCELL_X59_Y4_N18
\nand_part|zero_bit~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \nand_part|zero_bit~7_combout\ = ( \IN2[15]~input_o\ & ( (\nand_part|zero_bit~1_combout\ & (\IN1[15]~input_o\ & (\nand_part|zero_bit~6_combout\ & \nand_part|zero_bit~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nand_part|ALT_INV_zero_bit~1_combout\,
	datab => \ALT_INV_IN1[15]~input_o\,
	datac => \nand_part|ALT_INV_zero_bit~6_combout\,
	datad => \nand_part|ALT_INV_zero_bit~0_combout\,
	dataf => \ALT_INV_IN2[15]~input_o\,
	combout => \nand_part|zero_bit~7_combout\);

-- Location: LABCELL_X53_Y5_N45
\add_part|finalstg:7:XorS_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|finalstg:7:XorS_instance|OR_instance|y~0_combout\ = ( \add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\ & ( !\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ ) ) # ( !\add_part|stg32:1:prefixcomp|And0_instance|y~0_combout\ & ( 
-- !\add_part|stg2:3:prefixcomp|Orga|y~1_combout\ $ (\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datad => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|stg32:1:prefixcomp|And0_instance|ALT_INV_y~0_combout\,
	combout => \add_part|finalstg:7:XorS_instance|OR_instance|y~0_combout\);

-- Location: MLABCELL_X52_Y3_N0
\add_part|zlogic:15:Orz0_ins|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~0_combout\ = ( \IN2[0]~input_o\ & ( (\IN1[0]~input_o\ & (\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (!\IN1[1]~input_o\ $ (!\IN2[1]~input_o\)))) ) ) # ( !\IN2[0]~input_o\ & ( (!\IN1[0]~input_o\ & 
-- ((!\IN1[1]~input_o\ & (!\IN2[1]~input_o\ & !\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\)) # (\IN1[1]~input_o\ & (\IN2[1]~input_o\ & \add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000100000000001000000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \ALT_INV_IN1[0]~input_o\,
	datad => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \add_part|zlogic:15:Orz0_ins|y~0_combout\);

-- Location: LABCELL_X53_Y5_N42
\add_part|zlogic:15:Orz0_ins|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~1_combout\ = ( \add_part|stg2:0:prefixcomp|Orga|y~combout\ & ( (\add_part|zlogic:15:Orz0_ins|y~0_combout\ & (!\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & 
-- (!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ $ (!\add_part|stg2:1:prefixcomp|Orga|y~combout\)))) ) ) # ( !\add_part|stg2:0:prefixcomp|Orga|y~combout\ & ( (\add_part|zlogic:15:Orz0_ins|y~0_combout\ & 
-- (\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & (!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ $ (!\add_part|stg2:1:prefixcomp|Orga|y~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~0_combout\,
	datac => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg2:1:prefixcomp|Orga|ALT_INV_y~combout\,
	dataf => \add_part|stg2:0:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \add_part|zlogic:15:Orz0_ins|y~1_combout\);

-- Location: LABCELL_X53_Y5_N48
\add_part|zlogic:15:Orz0_ins|y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~2_combout\ = ( !\add_part|finalstg:7:XorS_instance|OR_instance|y~0_combout\ & ( \add_part|zlogic:15:Orz0_ins|y~1_combout\ & ( (!\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & 
-- (\add_part|stg32:0:prefixcomp|Orga|y~combout\ & (!\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ $ (!\add_part|stg32:2:prefixcomp|Orga|y~combout\)))) # (\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & 
-- (!\add_part|stg32:0:prefixcomp|Orga|y~combout\ & (!\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ $ (!\add_part|stg32:2:prefixcomp|Orga|y~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:0:prefixcomp|Orga|ALT_INV_y~combout\,
	datad => \add_part|stg32:2:prefixcomp|Orga|ALT_INV_y~combout\,
	datae => \add_part|finalstg:7:XorS_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~1_combout\,
	combout => \add_part|zlogic:15:Orz0_ins|y~2_combout\);

-- Location: LABCELL_X53_Y4_N57
\add_part|finalstg:9:XorS_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ = !\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ $ (\add_part|stg32:3:prefixcomp|Orga|y~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \add_part|stg32:3:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \add_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X57_Y4_N57
\add_part|finalstg:10:XorS_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|finalstg:10:XorS_instance|OR_instance|y~0_combout\ = !\add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ $ (\add_part|stg42:0:prefixcomp|Orga|y~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg42:0:prefixcomp|Orga|ALT_INV_y~combout\,
	combout => \add_part|finalstg:10:XorS_instance|OR_instance|y~0_combout\);

-- Location: LABCELL_X53_Y5_N54
\add_part|zlogic:15:Orz0_ins|y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~3_combout\ = ( !\add_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ & ( !\add_part|finalstg:10:XorS_instance|OR_instance|y~0_combout\ & ( (\Cout~3_combout\ & (\add_part|zlogic:15:Orz0_ins|y~2_combout\ & 
-- (!\add_part|stg42:1:prefixcomp|Orga|y~combout\ $ (!\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg42:1:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \ALT_INV_Cout~3_combout\,
	datac => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~2_combout\,
	datad => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datae => \add_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|finalstg:10:XorS_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|zlogic:15:Orz0_ins|y~3_combout\);

-- Location: LABCELL_X56_Y4_N24
\add_part|zlogic:15:Orz0_ins|y~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~4_combout\ = ( \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & 
-- (!\add_part|stg42:4:prefixcomp|Orga|y~3_combout\ & (!\add_part|stg42:6:prefixcomp|Orga|y~2_combout\ $ (!\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( 
-- \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (!\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & (\add_part|stg42:4:prefixcomp|Orga|y~3_combout\ & (!\add_part|stg42:6:prefixcomp|Orga|y~2_combout\ $ 
-- (!\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & 
-- (!\add_part|stg42:4:prefixcomp|Orga|y~3_combout\ & (!\add_part|stg42:6:prefixcomp|Orga|y~2_combout\ $ (!\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( 
-- !\add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (\add_part|stg42:5:prefixcomp|Orga|y~2_combout\ & (\add_part|stg42:4:prefixcomp|Orga|y~3_combout\ & (!\add_part|stg42:6:prefixcomp|Orga|y~2_combout\ $ 
-- (!\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000101000000000000000000001010000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg42:5:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datab => \add_part|stg42:6:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datac => \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|stg42:4:prefixcomp|Orga|ALT_INV_y~3_combout\,
	datae => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \add_part|zlogic:15:Orz0_ins|y~4_combout\);

-- Location: LABCELL_X55_Y4_N48
\add_part|zlogic:15:Orz0_ins|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_part|zlogic:15:Orz0_ins|y~combout\ = ( \add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|zlogic:15:Orz0_ins|y~4_combout\ & ( (!\add_part|stg42:2:prefixcomp|Orga|y~combout\ & (\add_part|zlogic:15:Orz0_ins|y~3_combout\ & 
-- (!\add_part|stg42:3:prefixcomp|Orga|y~combout\ $ (!\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( !\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|zlogic:15:Orz0_ins|y~4_combout\ & ( 
-- (\add_part|stg42:2:prefixcomp|Orga|y~combout\ & (\add_part|zlogic:15:Orz0_ins|y~3_combout\ & (!\add_part|stg42:3:prefixcomp|Orga|y~combout\ $ (!\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|stg42:3:prefixcomp|Orga|ALT_INV_y~combout\,
	datab => \add_part|stg42:2:prefixcomp|Orga|ALT_INV_y~combout\,
	datac => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~3_combout\,
	datae => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~4_combout\,
	combout => \add_part|zlogic:15:Orz0_ins|y~combout\);

-- Location: MLABCELL_X52_Y4_N12
\temp_zero2[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~0_combout\ = ( \add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:5:OrS_ins|y~0_combout\ & ( !\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ $ (((\sub_part|finalstg:10:OrS_ins|y~1_combout\ & 
-- ((!\sub_part|finalstg:10:OrS_ins|y~0_combout\) # (\sub_part|stg2:3:prefixcomp|Orga|y~1_combout\))))) ) ) ) # ( !\add_part|XorGa:5:Xor_instance|OR_instance|y~0_combout\ & ( !\sub_part|finalstg:5:OrS_ins|y~0_combout\ & ( 
-- !\add_part|XorGa:10:Xor_instance|OR_instance|y~0_combout\ $ (((\sub_part|finalstg:10:OrS_ins|y~1_combout\ & ((!\sub_part|finalstg:10:OrS_ins|y~0_combout\) # (\sub_part|stg2:3:prefixcomp|Orga|y~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111001010001000000000000000000000000000000001010111001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~1_combout\,
	datab => \sub_part|stg2:3:prefixcomp|Orga|ALT_INV_y~1_combout\,
	datac => \sub_part|finalstg:10:OrS_ins|ALT_INV_y~0_combout\,
	datad => \add_part|XorGa:10:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datae => \add_part|XorGa:5:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \sub_part|finalstg:5:OrS_ins|ALT_INV_y~0_combout\,
	combout => \temp_zero2[15]~0_combout\);

-- Location: MLABCELL_X52_Y3_N15
\temp_zero2[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~1_combout\ = ( \IN2[0]~input_o\ & ( (!\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (\IN1[0]~input_o\ & (!\IN1[1]~input_o\ $ (\IN2[1]~input_o\)))) ) ) # ( !\IN2[0]~input_o\ & ( 
-- (!\add_part|XorGa:2:Xor_instance|OR_instance|y~0_combout\ & (!\IN1[0]~input_o\ & (!\IN1[1]~input_o\ $ (\IN2[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000000000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN1[1]~input_o\,
	datab => \ALT_INV_IN2[1]~input_o\,
	datac => \add_part|XorGa:2:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datad => \ALT_INV_IN1[0]~input_o\,
	dataf => \ALT_INV_IN2[0]~input_o\,
	combout => \temp_zero2[15]~1_combout\);

-- Location: MLABCELL_X52_Y4_N48
\temp_zero2[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~2_combout\ = ( \sub_part|finalstg:7:OrS_ins|y~0_combout\ & ( \add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & ( (\temp_zero2[15]~1_combout\ & (!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ $ 
-- (((!\sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ & \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\))))) ) ) ) # ( !\sub_part|finalstg:7:OrS_ins|y~0_combout\ & ( !\add_part|XorGa:3:Xor_instance|OR_instance|y~0_combout\ & ( (\temp_zero2[15]~1_combout\ & 
-- (!\add_part|XorGa:4:Xor_instance|OR_instance|y~0_combout\ $ (((!\sub_part|stg1:2:prefixcomp|Andgat|y~0_combout\ & \sub_part|stg2:1:prefixcomp|Orga|y~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000110000000000000000000000000000000000000000011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|stg1:2:prefixcomp|Andgat|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:4:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \sub_part|stg2:1:prefixcomp|Orga|ALT_INV_y~2_combout\,
	datad => \ALT_INV_temp_zero2[15]~1_combout\,
	datae => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:3:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \temp_zero2[15]~2_combout\);

-- Location: MLABCELL_X52_Y4_N24
\temp_zero2[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~3_combout\ = ( \sub_part|finalstg:7:OrS_ins|y~1_combout\ & ( (\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & (\temp_zero2[15]~2_combout\ & (!\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ $ 
-- (\sub_part|finalstg:6:OrS_ins|y~1_combout\)))) ) ) # ( !\sub_part|finalstg:7:OrS_ins|y~1_combout\ & ( (!\add_part|XorGa:7:Xor_instance|OR_instance|y~0_combout\ & (\temp_zero2[15]~2_combout\ & (!\add_part|XorGa:6:Xor_instance|OR_instance|y~0_combout\ $ 
-- (\sub_part|finalstg:6:OrS_ins|y~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:6:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \add_part|XorGa:7:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datac => \ALT_INV_temp_zero2[15]~2_combout\,
	datad => \sub_part|finalstg:6:OrS_ins|ALT_INV_y~1_combout\,
	dataf => \sub_part|finalstg:7:OrS_ins|ALT_INV_y~1_combout\,
	combout => \temp_zero2[15]~3_combout\);

-- Location: MLABCELL_X52_Y4_N3
\sub_part|finalstg:9:XorS_instance|OR_instance|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ = ( \add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( \sub_part|finalstg:8:OrS_ins|y~combout\ ) ) # ( !\add_part|XorGa:8:Xor_instance|OR_instance|y~0_combout\ & ( 
-- !\sub_part|finalstg:8:OrS_ins|y~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sub_part|finalstg:8:OrS_ins|ALT_INV_y~combout\,
	dataf => \add_part|XorGa:8:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\);

-- Location: MLABCELL_X52_Y4_N54
\temp_zero2[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~4_combout\ = ( \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ & ( \add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ & ( (!\Cout~1_combout\ & (\temp_zero2[15]~0_combout\ & (\temp_zero2[15]~3_combout\ & 
-- \sub_part|finalstg:9:OrS_ins|y~3_combout\))) ) ) ) # ( \sub_part|finalstg:9:XorS_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:9:Xor_instance|OR_instance|y~0_combout\ & ( (!\Cout~1_combout\ & (\temp_zero2[15]~0_combout\ & 
-- (\temp_zero2[15]~3_combout\ & !\sub_part|finalstg:9:OrS_ins|y~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cout~1_combout\,
	datab => \ALT_INV_temp_zero2[15]~0_combout\,
	datac => \ALT_INV_temp_zero2[15]~3_combout\,
	datad => \sub_part|finalstg:9:OrS_ins|ALT_INV_y~3_combout\,
	datae => \sub_part|finalstg:9:XorS_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:9:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \temp_zero2[15]~4_combout\);

-- Location: LABCELL_X56_Y4_N48
\temp_zero2[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_zero2[15]~5_combout\ = ( \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (\sub_part|finalstg:14:OrS_ins|y~2_combout\ & (\sub_part|finalstg:13:OrS_ins|y~4_combout\ & 
-- (!\sub_part|finalstg:15:OrS_ins|y~3_combout\ $ (\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( \add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (\sub_part|finalstg:14:OrS_ins|y~2_combout\ & (!\sub_part|finalstg:13:OrS_ins|y~4_combout\ & (!\sub_part|finalstg:15:OrS_ins|y~3_combout\ $ (\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( 
-- \add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( (!\sub_part|finalstg:14:OrS_ins|y~2_combout\ & (\sub_part|finalstg:13:OrS_ins|y~4_combout\ & 
-- (!\sub_part|finalstg:15:OrS_ins|y~3_combout\ $ (\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) ) # ( !\add_part|XorGa:13:Xor_instance|OR_instance|y~0_combout\ & ( !\add_part|XorGa:14:Xor_instance|OR_instance|y~0_combout\ & ( 
-- (!\sub_part|finalstg:14:OrS_ins|y~2_combout\ & (!\sub_part|finalstg:13:OrS_ins|y~4_combout\ & (!\sub_part|finalstg:15:OrS_ins|y~3_combout\ $ (\add_part|XorGa:15:Xor_instance|OR_instance|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sub_part|finalstg:14:OrS_ins|ALT_INV_y~2_combout\,
	datab => \sub_part|finalstg:15:OrS_ins|ALT_INV_y~3_combout\,
	datac => \sub_part|finalstg:13:OrS_ins|ALT_INV_y~4_combout\,
	datad => \add_part|XorGa:15:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datae => \add_part|XorGa:13:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \add_part|XorGa:14:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	combout => \temp_zero2[15]~5_combout\);

-- Location: LABCELL_X53_Y4_N24
\temp_zero2[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_zero2(15) = ( \add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & ( \temp_zero2[15]~5_combout\ & ( (\temp_zero2[15]~4_combout\ & (\sub_part|finalstg:12:OrS_ins|y~2_combout\ & (!\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ $ 
-- (\sub_part|finalstg:11:OrS_ins|y~3_combout\)))) ) ) ) # ( !\add_part|XorGa:12:Xor_instance|OR_instance|y~0_combout\ & ( \temp_zero2[15]~5_combout\ & ( (\temp_zero2[15]~4_combout\ & (!\sub_part|finalstg:12:OrS_ins|y~2_combout\ & 
-- (!\add_part|XorGa:11:Xor_instance|OR_instance|y~0_combout\ $ (\sub_part|finalstg:11:OrS_ins|y~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_part|XorGa:11:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	datab => \sub_part|finalstg:11:OrS_ins|ALT_INV_y~3_combout\,
	datac => \ALT_INV_temp_zero2[15]~4_combout\,
	datad => \sub_part|finalstg:12:OrS_ins|ALT_INV_y~2_combout\,
	datae => \add_part|XorGa:12:Xor_instance|OR_instance|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_temp_zero2[15]~5_combout\,
	combout => temp_zero2(15));

-- Location: LABCELL_X55_Y4_N24
\zero_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero_bit~0_combout\ = ( \S0~input_o\ & ( \S1~input_o\ & ( \xor_part|zero_bit~combout\ ) ) ) # ( !\S0~input_o\ & ( \S1~input_o\ & ( \nand_part|zero_bit~7_combout\ ) ) ) # ( \S0~input_o\ & ( !\S1~input_o\ & ( temp_zero2(15) ) ) ) # ( !\S0~input_o\ & ( 
-- !\S1~input_o\ & ( \add_part|zlogic:15:Orz0_ins|y~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor_part|ALT_INV_zero_bit~combout\,
	datab => \nand_part|ALT_INV_zero_bit~7_combout\,
	datac => \add_part|zlogic:15:Orz0_ins|ALT_INV_y~combout\,
	datad => ALT_INV_temp_zero2(15),
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \zero_bit~0_combout\);

-- Location: LABCELL_X50_Y35_N0
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


