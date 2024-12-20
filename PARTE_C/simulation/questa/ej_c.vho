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

-- DATE "11/07/2024 01:28:04"

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
	B_out : OUT std_logic;
	A3 : IN std_logic;
	CLOCK : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	B_in : IN std_logic;
	R0 : OUT std_logic;
	R1 : OUT std_logic;
	R2 : OUT std_logic;
	R3 : OUT std_logic;
	Zero : OUT std_logic;
	IN6 : IN std_logic
	);
END restador_4_bits;

-- Design Ports Information
-- B_out	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN6	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_in	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_B_out : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B_in : std_logic;
SIGNAL ww_R0 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_R3 : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_IN6 : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B_out~output_o\ : std_logic;
SIGNAL \R0~output_o\ : std_logic;
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst10|Q~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst8|Q~q\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst9|Q~feeder_combout\ : std_logic;
SIGNAL \inst9|Q~q\ : std_logic;
SIGNAL \inst2|B_out~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst11|Q~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst6|Q~feeder_combout\ : std_logic;
SIGNAL \inst6|Q~q\ : std_logic;
SIGNAL \B_in~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst4|Q~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst5|Q~feeder_combout\ : std_logic;
SIGNAL \inst5|Q~q\ : std_logic;
SIGNAL \inst|B_out~0_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst7|Q~q\ : std_logic;
SIGNAL \inst2|B_out~1_combout\ : std_logic;
SIGNAL \inst2|B_out~2_combout\ : std_logic;
SIGNAL \inst3|B_out~0_combout\ : std_logic;
SIGNAL \inst16|Q~q\ : std_logic;
SIGNAL \inst|R~0_combout\ : std_logic;
SIGNAL \inst12|Q~q\ : std_logic;
SIGNAL \inst1|R~combout\ : std_logic;
SIGNAL \inst13|Q~q\ : std_logic;
SIGNAL \inst2|R~0_combout\ : std_logic;
SIGNAL \inst2|R~combout\ : std_logic;
SIGNAL \inst14|Q~q\ : std_logic;
SIGNAL \inst3|R~combout\ : std_logic;
SIGNAL \inst15|Q~q\ : std_logic;
SIGNAL \IN6~input_o\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \ALT_INV_inst17~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

B_out <= ww_B_out;
ww_A3 <= A3;
ww_CLOCK <= CLOCK;
ww_B3 <= B3;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
ww_B_in <= B_in;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
Zero <= ww_Zero;
ww_IN6 <= IN6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y20_N23
\B_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Q~q\,
	devoe => ww_devoe,
	o => \B_out~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\R0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Q~q\,
	devoe => ww_devoe,
	o => \R0~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\R1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Q~q\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\R2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Q~q\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\R3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Q~q\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst17~combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

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

-- Location: IOIBUF_X51_Y34_N22
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: FF_X52_Y22_N21
\inst10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Q~q\);

-- Location: IOIBUF_X53_Y22_N8
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: FF_X52_Y22_N11
\inst8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \A2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Q~q\);

-- Location: IOIBUF_X53_Y22_N1
\B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X52_Y22_N8
\inst9|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Q~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \inst9|Q~feeder_combout\);

-- Location: FF_X52_Y22_N9
\inst9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst9|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|Q~q\);

-- Location: LCCOMB_X52_Y22_N20
\inst2|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|B_out~0_combout\ = (!\inst8|Q~q\ & \inst9|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q~q\,
	datad => \inst9|Q~q\,
	combout => \inst2|B_out~0_combout\);

-- Location: IOIBUF_X53_Y21_N22
\B3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: FF_X52_Y22_N3
\inst11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \B3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Q~q\);

-- Location: IOIBUF_X53_Y26_N22
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X52_Y22_N28
\inst6|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Q~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \inst6|Q~feeder_combout\);

-- Location: FF_X52_Y22_N29
\inst6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst6|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Q~q\);

-- Location: IOIBUF_X53_Y17_N1
\B_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_in,
	o => \B_in~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X52_Y22_N5
\inst4|Q\ : dffeas
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
	q => \inst4|Q~q\);

-- Location: IOIBUF_X53_Y24_N22
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X52_Y22_N16
\inst5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \inst5|Q~feeder_combout\);

-- Location: FF_X52_Y22_N17
\inst5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst5|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q~q\);

-- Location: LCCOMB_X52_Y22_N18
\inst|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B_out~0_combout\ = (\B_in~input_o\ & ((\inst5|Q~q\) # (!\inst4|Q~q\))) # (!\B_in~input_o\ & (!\inst4|Q~q\ & \inst5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_in~input_o\,
	datac => \inst4|Q~q\,
	datad => \inst5|Q~q\,
	combout => \inst|B_out~0_combout\);

-- Location: IOIBUF_X53_Y16_N8
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: FF_X52_Y22_N7
\inst7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|Q~q\);

