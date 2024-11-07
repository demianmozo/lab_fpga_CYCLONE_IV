-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/07/2024 20:41:12"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	division IS
    PORT (
	a : IN std_logic_vector(5 DOWNTO 0);
	b : IN std_logic_vector(5 DOWNTO 0);
	cociente : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END division;

-- Design Ports Information
-- cociente[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cociente[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF division IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_cociente : std_logic_vector(9 DOWNTO 0);
SIGNAL \Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cociente[0]~output_o\ : std_logic;
SIGNAL \cociente[1]~output_o\ : std_logic;
SIGNAL \cociente[2]~output_o\ : std_logic;
SIGNAL \cociente[3]~output_o\ : std_logic;
SIGNAL \cociente[4]~output_o\ : std_logic;
SIGNAL \cociente[5]~output_o\ : std_logic;
SIGNAL \cociente[6]~output_o\ : std_logic;
SIGNAL \cociente[7]~output_o\ : std_logic;
SIGNAL \cociente[8]~output_o\ : std_logic;
SIGNAL \cociente[9]~output_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[51]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \cociente~0_combout\ : std_logic;
SIGNAL \cociente~1_combout\ : std_logic;
SIGNAL \cociente~2_combout\ : std_logic;
SIGNAL \cociente~3_combout\ : std_logic;
SIGNAL \cociente~4_combout\ : std_logic;
SIGNAL \cociente~5_combout\ : std_logic;
SIGNAL \cociente~6_combout\ : std_logic;
SIGNAL \cociente~7_combout\ : std_logic;
SIGNAL \cociente~8_combout\ : std_logic;
SIGNAL cociente_convertido : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
cociente <= ww_cociente;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N23
\cociente[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~0_combout\,
	devoe => ww_devoe,
	o => \cociente[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\cociente[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~1_combout\,
	devoe => ww_devoe,
	o => \cociente[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\cociente[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~2_combout\,
	devoe => ww_devoe,
	o => \cociente[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\cociente[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~3_combout\,
	devoe => ww_devoe,
	o => \cociente[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\cociente[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~4_combout\,
	devoe => ww_devoe,
	o => \cociente[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\cociente[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~5_combout\,
	devoe => ww_devoe,
	o => \cociente[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\cociente[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~6_combout\,
	devoe => ww_devoe,
	o => \cociente[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\cociente[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~7_combout\,
	devoe => ww_devoe,
	o => \cociente[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\cociente[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cociente~8_combout\,
	devoe => ww_devoe,
	o => \cociente[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\cociente[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cociente[9]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X4_Y10_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\b[4]~input_o\ & (!\b[3]~input_o\ & !\b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \b[3]~input_o\,
	datac => \b[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y12_N1
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X5_Y10_N8
\Div0|auto_generated|divider|divider|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X5_Y10_N10
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~1_cout\) # (GND))) # (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_7~1_cout\))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X5_Y10_N12
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = (\b[2]~input_o\ & (!\Div0|auto_generated|divider|divider|op_7~3\ & VCC)) # (!\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|op_7~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X5_Y10_N14
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = !\Div0|auto_generated|divider|divider|op_7~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\);

-- Location: LCCOMB_X5_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Equal0~0_combout\ & (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & \Div0|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X8_Y10_N16
\Div0|auto_generated|divider|divider|selnose[51]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[51]~0_combout\ = (!\b[5]~input_o\ & !\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[5]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose[51]~0_combout\);

-- Location: LCCOMB_X5_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\Equal0~0_combout\ & (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & \Div0|auto_generated|divider|divider|op_7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X5_Y10_N4
\Div0|auto_generated|divider|divider|StageOut[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ = (\Equal0~0_combout\ & (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[14]~20_combout\);

-- Location: LCCOMB_X5_Y10_N16
\Div0|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X5_Y10_N18
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_8~1_cout\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_8~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\ & !\Div0|auto_generated|divider|divider|op_8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[14]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X5_Y10_N20
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ $ (\Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ & !\Div0|auto_generated|divider|divider|op_8~3\)) # (!\b[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (!\Div0|auto_generated|divider|divider|op_8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X5_Y10_N22
\Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_8~5\)) # (!\b[3]~input_o\ & (\Div0|auto_generated|divider|divider|op_8~5\ 
-- & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_8~5\))))
-- \Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|op_8~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	combout => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X5_Y10_N24
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = \Div0|auto_generated|divider|divider|op_8~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~7\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\);

-- Location: LCCOMB_X5_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~25_combout\ = (\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~6_combout\))))) # (!\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[51]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~25_combout\);

-- Location: LCCOMB_X5_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|op_8~4_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[51]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X5_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[22]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~23_combout\ = (\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|op_8~2_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[51]~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[51]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[14]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~23_combout\);

-- Location: LCCOMB_X4_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (!\b[4]~input_o\ & (!\b[5]~input_o\ & (\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X6_Y10_N4
\Div0|auto_generated|divider|divider|op_9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X6_Y10_N6
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_9~1_cout\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_9~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~1_cout\) # (GND))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\ 
-- & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X6_Y10_N8
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[22]~23_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_9~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[22]~23_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~3\) # (!\b[2]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[22]~23_combout\ 
-- & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~23_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X6_Y10_N10
\Div0|auto_generated|divider|divider|op_9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_9~5\)) # (!\b[3]~input_o\ & (\Div0|auto_generated|divider|divider|op_9~5\ 
-- & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~5\) # (GND))) # (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_9~5\))))
-- \Div0|auto_generated|divider|divider|op_9~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|op_9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	combout => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X6_Y10_N12
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[24]~25_combout\ $ (\Div0|auto_generated|divider|divider|op_9~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[24]~25_combout\ & !\Div0|auto_generated|divider|divider|op_9~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[24]~25_combout\) # (!\Div0|auto_generated|divider|divider|op_9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~7\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X6_Y10_N14
\Div0|auto_generated|divider|divider|op_9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~10_combout\ = !\Div0|auto_generated|divider|divider|op_9~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~9\,
	combout => \Div0|auto_generated|divider|divider|op_9~10_combout\);

-- Location: LCCOMB_X6_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[32]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ = (\b[5]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[24]~25_combout\)) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[24]~25_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~10_combout\ & ((\Div0|auto_generated|divider|divider|op_9~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~25_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~30_combout\);

-- Location: LCCOMB_X6_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\ = (\b[5]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\)) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~10_combout\ & ((\Div0|auto_generated|divider|divider|op_9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datab => \b[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\);

-- Location: LCCOMB_X6_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[30]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ = (\b[5]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[22]~23_combout\)) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~23_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~10_combout\ & ((\Div0|auto_generated|divider|divider|op_9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~23_combout\,
	datab => \b[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~27_combout\);

-- Location: LCCOMB_X4_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~28_combout\ = (\b[5]~input_o\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[21]~24_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~10_combout\ & (\Div0|auto_generated|divider|divider|op_9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~28_combout\);

-- Location: LCCOMB_X7_Y10_N4
\Div0|auto_generated|divider|divider|StageOut[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ = (!\b[5]~input_o\ & (\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datac => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\);

-- Location: LCCOMB_X6_Y10_N16
\Div0|auto_generated|divider|divider|op_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X6_Y10_N18
\Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_10~1_cout\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_10~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_10~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X6_Y10_N20
\Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[29]~28_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[29]~28_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[29]~28_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[29]~28_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3\,
	combout => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X6_Y10_N22
\Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ & (!\Div0|auto_generated|divider|divider|op_10~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_10~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ & (\Div0|auto_generated|divider|divider|op_10~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ & (!\Div0|auto_generated|divider|divider|op_10~5\))))
-- \Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_10~5\) # (!\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\ & !\Div0|auto_generated|divider|divider|op_10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~5\,
	combout => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X6_Y10_N24
\Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[31]~31_combout\ $ (\Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[31]~31_combout\ & !\Div0|auto_generated|divider|divider|op_10~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[31]~31_combout\) # (!\Div0|auto_generated|divider|divider|op_10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~7\,
	combout => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X6_Y10_N26
\Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|op_10~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_10~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_10~9\) # (GND))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_10~9\))))
-- \Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ & 
-- ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|op_10~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~30_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~9\,
	combout => \Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X6_Y10_N28
\Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~12_combout\ = \Div0|auto_generated|divider|divider|op_10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~11\,
	combout => \Div0|auto_generated|divider|divider|op_10~12_combout\);

-- Location: LCCOMB_X7_Y10_N10
\Div0|auto_generated|divider|divider|StageOut[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~37_combout\ = (\Div0|auto_generated|divider|divider|op_10~10_combout\ & !\Div0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~37_combout\);

-- Location: LCCOMB_X7_Y10_N8
\Div0|auto_generated|divider|divider|StageOut[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~36_combout\ = (\Div0|auto_generated|divider|divider|StageOut[32]~30_combout\ & \Div0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~36_combout\);

-- Location: LCCOMB_X7_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ = (\Div0|auto_generated|divider|divider|op_10~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[31]~31_combout\)) # (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~38_combout\);

-- Location: LCCOMB_X6_Y11_N16
\Div0|auto_generated|divider|divider|StageOut[38]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\ = (\Div0|auto_generated|divider|divider|op_10~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[30]~27_combout\)) # (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~27_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\);

-- Location: LCCOMB_X7_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[37]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ = (\Div0|auto_generated|divider|divider|op_10~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[29]~28_combout\))) # (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[29]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~33_combout\);

-- Location: LCCOMB_X7_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[36]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~34_combout\ = (\Div0|auto_generated|divider|divider|op_10~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\))) # (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~34_combout\);

-- Location: LCCOMB_X7_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[35]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ = (\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~35_combout\);

-- Location: IOIBUF_X0_Y7_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X7_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[5]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[5]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\a[5]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X7_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[35]~35_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~35_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X7_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[36]~34_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[36]~34_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[36]~34_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X7_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~33_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X7_Y10_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[38]~32_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[38]~32_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[38]~32_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X7_Y10_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[39]~38_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[39]~38_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X7_Y10_N28
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~37_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[40]~36_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13_cout\);

-- Location: LCCOMB_X7_Y10_N30
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X7_Y11_N6
\Div0|auto_generated|divider|divider|StageOut[47]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|op_10~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~31_combout\)) # (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & ((\Div0|auto_generated|divider|divider|op_10~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\);

-- Location: LCCOMB_X7_Y11_N2
\Div0|auto_generated|divider|divider|StageOut[47]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~40_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~40_combout\);

-- Location: LCCOMB_X7_Y11_N0
\Div0|auto_generated|divider|divider|StageOut[46]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[38]~32_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~39_combout\);

-- Location: LCCOMB_X7_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[45]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~33_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[37]~33_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\);

-- Location: LCCOMB_X7_Y11_N4
\Div0|auto_generated|divider|divider|StageOut[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~34_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~34_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~42_combout\);

-- Location: LCCOMB_X8_Y11_N4
\Div0|auto_generated|divider|divider|StageOut[43]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~86_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\b[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_10~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~86_combout\);

-- Location: LCCOMB_X6_Y11_N22
\Div0|auto_generated|divider|divider|StageOut[42]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\a[5]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \a[5]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~43_combout\);

-- Location: IOIBUF_X0_Y11_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X7_Y11_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\a[4]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[4]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\a[4]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: LCCOMB_X7_Y11_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~43_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X7_Y11_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[43]~86_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[43]~86_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~86_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~86_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X7_Y11_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X7_Y11_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[45]~41_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[45]~41_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[45]~41_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

-- Location: LCCOMB_X7_Y11_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\b[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[46]~39_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~39_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

-- Location: LCCOMB_X7_Y11_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[47]~85_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[47]~40_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X7_Y11_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\);

-- Location: LCCOMB_X6_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[54]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~87_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[38]~32_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~32_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~87_combout\);

