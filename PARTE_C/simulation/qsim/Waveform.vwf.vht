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
-- Generated on "11/05/2024 20:47:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          restador_4_bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY restador_4_bits_vhd_vec_tst IS
END restador_4_bits_vhd_vec_tst;
ARCHITECTURE restador_4_bits_arch OF restador_4_bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL B_in : STD_LOGIC;
SIGNAL B_out : STD_LOGIC;
SIGNAL CLOCK : STD_LOGIC;
SIGNAL R0 : STD_LOGIC;
SIGNAL R1 : STD_LOGIC;
SIGNAL R2 : STD_LOGIC;
SIGNAL R3 : STD_LOGIC;
COMPONENT restador_4_bits
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	A3 : IN STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	B3 : IN STD_LOGIC;
	B_in : IN STD_LOGIC;
	B_out : OUT STD_LOGIC;
	CLOCK : IN STD_LOGIC;
	R0 : OUT STD_LOGIC;
	R1 : OUT STD_LOGIC;
	R2 : OUT STD_LOGIC;
	R3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : restador_4_bits
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	B_in => B_in,
	B_out => B_out,
	CLOCK => CLOCK,
	R0 => R0,
	R1 => R1,
	R2 => R2,
	R3 => R3
	);

-- A0
t_prcs_A0: PROCESS
BEGIN
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 40000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 60000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 50000 ps;
	A0 <= '0';
	WAIT FOR 60000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 40000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 30000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 30000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 40000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 50000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
	WAIT FOR 10000 ps;
	A0 <= '0';
	WAIT FOR 20000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
	WAIT FOR 10000 ps;
	A0 <= '1';
WAIT;
END PROCESS t_prcs_A0;

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 20000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 40000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 20000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 50000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 40000 ps;
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 40000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
	WAIT FOR 40000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 20000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 30000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 60000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
	WAIT FOR 10000 ps;
	A1 <= '1';
	WAIT FOR 10000 ps;
	A1 <= '0';
WAIT;
END PROCESS t_prcs_A1;

-- A2
t_prcs_A2: PROCESS
BEGIN
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 30000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 30000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 40000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 40000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 60000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 30000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 10000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 40000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 50000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
	WAIT FOR 30000 ps;
	A2 <= '1';
	WAIT FOR 10000 ps;
	A2 <= '0';
	WAIT FOR 20000 ps;
	A2 <= '1';
WAIT;
END PROCESS t_prcs_A2;

-- A3
t_prcs_A3: PROCESS
BEGIN
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 50000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 50000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 40000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 30000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 30000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 10000 ps;
	A3 <= '1';
	WAIT FOR 30000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
	WAIT FOR 50000 ps;
	A3 <= '1';
	WAIT FOR 10000 ps;
	A3 <= '0';
	WAIT FOR 20000 ps;
	A3 <= '1';
WAIT;
END PROCESS t_prcs_A3;

-- B0
t_prcs_B0: PROCESS
BEGIN
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 20000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 20000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 30000 ps;
	B0 <= '0';
	WAIT FOR 30000 ps;
	B0 <= '1';
	WAIT FOR 50000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 20000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 30000 ps;
	B0 <= '0';
	WAIT FOR 30000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 60000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 20000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 70000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 40000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 50000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 20000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 50000 ps;
	B0 <= '0';
	WAIT FOR 30000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 10000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
	WAIT FOR 20000 ps;
	B0 <= '1';
	WAIT FOR 10000 ps;
	B0 <= '0';
WAIT;
END PROCESS t_prcs_B0;

-- B1
t_prcs_B1: PROCESS
BEGIN
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 30000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 30000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 30000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 40000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 40000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 30000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 10000 ps;
	B1 <= '0';
	WAIT FOR 40000 ps;
	B1 <= '1';
	WAIT FOR 80000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 30000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 30000 ps;
	B1 <= '0';
	WAIT FOR 20000 ps;
	B1 <= '1';
	WAIT FOR 50000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
	WAIT FOR 20000 ps;
	B1 <= '0';
	WAIT FOR 10000 ps;
	B1 <= '1';
WAIT;
END PROCESS t_prcs_B1;

-- B2
t_prcs_B2: PROCESS
BEGIN
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 50000 ps;
	B2 <= '0';
	WAIT FOR 30000 ps;
	B2 <= '1';
	WAIT FOR 20000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 40000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 60000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 30000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 20000 ps;
	B2 <= '0';
	WAIT FOR 40000 ps;
	B2 <= '1';
	WAIT FOR 30000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 20000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 30000 ps;
	B2 <= '1';
	WAIT FOR 20000 ps;
	B2 <= '0';
	WAIT FOR 50000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 40000 ps;
	B2 <= '1';
	WAIT FOR 20000 ps;
	B2 <= '0';
	WAIT FOR 30000 ps;
	B2 <= '1';
	WAIT FOR 30000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 10000 ps;
	B2 <= '1';
	WAIT FOR 30000 ps;
	B2 <= '0';
	WAIT FOR 30000 ps;
	B2 <= '1';
	WAIT FOR 10000 ps;
	B2 <= '0';
	WAIT FOR 20000 ps;
	B2 <= '1';
WAIT;
END PROCESS t_prcs_B2;

-- B3
t_prcs_B3: PROCESS
BEGIN
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 20000 ps;
	B3 <= '1';
	WAIT FOR 30000 ps;
	B3 <= '0';
	WAIT FOR 20000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 40000 ps;
	B3 <= '1';
	WAIT FOR 30000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 20000 ps;
	B3 <= '1';
	WAIT FOR 50000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 70000 ps;
	B3 <= '0';
	WAIT FOR 20000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 60000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 20000 ps;
	B3 <= '0';
	WAIT FOR 40000 ps;
	B3 <= '1';
	WAIT FOR 30000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 30000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 30000 ps;
	B3 <= '0';
	WAIT FOR 40000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 50000 ps;
	B3 <= '0';
	WAIT FOR 10000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
	WAIT FOR 40000 ps;
	B3 <= '1';
	WAIT FOR 10000 ps;
	B3 <= '0';
WAIT;
END PROCESS t_prcs_B3;

-- B_in
t_prcs_B_in: PROCESS
BEGIN
	B_in <= '0';
WAIT;
END PROCESS t_prcs_B_in;

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		CLOCK <= '0';
		WAIT FOR 40000 ps;
		CLOCK <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	CLOCK <= '0';
WAIT;
END PROCESS t_prcs_CLOCK;
END restador_4_bits_arch;
