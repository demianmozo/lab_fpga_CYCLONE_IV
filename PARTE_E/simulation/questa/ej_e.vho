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

-- DATE "11/07/2024 01:18:01"

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

ENTITY 	i2c_esclavo_completo IS
    PORT (
	SDA_int : OUT std_logic;
	reset : IN std_logic;
	SCL : IN std_logic;
	SDA : IN std_logic
	);
END i2c_esclavo_completo;

-- Design Ports Information
-- SDA_int	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF i2c_esclavo_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SDA_int : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL \SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDA_int~output_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \inst|reg_fstate.RW~2_combout\ : std_logic;
SIGNAL \inst3|contador[2]~1_combout\ : std_logic;
SIGNAL \inst3|contador[1]~0_combout\ : std_logic;
SIGNAL \inst3|contador[0]~2_combout\ : std_logic;
SIGNAL \inst3|finalizo_int~2_combout\ : std_logic;
SIGNAL \inst3|finalizo_int~3_combout\ : std_logic;
SIGNAL \inst3|finalizo_int~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|registro[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|registro[0]~0_combout\ : std_logic;
SIGNAL \inst3|registro[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|registro[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|registro[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|registro[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|contador[2]~0_combout\ : std_logic;
SIGNAL \inst2|contador[0]~3_combout\ : std_logic;
SIGNAL \inst2|contador[1]~2_combout\ : std_logic;
SIGNAL \inst2|contador[2]~1_combout\ : std_logic;
SIGNAL \inst2|finalizo_int~2_combout\ : std_logic;
SIGNAL \inst2|finalizo_int~3_combout\ : std_logic;
SIGNAL \inst2|finalizo_int~q\ : std_logic;
SIGNAL \inst|reg_fstate.Guarda_Data~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guarda_Data~q\ : std_logic;
SIGNAL \inst|reg_fstate.Idle~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Idle~1_combout\ : std_logic;
SIGNAL \inst|fstate.Idle~q\ : std_logic;
SIGNAL \inst|reg_fstate.Guarda_Dir~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Guarda_Dir~1_combout\ : std_logic;
SIGNAL \inst|fstate.Guarda_Dir~q\ : std_logic;
SIGNAL \inst|reg_fstate.RW~3_combout\ : std_logic;
SIGNAL \inst|fstate.RW~q\ : std_logic;
SIGNAL \inst|reg_fstate.ACK~0_combout\ : std_logic;
SIGNAL \inst|fstate.ACK~q\ : std_logic;
SIGNAL \inst|SDA_int~0_combout\ : std_logic;
SIGNAL \inst3|registro\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_SDA_int~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

SDA_int <= ww_SDA_int;
ww_reset <= reset;
ww_SCL <= SCL;
ww_SDA <= SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCL~input_o\);
\inst|ALT_INV_SDA_int~0_combout\ <= NOT \inst|SDA_int~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y0_N2
\SDA_int~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_SDA_int~0_combout\,
	devoe => ww_devoe,
	o => \SDA_int~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: CLKCTRL_G2
\SCL~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCL~inputclkctrl_outclk\);

-- Location: IOIBUF_X36_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X36_Y1_N24
\inst|reg_fstate.RW~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.RW~2_combout\ = (!\reset~input_o\ & \inst|fstate.Guarda_Dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst|fstate.Guarda_Dir~q\,
	combout => \inst|reg_fstate.RW~2_combout\);

-- Location: LCCOMB_X36_Y1_N26
\inst3|contador[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|contador[2]~1_combout\ = (\inst|reg_fstate.RW~2_combout\ & ((\inst3|contador\(2)) # ((\inst3|contador\(1) & \inst3|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(1),
	datab => \inst3|contador\(0),
	datac => \inst3|contador\(2),
	datad => \inst|reg_fstate.RW~2_combout\,
	combout => \inst3|contador[2]~1_combout\);

-- Location: FF_X36_Y1_N27
\inst3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(2));

-- Location: LCCOMB_X36_Y1_N8
\inst3|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|contador[1]~0_combout\ = (\inst|reg_fstate.RW~2_combout\ & ((\inst3|contador\(0) & ((\inst3|contador\(2)) # (!\inst3|contador\(1)))) # (!\inst3|contador\(0) & ((\inst3|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(2),
	datab => \inst3|contador\(0),
	datac => \inst3|contador\(1),
	datad => \inst|reg_fstate.RW~2_combout\,
	combout => \inst3|contador[1]~0_combout\);

-- Location: FF_X36_Y1_N9
\inst3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(1));

-- Location: LCCOMB_X35_Y1_N18
\inst3|contador[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|contador[0]~2_combout\ = (\inst|reg_fstate.RW~2_combout\ & (\inst3|contador\(0) $ (((!\inst3|contador\(2)) # (!\inst3|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(1),
	datab => \inst3|contador\(2),
	datac => \inst3|contador\(0),
	datad => \inst|reg_fstate.RW~2_combout\,
	combout => \inst3|contador[0]~2_combout\);

-- Location: FF_X35_Y1_N19
\inst3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(0));

-- Location: LCCOMB_X35_Y1_N20
\inst3|finalizo_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|finalizo_int~2_combout\ = (\inst3|finalizo_int~q\) # ((!\inst3|contador\(0) & (\inst3|contador\(1) & \inst3|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|finalizo_int~q\,
	datab => \inst3|contador\(0),
	datac => \inst3|contador\(1),
	datad => \inst3|contador\(2),
	combout => \inst3|finalizo_int~2_combout\);

-- Location: LCCOMB_X35_Y1_N12
\inst3|finalizo_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|finalizo_int~3_combout\ = (!\reset~input_o\ & (\inst|fstate.Guarda_Dir~q\ & \inst3|finalizo_int~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|fstate.Guarda_Dir~q\,
	datad => \inst3|finalizo_int~2_combout\,
	combout => \inst3|finalizo_int~3_combout\);

-- Location: FF_X35_Y1_N13
\inst3|finalizo_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|finalizo_int~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|finalizo_int~q\);

-- Location: LCCOMB_X36_Y1_N14
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|fstate.Guarda_Dir~q\ & \inst3|finalizo_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Guarda_Dir~q\,
	datad => \inst3|finalizo_int~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y1_N10
\inst3|registro[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[0]~feeder_combout\ = \SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA~input_o\,
	combout => \inst3|registro[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y1_N0
\inst3|registro[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[0]~0_combout\ = (!\reset~input_o\ & (\inst|fstate.Guarda_Dir~q\ & ((!\inst3|contador\(1)) # (!\inst3|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(2),
	datab => \reset~input_o\,
	datac => \inst3|contador\(1),
	datad => \inst|fstate.Guarda_Dir~q\,
	combout => \inst3|registro[0]~0_combout\);

-- Location: FF_X36_Y1_N11
\inst3|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|registro[0]~feeder_combout\,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(0));

-- Location: LCCOMB_X36_Y1_N16
\inst3|registro[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[1]~feeder_combout\ = \inst3|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|registro\(0),
	combout => \inst3|registro[1]~feeder_combout\);

-- Location: FF_X36_Y1_N17
\inst3|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|registro[1]~feeder_combout\,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(1));

-- Location: LCCOMB_X36_Y1_N6
\inst3|registro[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[2]~feeder_combout\ = \inst3|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|registro\(1),
	combout => \inst3|registro[2]~feeder_combout\);

-- Location: FF_X36_Y1_N7
\inst3|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|registro[2]~feeder_combout\,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(2));

-- Location: LCCOMB_X36_Y1_N22
\inst3|registro[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[3]~feeder_combout\ = \inst3|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|registro\(2),
	combout => \inst3|registro[3]~feeder_combout\);

-- Location: FF_X36_Y1_N23
\inst3|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|registro[3]~feeder_combout\,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(3));

-- Location: FF_X36_Y1_N21
\inst3|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \inst3|registro\(3),
	sload => VCC,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(4));

-- Location: LCCOMB_X36_Y1_N28
\inst3|registro[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|registro[5]~feeder_combout\ = \inst3|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|registro\(4),
	combout => \inst3|registro[5]~feeder_combout\);

-- Location: FF_X36_Y1_N29
\inst3|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst3|registro[5]~feeder_combout\,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(5));

-- Location: FF_X36_Y1_N31
\inst3|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \inst3|registro\(5),
	sload => VCC,
	ena => \inst3|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|registro\(6));

-- Location: LCCOMB_X36_Y1_N20
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|registro\(0) & (!\inst3|registro\(1) & (!\inst3|registro\(3) & \inst3|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registro\(0),
	datab => \inst3|registro\(1),
	datac => \inst3|registro\(3),
	datad => \inst3|registro\(2),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y1_N30
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|registro\(4) & (!\inst3|registro\(5) & (\inst3|registro\(6) & \inst3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|registro\(4),
	datab => \inst3|registro\(5),
	datac => \inst3|registro\(6),
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y1_N24
\inst2|contador[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[2]~0_combout\ = (!\reset~input_o\ & \inst|fstate.Guarda_Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|fstate.Guarda_Data~q\,
	combout => \inst2|contador[2]~0_combout\);

-- Location: LCCOMB_X35_Y1_N4
\inst2|contador[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[0]~3_combout\ = (\inst2|contador[2]~0_combout\ & (((\inst2|contador\(1) & \inst2|contador\(2))) # (!\inst2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datab => \inst2|contador\(2),
	datac => \inst2|contador\(0),
	datad => \inst2|contador[2]~0_combout\,
	combout => \inst2|contador[0]~3_combout\);

-- Location: FF_X35_Y1_N5
\inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst2|contador[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(0));

-- Location: LCCOMB_X35_Y1_N10
\inst2|contador[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[1]~2_combout\ = (\inst2|contador[2]~0_combout\ & ((\inst2|contador\(0) & ((\inst2|contador\(2)) # (!\inst2|contador\(1)))) # (!\inst2|contador\(0) & ((\inst2|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(2),
	datab => \inst2|contador\(0),
	datac => \inst2|contador\(1),
	datad => \inst2|contador[2]~0_combout\,
	combout => \inst2|contador[1]~2_combout\);

-- Location: FF_X35_Y1_N11
\inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst2|contador[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(1));

-- Location: LCCOMB_X35_Y1_N8
\inst2|contador[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[2]~1_combout\ = (\inst2|contador[2]~0_combout\ & ((\inst2|contador\(2)) # ((\inst2|contador\(1) & \inst2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datab => \inst2|contador\(0),
	datac => \inst2|contador\(2),
	datad => \inst2|contador[2]~0_combout\,
	combout => \inst2|contador[2]~1_combout\);

-- Location: FF_X35_Y1_N9
\inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst2|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(2));

-- Location: LCCOMB_X35_Y1_N22
\inst2|finalizo_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|finalizo_int~2_combout\ = (\inst2|finalizo_int~q\) # ((\inst2|contador\(2) & (\inst2|contador\(0) & \inst2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|finalizo_int~q\,
	datab => \inst2|contador\(2),
	datac => \inst2|contador\(0),
	datad => \inst2|contador\(1),
	combout => \inst2|finalizo_int~2_combout\);

-- Location: LCCOMB_X35_Y1_N30
\inst2|finalizo_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|finalizo_int~3_combout\ = (!\reset~input_o\ & (\inst2|finalizo_int~2_combout\ & \inst|fstate.Guarda_Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst2|finalizo_int~2_combout\,
	datad => \inst|fstate.Guarda_Data~q\,
	combout => \inst2|finalizo_int~3_combout\);

-- Location: FF_X35_Y1_N31
\inst2|finalizo_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst2|finalizo_int~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|finalizo_int~q\);

-- Location: LCCOMB_X35_Y1_N28
\inst|reg_fstate.Guarda_Data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Guarda_Data~0_combout\ = (!\reset~input_o\ & ((\inst|fstate.ACK~q\) # ((!\inst2|finalizo_int~q\ & \inst|fstate.Guarda_Data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|finalizo_int~q\,
	datab => \reset~input_o\,
	datac => \inst|fstate.Guarda_Data~q\,
	datad => \inst|fstate.ACK~q\,
	combout => \inst|reg_fstate.Guarda_Data~0_combout\);

-- Location: FF_X35_Y1_N29
\inst|fstate.Guarda_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Guarda_Data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guarda_Data~q\);

-- Location: LCCOMB_X35_Y1_N14
\inst|reg_fstate.Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Idle~0_combout\ = (\SDA~input_o\ & (((\inst|fstate.Guarda_Data~q\ & \inst2|finalizo_int~q\)) # (!\inst|fstate.Idle~q\))) # (!\SDA~input_o\ & (\inst|fstate.Guarda_Data~q\ & (\inst2|finalizo_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \inst|fstate.Guarda_Data~q\,
	datac => \inst2|finalizo_int~q\,
	datad => \inst|fstate.Idle~q\,
	combout => \inst|reg_fstate.Idle~0_combout\);

-- Location: LCCOMB_X36_Y1_N4
\inst|reg_fstate.Idle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Idle~1_combout\ = (!\reset~input_o\ & (!\inst|reg_fstate.Idle~0_combout\ & ((\inst3|Equal1~1_combout\) # (!\inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|Selector0~0_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst|reg_fstate.Idle~0_combout\,
	combout => \inst|reg_fstate.Idle~1_combout\);

-- Location: FF_X36_Y1_N5
\inst|fstate.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Idle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Idle~q\);

-- Location: LCCOMB_X36_Y1_N12
\inst|reg_fstate.Guarda_Dir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Guarda_Dir~0_combout\ = (\SDA~input_o\ & (((\inst|fstate.Guarda_Dir~q\ & !\inst3|finalizo_int~q\)))) # (!\SDA~input_o\ & (((\inst|fstate.Guarda_Dir~q\ & !\inst3|finalizo_int~q\)) # (!\inst|fstate.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \inst|fstate.Idle~q\,
	datac => \inst|fstate.Guarda_Dir~q\,
	datad => \inst3|finalizo_int~q\,
	combout => \inst|reg_fstate.Guarda_Dir~0_combout\);

-- Location: LCCOMB_X36_Y1_N2
\inst|reg_fstate.Guarda_Dir~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Guarda_Dir~1_combout\ = (!\reset~input_o\ & \inst|reg_fstate.Guarda_Dir~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst|reg_fstate.Guarda_Dir~0_combout\,
	combout => \inst|reg_fstate.Guarda_Dir~1_combout\);

-- Location: FF_X36_Y1_N3
\inst|fstate.Guarda_Dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Guarda_Dir~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guarda_Dir~q\);

-- Location: LCCOMB_X36_Y1_N18
\inst|reg_fstate.RW~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.RW~3_combout\ = (!\reset~input_o\ & (\inst|fstate.Guarda_Dir~q\ & (\inst3|Equal1~1_combout\ & \inst3|finalizo_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|fstate.Guarda_Dir~q\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|finalizo_int~q\,
	combout => \inst|reg_fstate.RW~3_combout\);

-- Location: FF_X36_Y1_N19
\inst|fstate.RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.RW~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.RW~q\);

-- Location: LCCOMB_X35_Y1_N16
\inst|reg_fstate.ACK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.ACK~0_combout\ = (!\reset~input_o\ & \inst|fstate.RW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|fstate.RW~q\,
	combout => \inst|reg_fstate.ACK~0_combout\);

-- Location: FF_X35_Y1_N17
\inst|fstate.ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.ACK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.ACK~q\);

-- Location: LCCOMB_X35_Y1_N26
\inst|SDA_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDA_int~0_combout\ = (\inst|fstate.ACK~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.ACK~q\,
	datad => \reset~input_o\,
	combout => \inst|SDA_int~0_combout\);

ww_SDA_int <= \SDA_int~output_o\;
END structure;


