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
-- Generated on "11/07/2024 02:03:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          division
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY division_vhd_vec_tst IS
END division_vhd_vec_tst;
ARCHITECTURE division_arch OF division_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input_a : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL input_b : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL output_c : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT division
	PORT (
	input_a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	input_b : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	output_c : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : division
	PORT MAP (
-- list connections between master ports and signals
	input_a => input_a,
	input_b => input_b,
	output_c => output_c
	);
-- input_a[5]
t_prcs_input_a_5: PROCESS
BEGIN
	input_a(5) <= '0';
WAIT;
END PROCESS t_prcs_input_a_5;
-- input_a[4]
t_prcs_input_a_4: PROCESS
BEGIN
	input_a(4) <= '0';
WAIT;
END PROCESS t_prcs_input_a_4;
-- input_a[3]
t_prcs_input_a_3: PROCESS
BEGIN
	input_a(3) <= '0';
WAIT;
END PROCESS t_prcs_input_a_3;
-- input_a[2]
t_prcs_input_a_2: PROCESS
BEGIN
	input_a(2) <= '1';
WAIT;
END PROCESS t_prcs_input_a_2;
-- input_a[1]
t_prcs_input_a_1: PROCESS
BEGIN
	input_a(1) <= '1';
WAIT;
END PROCESS t_prcs_input_a_1;
-- input_a[0]
t_prcs_input_a_0: PROCESS
BEGIN
	input_a(0) <= '0';
WAIT;
END PROCESS t_prcs_input_a_0;
-- input_b[5]
t_prcs_input_b_5: PROCESS
BEGIN
	input_b(5) <= '0';
WAIT;
END PROCESS t_prcs_input_b_5;
-- input_b[4]
t_prcs_input_b_4: PROCESS
BEGIN
	input_b(4) <= '0';
WAIT;
END PROCESS t_prcs_input_b_4;
-- input_b[3]
t_prcs_input_b_3: PROCESS
BEGIN
	input_b(3) <= '0';
WAIT;
END PROCESS t_prcs_input_b_3;
-- input_b[2]
t_prcs_input_b_2: PROCESS
BEGIN
	input_b(2) <= '1';
WAIT;
END PROCESS t_prcs_input_b_2;
-- input_b[1]
t_prcs_input_b_1: PROCESS
BEGIN
	input_b(1) <= '0';
WAIT;
END PROCESS t_prcs_input_b_1;
-- input_b[0]
t_prcs_input_b_0: PROCESS
BEGIN
	input_b(0) <= '1';
WAIT;
END PROCESS t_prcs_input_b_0;
END division_arch;