-- Location: LCCOMB_X52_Y22_N2
\inst2|B_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|B_out~1_combout\ = (\inst9|Q~q\) # (!\inst8|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Q~q\,
	datad => \inst8|Q~q\,
	combout => \inst2|B_out~1_combout\);

-- Location: LCCOMB_X52_Y22_N6
\inst2|B_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|B_out~2_combout\ = (\inst2|B_out~1_combout\ & ((\inst6|Q~q\ & (\inst|B_out~0_combout\ & \inst7|Q~q\)) # (!\inst6|Q~q\ & ((\inst|B_out~0_combout\) # (\inst7|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q~q\,
	datab => \inst|B_out~0_combout\,
	datac => \inst7|Q~q\,
	datad => \inst2|B_out~1_combout\,
	combout => \inst2|B_out~2_combout\);

-- Location: LCCOMB_X52_Y22_N0
\inst3|B_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|B_out~0_combout\ = (\inst10|Q~q\ & (\inst11|Q~q\ & ((\inst2|B_out~0_combout\) # (\inst2|B_out~2_combout\)))) # (!\inst10|Q~q\ & ((\inst2|B_out~0_combout\) # ((\inst11|Q~q\) # (\inst2|B_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q~q\,
	datab => \inst2|B_out~0_combout\,
	datac => \inst11|Q~q\,
	datad => \inst2|B_out~2_combout\,
	combout => \inst3|B_out~0_combout\);

-- Location: FF_X52_Y22_N1
\inst16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst3|B_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|Q~q\);

-- Location: LCCOMB_X52_Y22_N22
\inst|R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|R~0_combout\ = \inst5|Q~q\ $ (\B_in~input_o\ $ (\inst4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q~q\,
	datab => \B_in~input_o\,
	datac => \inst4|Q~q\,
	combout => \inst|R~0_combout\);

-- Location: FF_X52_Y22_N23
\inst12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|Q~q\);

-- Location: LCCOMB_X52_Y22_N12
\inst1|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|R~combout\ = \inst6|Q~q\ $ (\inst7|Q~q\ $ (\inst|B_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Q~q\,
	datac => \inst7|Q~q\,
	datad => \inst|B_out~0_combout\,
	combout => \inst1|R~combout\);

-- Location: FF_X52_Y22_N13
\inst13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst1|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|Q~q\);

-- Location: LCCOMB_X52_Y22_N30
\inst2|R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|R~0_combout\ = \inst8|Q~q\ $ (\inst9|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Q~q\,
	datad => \inst9|Q~q\,
	combout => \inst2|R~0_combout\);

-- Location: LCCOMB_X52_Y22_N14
\inst2|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|R~combout\ = \inst2|R~0_combout\ $ (((\inst7|Q~q\ & ((\inst|B_out~0_combout\) # (!\inst6|Q~q\))) # (!\inst7|Q~q\ & (!\inst6|Q~q\ & \inst|B_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q~q\,
	datab => \inst6|Q~q\,
	datac => \inst2|R~0_combout\,
	datad => \inst|B_out~0_combout\,
	combout => \inst2|R~combout\);

-- Location: FF_X52_Y22_N15
\inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Q~q\);

-- Location: LCCOMB_X52_Y22_N24
\inst3|R\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|R~combout\ = \inst10|Q~q\ $ (\inst11|Q~q\ $ (((\inst2|B_out~0_combout\) # (\inst2|B_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q~q\,
	datab => \inst2|B_out~0_combout\,
	datac => \inst11|Q~q\,
	datad => \inst2|B_out~2_combout\,
	combout => \inst3|R~combout\);

-- Location: FF_X52_Y22_N25
\inst15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst3|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|Q~q\);

-- Location: IOIBUF_X53_Y17_N8
\IN6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN6,
	o => \IN6~input_o\);

-- Location: LCCOMB_X52_Y22_N26
\inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (\inst13|Q~q\) # ((\inst16|Q~q\) # ((\inst12|Q~q\) # (\IN6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Q~q\,
	datab => \inst16|Q~q\,
	datac => \inst12|Q~q\,
	datad => \IN6~input_o\,
	combout => \inst17~0_combout\);

-- Location: LCCOMB_X52_Y22_N4
inst17 : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~combout\ = (\inst17~0_combout\) # ((\inst15|Q~q\) # (\inst14|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~0_combout\,
	datab => \inst15|Q~q\,
	datad => \inst14|Q~q\,
	combout => \inst17~combout\);

ww_B_out <= \B_out~output_o\;

ww_R0 <= \R0~output_o\;

ww_R1 <= \R1~output_o\;

ww_R2 <= \R2~output_o\;

ww_R3 <= \R3~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