-- Location: LCCOMB_X7_Y11_N10
\Div0|auto_generated|divider|divider|StageOut[54]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~44_combout\);

-- Location: LCCOMB_X7_Y11_N28
\Div0|auto_generated|divider|divider|StageOut[53]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~41_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~45_combout\);

-- Location: LCCOMB_X7_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[52]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[44]~42_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~42_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\);

-- Location: LCCOMB_X6_Y11_N24
\Div0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~86_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~86_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X6_Y11_N26
\Div0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~43_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[42]~43_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X7_Y11_N8
\Div0|auto_generated|divider|divider|StageOut[49]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & (\a[4]~input_o\)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~49_combout\);

-- Location: IOIBUF_X0_Y15_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X6_Y11_N0
\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[3]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[3]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ = CARRY((\a[3]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\);

-- Location: LCCOMB_X6_Y11_N2
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~49_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

-- Location: LCCOMB_X6_Y11_N4
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[50]~48_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~48_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

-- Location: LCCOMB_X6_Y11_N6
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

-- Location: LCCOMB_X6_Y11_N8
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~46_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\);

-- Location: LCCOMB_X6_Y11_N10
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ = (\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # (GND))))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ = CARRY((\b[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~45_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\);

-- Location: LCCOMB_X6_Y11_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[54]~87_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[54]~44_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~87_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\);

