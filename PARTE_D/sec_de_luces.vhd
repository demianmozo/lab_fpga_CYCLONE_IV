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
-- Created on Wed Nov  6 00:42:47 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sec_de_luces IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        LedA : OUT STD_LOGIC;
        LedB : OUT STD_LOGIC;
        LedC : OUT STD_LOGIC;
        LedD : OUT STD_LOGIC
    );
END sec_de_luces;

ARCHITECTURE BEHAVIOR OF sec_de_luces IS
    TYPE type_fstate IS (Idle,A1,E,B1,B2,B3,A2);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_LedA : STD_LOGIC := '0';
    SIGNAL reg_LedB : STD_LOGIC := '0';
    SIGNAL reg_LedC : STD_LOGIC := '0';
    SIGNAL reg_LedD : STD_LOGIC := '0';
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x,reg_LedA,reg_LedB,reg_LedC,reg_LedD)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Idle;
            reg_LedA <= '0';
            reg_LedB <= '0';
            reg_LedC <= '0';
            reg_LedD <= '0';
            LedA <= '0';
            LedB <= '0';
            LedC <= '0';
            LedD <= '0';
        ELSE
            reg_LedA <= '0';
            reg_LedB <= '0';
            reg_LedC <= '0';
            reg_LedD <= '0';
            LedA <= '0';
            LedB <= '0';
            LedC <= '0';
            LedD <= '0';
            CASE fstate IS
                WHEN Idle =>
                    IF ((x = '0')) THEN
                        reg_fstate <= A1;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= B1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Idle;
                    END IF;

                    reg_LedB <= '0';

                    reg_LedC <= '0';

                    reg_LedA <= '0';

                    reg_LedD <= '0';
                WHEN A1 =>
                    reg_fstate <= E;

                    reg_LedB <= '1';

                    reg_LedC <= '1';

                    reg_LedA <= '0';

                    reg_LedD <= '0';
                WHEN E =>
                    IF ((x = '1')) THEN
                        reg_fstate <= B3;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= A2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E;
                    END IF;

                    reg_LedB <= '1';

                    reg_LedC <= '1';

                    reg_LedA <= '1';

                    reg_LedD <= '1';
                WHEN B1 =>
                    reg_fstate <= B2;

                    reg_LedB <= '0';

                    reg_LedC <= '0';

                    reg_LedA <= '1';

                    reg_LedD <= '0';
                WHEN B2 =>
                    reg_fstate <= E;

                    reg_LedB <= '1';

                    reg_LedC <= '0';

                    reg_LedA <= '1';

                    reg_LedD <= '0';
                WHEN B3 =>
                    reg_fstate <= Idle;

                    reg_LedB <= '1';

                    reg_LedC <= '1';

                    reg_LedA <= '1';

                    reg_LedD <= '0';
                WHEN A2 =>
                    reg_fstate <= Idle;

                    reg_LedB <= '0';

                    reg_LedC <= '0';

                    reg_LedA <= '1';

                    reg_LedD <= '1';
                WHEN OTHERS => 
                    reg_LedA <= 'X';
                    reg_LedB <= 'X';
                    reg_LedC <= 'X';
                    reg_LedD <= 'X';
                    report "Reach undefined state";
            END CASE;
            LedA <= reg_LedA;
            LedB <= reg_LedB;
            LedC <= reg_LedC;
            LedD <= reg_LedD;
        END IF;
    END PROCESS;
END BEHAVIOR;
