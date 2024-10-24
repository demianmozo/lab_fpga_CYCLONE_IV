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
-- Generated on "10/23/2024 22:55:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          restador_completo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY restador_completo_vhd_vec_tst IS
END restador_completo_vhd_vec_tst;
ARCHITECTURE restador_completo_arch OF restador_completo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL in_a : STD_LOGIC;
SIGNAL in_b : STD_LOGIC;
SIGNAL in_B_in : STD_LOGIC;
SIGNAL o_B_out : STD_LOGIC;
SIGNAL o_R : STD_LOGIC;
COMPONENT restador_completo
	PORT (
	clk : IN STD_LOGIC;
	in_a : IN STD_LOGIC;
	in_b : IN STD_LOGIC;
	in_B_in : IN STD_LOGIC;
	o_B_out : BUFFER STD_LOGIC;
	o_R : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : restador_completo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	in_a => in_a,
	in_b => in_b,
	in_B_in => in_B_in,
	o_B_out => o_B_out,
	o_R => o_R
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- in_a
t_prcs_in_a: PROCESS
BEGIN
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 80000 ps;
	in_a <= '0';
	WAIT FOR 50000 ps;
	in_a <= '1';
	WAIT FOR 60000 ps;
	in_a <= '0';
	WAIT FOR 40000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 40000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 30000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 30000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 30000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 30000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 30000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 40000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 10000 ps;
	in_a <= '1';
	WAIT FOR 10000 ps;
	in_a <= '0';
	WAIT FOR 20000 ps;
	in_a <= '1';
	WAIT FOR 20000 ps;
	in_a <= '0';
	WAIT FOR 30000 ps;
	in_a <= '1';
WAIT;
END PROCESS t_prcs_in_a;

-- in_b
t_prcs_in_b: PROCESS
BEGIN
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 40000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 60000 ps;
	in_b <= '0';
	WAIT FOR 30000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 30000 ps;
	in_b <= '0';
	WAIT FOR 30000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 30000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 40000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 40000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 40000 ps;
	in_b <= '0';
	WAIT FOR 10000 ps;
	in_b <= '1';
	WAIT FOR 10000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 40000 ps;
	in_b <= '1';
	WAIT FOR 20000 ps;
	in_b <= '0';
	WAIT FOR 20000 ps;
	in_b <= '1';
	WAIT FOR 60000 ps;
	in_b <= '0';
	WAIT FOR 30000 ps;
	in_b <= '1';
WAIT;
END PROCESS t_prcs_in_b;

-- in_B_in
t_prcs_in_B_in: PROCESS
BEGIN
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 30000 ps;
	in_B_in <= '1';
	WAIT FOR 30000 ps;
	in_B_in <= '0';
	WAIT FOR 20000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 20000 ps;
	in_B_in <= '1';
	WAIT FOR 30000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 20000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 60000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 40000 ps;
	in_B_in <= '1';
	WAIT FOR 30000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 80000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 20000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 40000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 30000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 30000 ps;
	in_B_in <= '1';
	WAIT FOR 40000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 20000 ps;
	in_B_in <= '0';
	WAIT FOR 20000 ps;
	in_B_in <= '1';
	WAIT FOR 60000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 30000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
	WAIT FOR 10000 ps;
	in_B_in <= '0';
	WAIT FOR 10000 ps;
	in_B_in <= '1';
WAIT;
END PROCESS t_prcs_in_B_in;
END restador_completo_arch;
