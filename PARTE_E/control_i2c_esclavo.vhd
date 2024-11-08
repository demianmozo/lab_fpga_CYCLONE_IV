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

-- Generated by Quartus Prime Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition
-- Created on Thu Nov  7 21:28:00 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY control_i2c_esclavo IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        SDA : IN STD_LOGIC := '0';
        SOY : IN STD_LOGIC := '0';
        fin_dir : IN STD_LOGIC := '0';
        fin_data : IN STD_LOGIC := '0';
        SDA_int : OUT STD_LOGIC;
        hab_dir : OUT STD_LOGIC;
        hab_data : OUT STD_LOGIC
    );
END control_i2c_esclavo;

ARCHITECTURE BEHAVIOR OF control_i2c_esclavo IS
    TYPE type_fstate IS (Idle,Guarda_Dir,RW,ACK,Guarda_Data);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='0' AND clock'event) THEN  -- Cambio a flanco descendente
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,SDA,SOY,fin_dir,fin_data)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Idle;
            SDA_int <= '0';
            hab_dir <= '0';
            hab_data <= '0';
        ELSE
            SDA_int <= '0';
            hab_dir <= '0';
            hab_data <= '0';
            CASE fstate IS
                WHEN Idle =>
                    IF ((SDA = '0')) THEN
                        reg_fstate <= Guarda_Dir;
                    ELSIF ((SDA = '1')) THEN
                        reg_fstate <= Idle;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Idle;
                    END IF;

                    hab_data <= '0';

                    SDA_int <= '1';

                    hab_dir <= '0';
                WHEN Guarda_Dir =>
                    IF (((fin_dir = '1') AND (SOY = '0'))) THEN
                        reg_fstate <= Idle;
                    ELSIF (((fin_dir = '1') AND (SOY = '1'))) THEN
                        reg_fstate <= RW;
                    ELSIF ((fin_dir = '0')) THEN
                        reg_fstate <= Guarda_Dir;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Guarda_Dir;
                    END IF;

                    hab_data <= '0';

                    SDA_int <= '1';

                    hab_dir <= '1';
                WHEN RW =>
                    reg_fstate <= ACK;

                    hab_data <= '0';

                    SDA_int <= '1';

                    hab_dir <= '0';
                WHEN ACK =>
                    reg_fstate <= Guarda_Data;

                    hab_data <= '0';

                    SDA_int <= '0';

                    hab_dir <= '0';
                WHEN Guarda_Data =>
                    IF ((fin_data = '1')) THEN
                        reg_fstate <= Idle;
                    ELSIF ((fin_data = '0')) THEN
                        reg_fstate <= Guarda_Data;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Guarda_Data;
                    END IF;

                    hab_data <= '1';

                    SDA_int <= '1';

                    hab_dir <= '0';
                WHEN OTHERS => 
                    SDA_int <= 'X';
                    hab_dir <= 'X';
                    hab_data <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
