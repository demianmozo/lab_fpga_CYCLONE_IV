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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/06/2024 01:29:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sec_de_luces_template
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sec_de_luces_template_vhd_vec_tst IS
END sec_de_luces_template_vhd_vec_tst;
ARCHITECTURE sec_de_luces_template_arch OF sec_de_luces_template_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL Z : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT sec_de_luces_template
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	x : IN STD_LOGIC;
	Z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sec_de_luces_template
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	x => x,
	Z => Z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
WAIT;
END PROCESS t_prcs_x;
END sec_de_luces_template_arch;
