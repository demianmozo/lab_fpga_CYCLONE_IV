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
-- CREATED		"Thu Nov  7 21:55:29 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY i2c_esclavo_completo IS 
	PORT
	(
		SDA :  IN  STD_LOGIC;
		SCL :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		SDA_int :  OUT  STD_LOGIC
	);
END i2c_esclavo_completo;

ARCHITECTURE bdf_type OF i2c_esclavo_completo IS 

COMPONENT control_i2c_esclavo
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 SDA : IN STD_LOGIC;
		 SOY : IN STD_LOGIC;
		 fin_dir : IN STD_LOGIC;
		 fin_data : IN STD_LOGIC;
		 SDA_int : OUT STD_LOGIC;
		 hab_dir : OUT STD_LOGIC;
		 hab_data : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT guarda_data
	PORT(SDA : IN STD_LOGIC;
		 SCL : IN STD_LOGIC;
		 habilitacion : IN STD_LOGIC;
		 finalizo : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT guarda_dir
	PORT(SDA : IN STD_LOGIC;
		 SCL : IN STD_LOGIC;
		 habilitacion : IN STD_LOGIC;
		 igual : OUT STD_LOGIC;
		 finalizo : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



b2v_inst : control_i2c_esclavo
PORT MAP(reset => reset,
		 clock => SCL,
		 SDA => SDA,
		 SOY => SYNTHESIZED_WIRE_0,
		 fin_dir => SYNTHESIZED_WIRE_1,
		 fin_data => SYNTHESIZED_WIRE_2,
		 SDA_int => SDA_int,
		 hab_dir => SYNTHESIZED_WIRE_4,
		 hab_data => SYNTHESIZED_WIRE_3);


b2v_inst2 : guarda_data
PORT MAP(SDA => SDA,
		 SCL => SCL,
		 habilitacion => SYNTHESIZED_WIRE_3,
		 finalizo => SYNTHESIZED_WIRE_2);


b2v_inst3 : guarda_dir
PORT MAP(SDA => SDA,
		 SCL => SCL,
		 habilitacion => SYNTHESIZED_WIRE_4,
		 igual => SYNTHESIZED_WIRE_0,
		 finalizo => SYNTHESIZED_WIRE_1);


END bdf_type;