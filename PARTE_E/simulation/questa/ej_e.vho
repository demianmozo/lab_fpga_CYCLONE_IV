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

-- DATE "11/06/2024 20:26:45"

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

ENTITY 	control_i2c_esclavo IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	SDA : IN std_logic;
	SOY : IN std_logic;
	fin_dir : IN std_logic;
	fin_data : IN std_logic;
	SDA_int : BUFFER std_logic;
	hab_dir : BUFFER std_logic;
	hab_data : BUFFER std_logic
	);
END control_i2c_esclavo;

-- Design Ports Information
-- SDA_int	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_dir	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_data	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_dir	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_data	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOY	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_i2c_esclavo IS
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
SIGNAL ww_SDA : std_logic;
SIGNAL ww_SOY : std_logic;
SIGNAL ww_fin_dir : std_logic;
SIGNAL ww_fin_data : std_logic;
SIGNAL ww_SDA_int : std_logic;
SIGNAL ww_hab_dir : std_logic;
SIGNAL ww_hab_data : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDA_int~output_o\ : std_logic;
SIGNAL \hab_dir~output_o\ : std_logic;
SIGNAL \hab_data~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \SOY~input_o\ : std_logic;
SIGNAL \fin_dir~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \reg_fstate.Idle~0_combout\ : std_logic;
SIGNAL \fin_data~input_o\ : std_logic;
SIGNAL \reg_fstate.Guarda_Data~0_combout\ : std_logic;
SIGNAL \fstate.Guarda_Data~q\ : std_logic;
SIGNAL \reg_fstate.Idle~1_combout\ : std_logic;
SIGNAL \reg_fstate.Idle~2_combout\ : std_logic;
SIGNAL \fstate.Idle~q\ : std_logic;
SIGNAL \reg_fstate.Guarda_Dir~0_combout\ : std_logic;
SIGNAL \reg_fstate.Guarda_Dir~1_combout\ : std_logic;
SIGNAL \fstate.Guarda_Dir~q\ : std_logic;
SIGNAL \reg_fstate.RW~0_combout\ : std_logic;
SIGNAL \fstate.RW~q\ : std_logic;
SIGNAL \reg_fstate.ACK~0_combout\ : std_logic;
SIGNAL \fstate.ACK~q\ : std_logic;
SIGNAL \SDA_int~0_combout\ : std_logic;
SIGNAL \hab_dir~0_combout\ : std_logic;
SIGNAL \hab_data~0_combout\ : std_logic;
SIGNAL \ALT_INV_SDA_int~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_SDA <= SDA;
ww_SOY <= SOY;
ww_fin_dir <= fin_dir;
ww_fin_data <= fin_data;
SDA_int <= ww_SDA_int;
hab_dir <= ww_hab_dir;
hab_data <= ww_hab_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_SDA_int~0_combout\ <= NOT \SDA_int~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y11_N9
\SDA_int~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SDA_int~0_combout\,
	devoe => ww_devoe,
	o => \SDA_int~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\hab_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hab_dir~0_combout\,
	devoe => ww_devoe,
	o => \hab_dir~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\hab_data~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hab_data~0_combout\,
	devoe => ww_devoe,
	o => \hab_data~output_o\);

-- Location: IOIBUF_X0_Y15_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

-- Location: IOIBUF_X0_Y15_N8
\SOY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SOY,
	o => \SOY~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\fin_dir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_dir,
	o => \fin_dir~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X1_Y15_N30
\reg_fstate.Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Idle~0_combout\ = (\reset~input_o\) # ((!\SOY~input_o\ & (\fin_dir~input_o\ & \fstate.Guarda_Dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOY~input_o\,
	datab => \fin_dir~input_o\,
	datac => \reset~input_o\,
	datad => \fstate.Guarda_Dir~q\,
	combout => \reg_fstate.Idle~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\fin_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_data,
	o => \fin_data~input_o\);

