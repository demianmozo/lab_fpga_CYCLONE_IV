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
-- Generated on "10/22/2024 18:51:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej_a
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej_a_vhd_vec_tst IS
END ej_a_vhd_vec_tst;
ARCHITECTURE ej_a_arch OF ej_a_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LED : STD_LOGIC;
SIGNAL SW1 : STD_LOGIC;
SIGNAL SW2 : STD_LOGIC;
SIGNAL SW3 : STD_LOGIC;
COMPONENT ej_a
	PORT (
	LED : BUFFER STD_LOGIC;
	SW1 : IN STD_LOGIC;
	SW2 : IN STD_LOGIC;
	SW3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ej_a
	PORT MAP (
-- list connections between master ports and signals
	LED => LED,
	SW1 => SW1,
	SW2 => SW2,
	SW3 => SW3
	);

-- SW1
t_prcs_SW1: PROCESS
BEGIN
	SW1 <= '1';
WAIT;
END PROCESS t_prcs_SW1;

-- SW2
t_prcs_SW2: PROCESS
BEGIN
LOOP
	SW2 <= '0';
	WAIT FOR 50000 ps;
	SW2 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW2;

-- SW3
t_prcs_SW3: PROCESS
BEGIN
	SW3 <= '1';
WAIT;
END PROCESS t_prcs_SW3;
END ej_a_arch;
