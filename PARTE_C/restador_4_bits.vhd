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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"
-- CREATED		"Thu Nov  7 01:27:15 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY restador_4_bits IS 
	PORT
	(
		B_in :  IN  STD_LOGIC;
		CLOCK :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		IN6 :  IN  STD_LOGIC;
		B_out :  OUT  STD_LOGIC;
		R0 :  OUT  STD_LOGIC;
		R1 :  OUT  STD_LOGIC;
		R2 :  OUT  STD_LOGIC;
		R3 :  OUT  STD_LOGIC;
		Zero :  OUT  STD_LOGIC
	);
END restador_4_bits;

ARCHITECTURE bdf_type OF restador_4_bits IS 

COMPONENT restador_completo
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 B_in : IN STD_LOGIC;
		 R : OUT STD_LOGIC;
		 B_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 CLOCK : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 
B_out <= SYNTHESIZED_WIRE_10;
R0 <= SYNTHESIZED_WIRE_14;
R1 <= SYNTHESIZED_WIRE_13;
R2 <= SYNTHESIZED_WIRE_11;
R3 <= SYNTHESIZED_WIRE_12;



b2v_inst : restador_completo
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 B_in => B_in,
		 R => SYNTHESIZED_WIRE_5,
		 B_out => SYNTHESIZED_WIRE_4);


b2v_inst1 : restador_completo
PORT MAP(a => SYNTHESIZED_WIRE_2,
		 b => SYNTHESIZED_WIRE_3,
		 B_in => SYNTHESIZED_WIRE_4,
		 R => SYNTHESIZED_WIRE_6,
		 B_out => SYNTHESIZED_WIRE_17);


b2v_inst10 : d_ff
PORT MAP(D => A3,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_18);


b2v_inst11 : d_ff
PORT MAP(D => B3,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_19);


b2v_inst12 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_5,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_14);


b2v_inst13 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_6,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_13);


b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_7,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_11);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_8,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_12);


b2v_inst16 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_9,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_10);


Zero <= NOT(SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13 OR IN6 OR SYNTHESIZED_WIRE_14);


b2v_inst2 : restador_completo
PORT MAP(a => SYNTHESIZED_WIRE_15,
		 b => SYNTHESIZED_WIRE_16,
		 B_in => SYNTHESIZED_WIRE_17,
		 R => SYNTHESIZED_WIRE_7,
		 B_out => SYNTHESIZED_WIRE_20);


b2v_inst3 : restador_completo
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 B_in => SYNTHESIZED_WIRE_20,
		 R => SYNTHESIZED_WIRE_8,
		 B_out => SYNTHESIZED_WIRE_9);


b2v_inst4 : d_ff
PORT MAP(D => A0,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst5 : d_ff
PORT MAP(D => B0,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst6 : d_ff
PORT MAP(D => A1,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst7 : d_ff
PORT MAP(D => B1,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_3);


b2v_inst8 : d_ff
PORT MAP(D => A2,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_15);


b2v_inst9 : d_ff
PORT MAP(D => B2,
		 CLOCK => CLOCK,
		 Q => SYNTHESIZED_WIRE_16);


END bdf_type;