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

-- DATE "11/05/2024 22:24:05"

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

ENTITY 	restador_4_bits IS
    PORT (
	B_in : IN std_logic;
	CLOCK : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	R3 : BUFFER std_logic;
	R2 : BUFFER std_logic;
	R1 : BUFFER std_logic;
	R0 : BUFFER std_logic;
	B_out : BUFFER std_logic
	);
END restador_4_bits;

-- Design Ports Information
-- R3	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador_4_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B_in : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_R3 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R0 : std_logic;
SIGNAL ww_B_out : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R0~output_o\ : std_logic;
SIGNAL \B_out~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B_in~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \b2v_inst4|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|Q~q\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \b2v_inst5|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|Q~q\ : std_logic;
SIGNAL \b2v_inst|R~0_combout\ : std_logic;
SIGNAL \b2v_inst12|Q~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \b2v_inst6|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst6|Q~q\ : std_logic;
SIGNAL \b2v_inst|B_out~0_combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \b2v_inst7|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst7|Q~q\ : std_logic;
SIGNAL \b2v_inst1|R~combout\ : std_logic;
SIGNAL \b2v_inst13|Q~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \b2v_inst8|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|Q~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \b2v_inst9|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst9|Q~q\ : std_logic;
SIGNAL \b2v_inst2|R~0_combout\ : std_logic;
SIGNAL \b2v_inst2|R~combout\ : std_logic;
SIGNAL \b2v_inst14|Q~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \b2v_inst11|Q~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \b2v_inst10|Q~q\ : std_logic;
SIGNAL \b2v_inst2|B_out~0_combout\ : std_logic;
SIGNAL \b2v_inst2|B_out~1_combout\ : std_logic;
SIGNAL \b2v_inst2|B_out~2_combout\ : std_logic;
SIGNAL \b2v_inst3|R~combout\ : std_logic;
SIGNAL \b2v_inst15|Q~q\ : std_logic;
SIGNAL \b2v_inst3|B_out~0_combout\ : std_logic;
SIGNAL \b2v_inst16|Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_B_in <= B_in;
ww_CLOCK <= CLOCK;
ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_B3 <= B3;
ww_B2 <= B2;
ww_B1 <= B1;
ww_B0 <= B0;
R3 <= ww_R3;
R2 <= ww_R2;
R1 <= ww_R1;
R0 <= ww_R0;
B_out <= ww_B_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y27_N2
\R3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|Q~q\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\R2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst13|Q~q\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\R1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|Q~q\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\R0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|Q~q\,
	devoe => ww_devoe,
	o => \R0~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\B_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst16|Q~q\,
	devoe => ww_devoe,
	o => \B_out~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G18
\CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y12_N1
\B_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in,
	o => \B_in~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X1_Y23_N2
\b2v_inst4|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|Q~feeder_combout\ = \A3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3~input_o\,
	combout => \b2v_inst4|Q~feeder_combout\);

-- Location: FF_X1_Y23_N3
\b2v_inst4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst4|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|Q~q\);

-- Location: IOIBUF_X0_Y24_N15
\B3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X1_Y23_N8
\b2v_inst5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Q~feeder_combout\ = \B3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B3~input_o\,
	combout => \b2v_inst5|Q~feeder_combout\);

-- Location: FF_X1_Y23_N9
\b2v_inst5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst5|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|Q~q\);

-- Location: LCCOMB_X1_Y23_N0
\b2v_inst|R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|R~0_combout\ = \B_in~input_o\ $ (\b2v_inst4|Q~q\ $ (\b2v_inst5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~input_o\,
	datab => \b2v_inst4|Q~q\,
	datad => \b2v_inst5|Q~q\,
	combout => \b2v_inst|R~0_combout\);

-- Location: FF_X1_Y23_N1
\b2v_inst12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst|R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|Q~q\);

-- Location: IOIBUF_X0_Y23_N15
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X1_Y23_N24
\b2v_inst6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|Q~feeder_combout\ = \A2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A2~input_o\,
	combout => \b2v_inst6|Q~feeder_combout\);

-- Location: FF_X1_Y23_N25
\b2v_inst6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst6|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|Q~q\);

-- Location: LCCOMB_X1_Y23_N14
\b2v_inst|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|B_out~0_combout\ = (\B_in~input_o\ & ((\b2v_inst5|Q~q\) # (!\b2v_inst4|Q~q\))) # (!\B_in~input_o\ & (\b2v_inst5|Q~q\ & !\b2v_inst4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_in~input_o\,
	datac => \b2v_inst5|Q~q\,
	datad => \b2v_inst4|Q~q\,
	combout => \b2v_inst|B_out~0_combout\);

-- Location: IOIBUF_X0_Y25_N8
\B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X1_Y23_N26
\b2v_inst7|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|Q~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \b2v_inst7|Q~feeder_combout\);

-- Location: FF_X1_Y23_N27
\b2v_inst7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst7|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|Q~q\);