-- Location: LCCOMB_X6_Y11_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\);

-- Location: LCCOMB_X6_Y9_N22
\Div0|auto_generated|divider|divider|StageOut[60]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[52]~46_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~52_combout\);

-- Location: LCCOMB_X6_Y11_N18
\Div0|auto_generated|divider|divider|StageOut[59]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[51]~47_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\);

-- Location: LCCOMB_X6_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[58]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[50]~48_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~54_combout\);

-- Location: LCCOMB_X6_Y11_N20
\Div0|auto_generated|divider|divider|StageOut[57]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~55_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[49]~49_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~49_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~55_combout\);

-- Location: LCCOMB_X6_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[56]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\a[3]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datac => \a[3]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~50_combout\);

-- Location: IOIBUF_X0_Y5_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X6_Y9_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[2]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[2]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\a[2]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

-- Location: LCCOMB_X6_Y9_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X6_Y9_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[57]~55_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[57]~55_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[57]~55_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~55_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X6_Y9_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~54_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X6_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[59]~53_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[59]~53_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[59]~53_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\);

-- Location: LCCOMB_X6_Y9_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[60]~52_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~52_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\);

-- Location: LCCOMB_X6_Y11_N28
\Div0|auto_generated|divider|divider|StageOut[61]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~51_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~51_combout\);