-- Location: LCCOMB_X1_Y15_N4
\reg_fstate.Guarda_Data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Guarda_Data~0_combout\ = (!\reset~input_o\ & ((\fstate.ACK~q\) # ((!\fin_data~input_o\ & \fstate.Guarda_Data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_data~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.Guarda_Data~q\,
	datad => \fstate.ACK~q\,
	combout => \reg_fstate.Guarda_Data~0_combout\);

-- Location: FF_X1_Y15_N5
\fstate.Guarda_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.Guarda_Data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Guarda_Data~q\);

-- Location: LCCOMB_X1_Y15_N16
\reg_fstate.Idle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Idle~1_combout\ = (\fin_data~input_o\ & ((\fstate.Guarda_Data~q\) # ((\SDA~input_o\ & !\fstate.Idle~q\)))) # (!\fin_data~input_o\ & (\SDA~input_o\ & ((!\fstate.Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_data~input_o\,
	datab => \SDA~input_o\,
	datac => \fstate.Guarda_Data~q\,
	datad => \fstate.Idle~q\,
	combout => \reg_fstate.Idle~1_combout\);

-- Location: LCCOMB_X1_Y15_N14
\reg_fstate.Idle~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Idle~2_combout\ = (!\reg_fstate.Idle~0_combout\ & !\reg_fstate.Idle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_fstate.Idle~0_combout\,
	datad => \reg_fstate.Idle~1_combout\,
	combout => \reg_fstate.Idle~2_combout\);

-- Location: FF_X1_Y15_N15
\fstate.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.Idle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Idle~q\);

-- Location: LCCOMB_X1_Y15_N24
\reg_fstate.Guarda_Dir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Guarda_Dir~0_combout\ = (\fin_dir~input_o\ & (!\SDA~input_o\ & (!\fstate.Idle~q\))) # (!\fin_dir~input_o\ & ((\fstate.Guarda_Dir~q\) # ((!\SDA~input_o\ & !\fstate.Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_dir~input_o\,
	datab => \SDA~input_o\,
	datac => \fstate.Idle~q\,
	datad => \fstate.Guarda_Dir~q\,
	combout => \reg_fstate.Guarda_Dir~0_combout\);

-- Location: LCCOMB_X1_Y15_N12
\reg_fstate.Guarda_Dir~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Guarda_Dir~1_combout\ = (!\reset~input_o\ & \reg_fstate.Guarda_Dir~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_fstate.Guarda_Dir~0_combout\,
	combout => \reg_fstate.Guarda_Dir~1_combout\);

-- Location: FF_X1_Y15_N13
\fstate.Guarda_Dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.Guarda_Dir~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Guarda_Dir~q\);

-- Location: LCCOMB_X1_Y15_N28
\reg_fstate.RW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.RW~0_combout\ = (\SOY~input_o\ & (!\reset~input_o\ & (\fin_dir~input_o\ & \fstate.Guarda_Dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOY~input_o\,
	datab => \reset~input_o\,
	datac => \fin_dir~input_o\,
	datad => \fstate.Guarda_Dir~q\,
	combout => \reg_fstate.RW~0_combout\);

-- Location: FF_X1_Y15_N29
\fstate.RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.RW~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.RW~q\);

-- Location: LCCOMB_X1_Y15_N20
\reg_fstate.ACK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.ACK~0_combout\ = (!\reset~input_o\ & \fstate.RW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.RW~q\,
	combout => \reg_fstate.ACK~0_combout\);

-- Location: FF_X1_Y15_N21
\fstate.ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.ACK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.ACK~q\);

-- Location: LCCOMB_X1_Y15_N22
\SDA_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDA_int~0_combout\ = (\reset~input_o\) # (\fstate.ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.ACK~q\,
	combout => \SDA_int~0_combout\);

-- Location: LCCOMB_X1_Y15_N18
\hab_dir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hab_dir~0_combout\ = (!\reset~input_o\ & \fstate.Guarda_Dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \fstate.Guarda_Dir~q\,
	combout => \hab_dir~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\hab_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hab_data~0_combout\ = (\fstate.Guarda_Data~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.Guarda_Data~q\,
	datac => \reset~input_o\,
	combout => \hab_data~0_combout\);

ww_SDA_int <= \SDA_int~output_o\;

ww_hab_dir <= \hab_dir~output_o\;

ww_hab_data <= \hab_data~output_o\;
END structure;