-- Location: LCCOMB_X1_Y23_N22
\b2v_inst1|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|R~combout\ = \b2v_inst6|Q~q\ $ (\b2v_inst|B_out~0_combout\ $ (\b2v_inst7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Q~q\,
	datab => \b2v_inst|B_out~0_combout\,
	datac => \b2v_inst7|Q~q\,
	combout => \b2v_inst1|R~combout\);

-- Location: FF_X1_Y23_N23
\b2v_inst13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst1|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|Q~q\);

-- Location: IOIBUF_X0_Y23_N1
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X1_Y23_N28
\b2v_inst8|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Q~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \b2v_inst8|Q~feeder_combout\);

-- Location: FF_X1_Y23_N29
\b2v_inst8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst8|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|Q~q\);

-- Location: IOIBUF_X0_Y23_N22
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y23_N6
\b2v_inst9|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|Q~feeder_combout\ = \B1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1~input_o\,
	combout => \b2v_inst9|Q~feeder_combout\);

-- Location: FF_X1_Y23_N7
\b2v_inst9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst9|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst9|Q~q\);

-- Location: LCCOMB_X1_Y23_N16
\b2v_inst2|R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|R~0_combout\ = \b2v_inst8|Q~q\ $ (\b2v_inst9|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Q~q\,
	datad => \b2v_inst9|Q~q\,
	combout => \b2v_inst2|R~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\b2v_inst2|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|R~combout\ = \b2v_inst2|R~0_combout\ $ (((\b2v_inst7|Q~q\ & ((\b2v_inst|B_out~0_combout\) # (!\b2v_inst6|Q~q\))) # (!\b2v_inst7|Q~q\ & (!\b2v_inst6|Q~q\ & \b2v_inst|B_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|Q~q\,
	datab => \b2v_inst6|Q~q\,
	datac => \b2v_inst|B_out~0_combout\,
	datad => \b2v_inst2|R~0_combout\,
	combout => \b2v_inst2|R~combout\);

-- Location: FF_X1_Y23_N21
\b2v_inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst2|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|Q~q\);

-- Location: IOIBUF_X0_Y16_N8
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: FF_X1_Y23_N19
\b2v_inst11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \B0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|Q~q\);

-- Location: IOIBUF_X1_Y34_N8
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X1_Y23_N17
\b2v_inst10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \A0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Q~q\);

-- Location: LCCOMB_X1_Y23_N4
\b2v_inst2|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|B_out~0_combout\ = (!\b2v_inst8|Q~q\ & \b2v_inst9|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Q~q\,
	datad => \b2v_inst9|Q~q\,
	combout => \b2v_inst2|B_out~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
\b2v_inst2|B_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|B_out~1_combout\ = (\b2v_inst9|Q~q\) # (!\b2v_inst8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Q~q\,
	datad => \b2v_inst9|Q~q\,
	combout => \b2v_inst2|B_out~1_combout\);

-- Location: LCCOMB_X1_Y23_N10
\b2v_inst2|B_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|B_out~2_combout\ = (\b2v_inst2|B_out~1_combout\ & ((\b2v_inst7|Q~q\ & ((\b2v_inst|B_out~0_combout\) # (!\b2v_inst6|Q~q\))) # (!\b2v_inst7|Q~q\ & (!\b2v_inst6|Q~q\ & \b2v_inst|B_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|Q~q\,
	datab => \b2v_inst6|Q~q\,
	datac => \b2v_inst|B_out~0_combout\,
	datad => \b2v_inst2|B_out~1_combout\,
	combout => \b2v_inst2|B_out~2_combout\);

-- Location: LCCOMB_X1_Y23_N30
\b2v_inst3|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|R~combout\ = \b2v_inst11|Q~q\ $ (\b2v_inst10|Q~q\ $ (((\b2v_inst2|B_out~0_combout\) # (\b2v_inst2|B_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Q~q\,
	datab => \b2v_inst10|Q~q\,
	datac => \b2v_inst2|B_out~0_combout\,
	datad => \b2v_inst2|B_out~2_combout\,
	combout => \b2v_inst3|R~combout\);

-- Location: FF_X1_Y23_N31
\b2v_inst15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst3|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|Q~q\);

-- Location: LCCOMB_X1_Y23_N12
\b2v_inst3|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|B_out~0_combout\ = (\b2v_inst11|Q~q\ & (((\b2v_inst2|B_out~0_combout\) # (\b2v_inst2|B_out~2_combout\)) # (!\b2v_inst10|Q~q\))) # (!\b2v_inst11|Q~q\ & (!\b2v_inst10|Q~q\ & ((\b2v_inst2|B_out~0_combout\) # (\b2v_inst2|B_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Q~q\,
	datab => \b2v_inst10|Q~q\,
	datac => \b2v_inst2|B_out~0_combout\,
	datad => \b2v_inst2|B_out~2_combout\,
	combout => \b2v_inst3|B_out~0_combout\);

-- Location: FF_X1_Y23_N13
\b2v_inst16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_inst3|B_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst16|Q~q\);

ww_R3 <= \R3~output_o\;

ww_R2 <= \R2~output_o\;

ww_R1 <= \R1~output_o\;

ww_R0 <= \R0~output_o\;

ww_B_out <= \B_out~output_o\;
END structure;