-- Location: LCCOMB_X6_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[61]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[45]~41_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\);

-- Location: LCCOMB_X6_Y9_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[61]~51_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[61]~88_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~88_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\);

-- Location: LCCOMB_X6_Y9_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\);

-- Location: LCCOMB_X6_Y9_N30
\Div0|auto_generated|divider|divider|StageOut[68]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~58_combout\);

-- Location: LCCOMB_X5_Y9_N8
\Div0|auto_generated|divider|divider|StageOut[68]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~89_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~46_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~89_combout\);

-- Location: LCCOMB_X5_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[67]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[59]~53_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~59_combout\);

-- Location: LCCOMB_X5_Y9_N10
\Div0|auto_generated|divider|divider|StageOut[66]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[58]~54_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~54_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\);

-- Location: LCCOMB_X5_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[65]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[57]~55_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~55_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~61_combout\);

-- Location: LCCOMB_X6_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[64]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[56]~50_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~50_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~56_combout\);

-- Location: LCCOMB_X6_Y9_N20
\Div0|auto_generated|divider|divider|StageOut[63]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & (\a[2]~input_o\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~57_combout\);

-- Location: IOIBUF_X0_Y7_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X5_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[1]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

-- Location: LCCOMB_X5_Y9_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[63]~57_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

-- Location: LCCOMB_X5_Y9_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[64]~56_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[64]~56_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[64]~56_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~56_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

-- Location: LCCOMB_X5_Y9_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~61_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

-- Location: LCCOMB_X5_Y9_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[66]~60_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[66]~60_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~60_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\);

