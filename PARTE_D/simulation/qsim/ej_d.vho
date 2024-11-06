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

-- DATE "11/06/2024 00:45:16"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sec_de_luces IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	LedA : OUT std_logic;
	LedB : OUT std_logic;
	LedC : OUT std_logic;
	LedD : OUT std_logic
	);
END sec_de_luces;

-- Design Ports Information
-- LedA	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedB	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedC	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedD	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sec_de_luces IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_LedA : std_logic;
SIGNAL ww_LedB : std_logic;
SIGNAL ww_LedC : std_logic;
SIGNAL ww_LedD : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LedA~output_o\ : std_logic;
SIGNAL \LedB~output_o\ : std_logic;
SIGNAL \LedC~output_o\ : std_logic;
SIGNAL \LedD~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \reg_fstate.B1~0_combout\ : std_logic;
SIGNAL \fstate.B1~q\ : std_logic;
SIGNAL \reg_fstate.B2~0_combout\ : std_logic;
SIGNAL \fstate.B2~q\ : std_logic;
SIGNAL \reg_fstate.A1~0_combout\ : std_logic;
SIGNAL \fstate.A1~q\ : std_logic;
SIGNAL \reg_fstate.E~0_combout\ : std_logic;
SIGNAL \fstate.E~q\ : std_logic;
SIGNAL \reg_fstate.A2~0_combout\ : std_logic;
SIGNAL \fstate.A2~q\ : std_logic;
SIGNAL \reg_fstate.B3~0_combout\ : std_logic;
SIGNAL \fstate.B3~q\ : std_logic;
SIGNAL \reg_fstate.Idle~0_combout\ : std_logic;
SIGNAL \fstate.Idle~q\ : std_logic;
SIGNAL \LedA~0_combout\ : std_logic;
SIGNAL \LedB~0_combout\ : std_logic;
SIGNAL \LedC~0_combout\ : std_logic;
SIGNAL \LedD~0_combout\ : std_logic;
SIGNAL \ALT_INV_LedA~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
LedA <= ww_LedA;
LedB <= ww_LedB;
LedC <= ww_LedC;
LedD <= ww_LedD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_LedA~0_combout\ <= NOT \LedA~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y15_N9
\LedA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LedA~0_combout\,
	devoe => ww_devoe,
	o => \LedA~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\LedB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedB~0_combout\,
	devoe => ww_devoe,
	o => \LedB~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LedC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedC~0_combout\,
	devoe => ww_devoe,
	o => \LedC~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\LedD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LedD~0_combout\,
	devoe => ww_devoe,
	o => \LedD~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X1_Y12_N10
\reg_fstate.B1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.B1~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & !\fstate.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.Idle~q\,
	combout => \reg_fstate.B1~0_combout\);

-- Location: FF_X1_Y12_N11
\fstate.B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.B1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.B1~q\);

-- Location: LCCOMB_X1_Y12_N8
\reg_fstate.B2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.B2~0_combout\ = (!\reset~input_o\ & \fstate.B1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.B1~q\,
	combout => \reg_fstate.B2~0_combout\);

-- Location: FF_X1_Y12_N9
\fstate.B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.B2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.B2~q\);

-- Location: LCCOMB_X1_Y12_N12
\reg_fstate.A1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.A1~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & !\fstate.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.Idle~q\,
	combout => \reg_fstate.A1~0_combout\);

-- Location: FF_X1_Y12_N13
\fstate.A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.A1~q\);

-- Location: LCCOMB_X1_Y12_N20
\reg_fstate.E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E~0_combout\ = (!\reset~input_o\ & ((\fstate.B2~q\) # (\fstate.A1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \fstate.B2~q\,
	datad => \fstate.A1~q\,
	combout => \reg_fstate.E~0_combout\);

-- Location: FF_X1_Y12_N21
\fstate.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E~q\);

-- Location: LCCOMB_X1_Y12_N4
\reg_fstate.A2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.A2~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & \fstate.E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.E~q\,
	combout => \reg_fstate.A2~0_combout\);

-- Location: FF_X1_Y12_N5
\fstate.A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.A2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.A2~q\);

-- Location: LCCOMB_X1_Y12_N18
\reg_fstate.B3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.B3~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & \fstate.E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.E~q\,
	combout => \reg_fstate.B3~0_combout\);

-- Location: FF_X1_Y12_N19
\fstate.B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.B3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.B3~q\);

-- Location: LCCOMB_X1_Y12_N6
\reg_fstate.Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Idle~0_combout\ = (!\reset~input_o\ & (!\fstate.A2~q\ & !\fstate.B3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \fstate.A2~q\,
	datad => \fstate.B3~q\,
	combout => \reg_fstate.Idle~0_combout\);

-- Location: FF_X1_Y12_N7
\fstate.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.Idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Idle~q\);

-- Location: LCCOMB_X1_Y12_N28
\LedA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedA~0_combout\ = ((\reset~input_o\) # (\fstate.A1~q\)) # (!\fstate.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Idle~q\,
	datac => \reset~input_o\,
	datad => \fstate.A1~q\,
	combout => \LedA~0_combout\);

-- Location: LCCOMB_X1_Y12_N14
\LedB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedB~0_combout\ = (\fstate.Idle~q\ & (!\fstate.A2~q\ & (!\reset~input_o\ & !\fstate.B1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Idle~q\,
	datab => \fstate.A2~q\,
	datac => \reset~input_o\,
	datad => \fstate.B1~q\,
	combout => \LedB~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\LedC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedC~0_combout\ = (!\reset~input_o\ & ((\fstate.A1~q\) # ((\fstate.E~q\) # (\fstate.B3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.A1~q\,
	datab => \fstate.E~q\,
	datac => \reset~input_o\,
	datad => \fstate.B3~q\,
	combout => \LedC~0_combout\);

-- Location: LCCOMB_X1_Y12_N22
\LedD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LedD~0_combout\ = (!\reset~input_o\ & ((\fstate.A2~q\) # (\fstate.E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.A2~q\,
	datac => \reset~input_o\,
	datad => \fstate.E~q\,
	combout => \LedD~0_combout\);

ww_LedA <= \LedA~output_o\;

ww_LedB <= \LedB~output_o\;

ww_LedC <= \LedC~output_o\;

ww_LedD <= \LedD~output_o\;
END structure;