-- Location: LCCOMB_X5_Y9_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = (\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (GND))))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ = CARRY((\b[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\);

-- Location: LCCOMB_X5_Y9_N24
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[68]~58_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[68]~89_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~58_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13_cout\);

-- Location: LCCOMB_X5_Y9_N26
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\);

-- Location: LCCOMB_X10_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[75]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~90_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[59]~53_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~90_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Div0|auto_generated|divider|divider|StageOut[75]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~65_combout\);

-- Location: LCCOMB_X5_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[74]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[66]~60_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~66_combout\);

-- Location: LCCOMB_X5_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[73]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[65]~61_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~61_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\);

-- Location: LCCOMB_X10_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[72]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[64]~56_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~56_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~62_combout\);

-- Location: LCCOMB_X10_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[71]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[63]~57_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~63_combout\);

-- Location: LCCOMB_X10_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[70]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\a[1]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datac => \a[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~64_combout\);

-- Location: IOIBUF_X14_Y0_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X10_Y9_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\);

-- Location: LCCOMB_X10_Y9_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\);

-- Location: LCCOMB_X10_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[71]~63_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[71]~63_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[71]~63_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[71]~63_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\);

-- Location: LCCOMB_X10_Y9_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~62_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\);

-- Location: LCCOMB_X10_Y9_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ = ((\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[73]~67_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[73]~67_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[73]~67_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\);

-- Location: LCCOMB_X10_Y9_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[74]~66_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~66_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\);

-- Location: LCCOMB_X10_Y9_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[75]~90_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[75]~65_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~90_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~65_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13_cout\);

-- Location: LCCOMB_X10_Y9_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\);

-- Location: LCCOMB_X9_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[82]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~91_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~60_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~60_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~91_combout\);

-- Location: LCCOMB_X9_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[82]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~72_combout\);

-- Location: LCCOMB_X9_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[81]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~67_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~73_combout\);

-- Location: LCCOMB_X10_Y9_N6
\Div0|auto_generated|divider|divider|StageOut[80]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~62_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~62_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\);

-- Location: LCCOMB_X10_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[79]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[71]~63_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[71]~63_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~69_combout\);

-- Location: LCCOMB_X10_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[78]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~70_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[70]~64_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~64_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~70_combout\);

-- Location: LCCOMB_X9_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[77]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\a[0]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	datac => \a[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~71_combout\);

-- Location: LCCOMB_X9_Y9_N10
\Div0|auto_generated|divider|divider|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X9_Y9_N12
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ & ((\Div0|auto_generated|divider|divider|op_3~1_cout\) # (GND))))) # (!\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_3~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\ & !\Div0|auto_generated|divider|divider|op_3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~71_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X9_Y9_N14
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[78]~70_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_3~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[78]~70_combout\ & ((!\Div0|auto_generated|divider|divider|op_3~3\) # (!\b[2]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[78]~70_combout\ 
-- & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~70_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X9_Y9_N16
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ & (\Div0|auto_generated|divider|divider|op_3~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_3~5\) # (!\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\ & !\Div0|auto_generated|divider|divider|op_3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[79]~69_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X9_Y9_N18
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[80]~68_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_3~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_3~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[80]~68_combout\ & ((!\Div0|auto_generated|divider|divider|op_3~7\) # (!\b[4]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[80]~68_combout\ 
-- & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~7\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X9_Y9_N20
\Div0|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~10_combout\ = (\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_3~9\) # (GND))))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ & (\Div0|auto_generated|divider|divider|op_3~9\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\))))
-- \Div0|auto_generated|divider|divider|op_3~11\ = CARRY((\b[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_3~9\) # (!\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[81]~73_combout\ & !\Div0|auto_generated|divider|divider|op_3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~73_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~9\,
	combout => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X9_Y9_N22
\Div0|auto_generated|divider|divider|op_3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[82]~91_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[82]~72_combout\) # (!\Div0|auto_generated|divider|divider|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~91_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~11\,
	cout => \Div0|auto_generated|divider|divider|op_3~13_cout\);

-- Location: LCCOMB_X9_Y9_N24
\Div0|auto_generated|divider|divider|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~14_combout\ = !\Div0|auto_generated|divider|divider|op_3~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~13_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~14_combout\);

-- Location: LCCOMB_X8_Y9_N30
\Div0|auto_generated|divider|divider|StageOut[89]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~75_combout\ = (\Div0|auto_generated|divider|divider|op_3~10_combout\ & !\Div0|auto_generated|divider|divider|op_3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~75_combout\);

-- Location: LCCOMB_X8_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[89]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~92_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[73]~67_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~67_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~92_combout\);

-- Location: LCCOMB_X8_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[88]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[80]~68_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~74_combout\);

-- Location: LCCOMB_X9_Y9_N30
\Div0|auto_generated|divider|divider|StageOut[87]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~76_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~69_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[79]~69_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~76_combout\);

-- Location: LCCOMB_X8_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[86]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[78]~70_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~70_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~77_combout\);

-- Location: LCCOMB_X9_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[85]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~78_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~71_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[77]~71_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~78_combout\);

-- Location: LCCOMB_X8_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[84]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ = (\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\);

-- Location: LCCOMB_X8_Y9_N2
\Div0|auto_generated|divider|divider|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X8_Y9_N4
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_4~1_cout\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_4~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_4~1_cout\) # (GND))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_4~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_4~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ 
-- & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X8_Y9_N6
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = ((\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[85]~78_combout\ $ (\Div0|auto_generated|divider|divider|op_4~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~5\ = CARRY((\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[85]~78_combout\ & !\Div0|auto_generated|divider|divider|op_4~3\)) # (!\b[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[85]~78_combout\) # (!\Div0|auto_generated|divider|divider|op_4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X8_Y9_N8
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = (\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~5\) # (GND))))) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ & (\Div0|auto_generated|divider|divider|op_4~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\))))
-- \Div0|auto_generated|divider|divider|op_4~7\ = CARRY((\b[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_4~5\) # (!\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\))) # (!\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\ & !\Div0|auto_generated|divider|divider|op_4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~77_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X8_Y9_N10
\Div0|auto_generated|divider|divider|op_4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[87]~76_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_4~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[87]~76_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~7\) # (!\b[4]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[87]~76_combout\ 
-- & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~76_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~7\,
	combout => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X8_Y9_N12
\Div0|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~10_combout\ = (\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ & (!\Div0|auto_generated|divider|divider|op_4~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_4~9\) # (GND))))) # (!\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ & (\Div0|auto_generated|divider|divider|op_4~9\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ & (!\Div0|auto_generated|divider|divider|op_4~9\))))
-- \Div0|auto_generated|divider|divider|op_4~11\ = CARRY((\b[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_4~9\) # (!\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\))) # (!\b[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[88]~74_combout\ & !\Div0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~74_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~9\,
	combout => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X8_Y9_N14
\Div0|auto_generated|divider|divider|op_4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[89]~75_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[89]~92_combout\) # (!\Div0|auto_generated|divider|divider|op_4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[89]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~11\,
	cout => \Div0|auto_generated|divider|divider|op_4~13_cout\);

-- Location: LCCOMB_X8_Y9_N16
\Div0|auto_generated|divider|divider|op_4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~14_combout\ = !\Div0|auto_generated|divider|divider|op_4~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~13_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~14_combout\);

-- Location: LCCOMB_X7_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[96]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~93_combout\ = (\Div0|auto_generated|divider|divider|op_4~14_combout\ & ((\Div0|auto_generated|divider|divider|op_3~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[80]~68_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_3~14_combout\ & ((\Div0|auto_generated|divider|divider|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~68_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~93_combout\);

-- Location: LCCOMB_X7_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[96]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~80_combout\ = (\Div0|auto_generated|divider|divider|op_4~10_combout\ & !\Div0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~80_combout\);

-- Location: LCCOMB_X8_Y9_N20
\Div0|auto_generated|divider|divider|StageOut[95]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~81_combout\ = (\Div0|auto_generated|divider|divider|op_4~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[87]~76_combout\))) # (!\Div0|auto_generated|divider|divider|op_4~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[87]~76_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~81_combout\);

-- Location: LCCOMB_X8_Y9_N18
\Div0|auto_generated|divider|divider|StageOut[94]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~82_combout\ = (\Div0|auto_generated|divider|divider|op_4~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[86]~77_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~77_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~82_combout\);

-- Location: LCCOMB_X7_Y9_N22
\Div0|auto_generated|divider|divider|StageOut[93]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~83_combout\ = (\Div0|auto_generated|divider|divider|op_4~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[85]~78_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~78_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~83_combout\);

-- Location: LCCOMB_X7_Y9_N20
\Div0|auto_generated|divider|divider|StageOut[92]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~94_combout\ = (\Div0|auto_generated|divider|divider|op_4~14_combout\ & (((\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_3~14_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~14_combout\ & (\Div0|auto_generated|divider|divider|op_4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	datab => \b[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~94_combout\);

-- Location: LCCOMB_X7_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[91]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~84_combout\ = (\b[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~84_combout\);

-- Location: LCCOMB_X7_Y9_N0
\Div0|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_cout\ = CARRY(!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X7_Y9_N2
\Div0|auto_generated|divider|divider|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~3_cout\ = CARRY((\b[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_5~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[91]~84_combout\))) # (!\b[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[91]~84_combout\ & !\Div0|auto_generated|divider|divider|op_5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~84_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3_cout\);

-- Location: LCCOMB_X7_Y9_N4
\Div0|auto_generated|divider|divider|op_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_cout\ = CARRY((\b[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[92]~94_combout\ & !\Div0|auto_generated|divider|divider|op_5~3_cout\)) # (!\b[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[92]~94_combout\) # (!\Div0|auto_generated|divider|divider|op_5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~94_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X7_Y9_N6
\Div0|auto_generated|divider|divider|op_5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[93]~83_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|op_5~5_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[93]~83_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|op_5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[93]~83_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X7_Y9_N8
\Div0|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\b[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[94]~82_combout\ & !\Div0|auto_generated|divider|divider|op_5~7_cout\)) # (!\b[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[94]~82_combout\) # (!\Div0|auto_generated|divider|divider|op_5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~82_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X7_Y9_N10
\Div0|auto_generated|divider|divider|op_5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~11_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[95]~81_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_5~9_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[95]~81_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|op_5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~81_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~9_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~11_cout\);

-- Location: LCCOMB_X7_Y9_N12
\Div0|auto_generated|divider|divider|op_5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[96]~93_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[96]~80_combout\) # (!\Div0|auto_generated|divider|divider|op_5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~93_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~11_cout\,
	cout => \Div0|auto_generated|divider|divider|op_5~13_cout\);

-- Location: LCCOMB_X7_Y9_N14
\Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~14_combout\ = !\Div0|auto_generated|divider|divider|op_5~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~13_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~14_combout\);

-- Location: LCCOMB_X5_Y10_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\b[1]~input_o\ & (!\b[2]~input_o\ & (\Equal0~0_combout\ & !\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \b[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: CLKCTRL_G2
\Equal0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N18
\cociente_convertido[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(1) = (GLOBAL(\Equal0~1clkctrl_outclk\) & (cociente_convertido(1))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cociente_convertido(1),
	datac => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => cociente_convertido(1));

-- Location: LCCOMB_X8_Y8_N0
\cociente~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~0_combout\ = (cociente_convertido(1) & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cociente_convertido(1),
	datac => \Equal0~1_combout\,
	combout => \cociente~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\cociente_convertido[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(2) = (GLOBAL(\Equal0~1clkctrl_outclk\) & (cociente_convertido(2))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cociente_convertido(2),
	datac => \Equal0~1clkctrl_outclk\,
	datad => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => cociente_convertido(2));

-- Location: LCCOMB_X8_Y8_N14
\cociente~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~1_combout\ = (!\Equal0~1_combout\ & cociente_convertido(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => cociente_convertido(2),
	combout => \cociente~1_combout\);

-- Location: LCCOMB_X9_Y9_N8
\cociente_convertido[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(3) = (GLOBAL(\Equal0~1clkctrl_outclk\) & (cociente_convertido(3))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cociente_convertido(3),
	datac => \Equal0~1clkctrl_outclk\,
	datad => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => cociente_convertido(3));

-- Location: LCCOMB_X8_Y8_N20
\cociente~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~2_combout\ = (cociente_convertido(3) & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cociente_convertido(3),
	datac => \Equal0~1_combout\,
	combout => \cociente~2_combout\);

-- Location: LCCOMB_X10_Y9_N30
\cociente_convertido[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(4) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(4)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datac => cociente_convertido(4),
	datad => \Equal0~1clkctrl_outclk\,
	combout => cociente_convertido(4));

-- Location: LCCOMB_X8_Y8_N22
\cociente~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~3_combout\ = (!\Equal0~1_combout\ & cociente_convertido(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => cociente_convertido(4),
	combout => \cociente~3_combout\);

-- Location: LCCOMB_X5_Y9_N30
\cociente_convertido[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(5) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(5)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datac => cociente_convertido(5),
	datad => \Equal0~1clkctrl_outclk\,
	combout => cociente_convertido(5));

-- Location: LCCOMB_X1_Y6_N16
\cociente~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~4_combout\ = (!\Equal0~1_combout\ & cociente_convertido(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => cociente_convertido(5),
	combout => \cociente~4_combout\);

-- Location: LCCOMB_X7_Y9_N16
\cociente_convertido[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(6) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(6)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datac => \Equal0~1clkctrl_outclk\,
	datad => cociente_convertido(6),
	combout => cociente_convertido(6));

-- Location: LCCOMB_X8_Y8_N24
\cociente~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~5_combout\ = (cociente_convertido(6) & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cociente_convertido(6),
	datac => \Equal0~1_combout\,
	combout => \cociente~5_combout\);

-- Location: LCCOMB_X8_Y8_N12
\cociente_convertido[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(7) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(7)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datac => \Equal0~1clkctrl_outclk\,
	datad => cociente_convertido(7),
	combout => cociente_convertido(7));

-- Location: LCCOMB_X8_Y8_N18
\cociente~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~6_combout\ = (!\Equal0~1_combout\ & cociente_convertido(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => cociente_convertido(7),
	combout => \cociente~6_combout\);

-- Location: LCCOMB_X7_Y8_N24
\cociente_convertido[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(8) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(8)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datac => \Equal0~1clkctrl_outclk\,
	datad => cociente_convertido(8),
	combout => cociente_convertido(8));

-- Location: LCCOMB_X8_Y8_N28
\cociente~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~7_combout\ = (!\Equal0~1_combout\ & cociente_convertido(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => cociente_convertido(8),
	combout => \cociente~7_combout\);

-- Location: LCCOMB_X8_Y8_N26
\cociente_convertido[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- cociente_convertido(9) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((cociente_convertido(9)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => cociente_convertido(9),
	datad => \Equal0~1clkctrl_outclk\,
	combout => cociente_convertido(9));

-- Location: LCCOMB_X8_Y8_N30
\cociente~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cociente~8_combout\ = (cociente_convertido(9) & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cociente_convertido(9),
	datac => \Equal0~1_combout\,
	combout => \cociente~8_combout\);

ww_cociente(0) <= \cociente[0]~output_o\;

ww_cociente(1) <= \cociente[1]~output_o\;

ww_cociente(2) <= \cociente[2]~output_o\;

ww_cociente(3) <= \cociente[3]~output_o\;

ww_cociente(4) <= \cociente[4]~output_o\;

ww_cociente(5) <= \cociente[5]~output_o\;

ww_cociente(6) <= \cociente[6]~output_o\;

ww_cociente(7) <= \cociente[7]~output_o\;

ww_cociente(8) <= \cociente[8]~output_o\;

ww_cociente(9) <= \cociente[9]~output_o\;
END structure;


