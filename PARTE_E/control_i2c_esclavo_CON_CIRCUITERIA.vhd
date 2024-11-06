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
-- Created on Wed Nov  6 19:44:13 2024

--NO FUNCIONÓ. quizas haciendolo de cero con un template, pero genera problemas mezclar entradas con salidas. 
--Preguntar!!!!

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY control_i2c_esclavo_CON_CIRCUITERIA IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC; -- deberia ser SCL en una implementacion real
        SDA : IN STD_LOGIC := '0';
        SOY : INOUT STD_LOGIC := '0'; -- sera con INOUT??
        fin_dir : INOUT STD_LOGIC := '0';
        fin_data : IN STD_LOGIC := '0';
        SDA_int : OUT STD_LOGIC;
        hab_dir : OUT STD_LOGIC;
        hab_data : OUT STD_LOGIC
    );
END control_i2c_esclavo_CON_CIRCUITERIA;

ARCHITECTURE BEHAVIOR OF control_i2c_esclavo_CON_CIRCUITERIA IS
    TYPE type_fstate IS (Idle,Guarda_Dir,RW,ACK,Guarda_Data);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_SDA_int : STD_LOGIC := '0';
    SIGNAL reg_hab_dir : STD_LOGIC := '0';
    SIGNAL reg_hab_data : STD_LOGIC := '0';
	 
	 --agrego señales de circuiteria externa
	 SIGNAL counter : unsigned(2 downto 0) := (others => '0'); -- Contador hasta 7
    SIGNAL reg_fin_dir : STD_LOGIC := '0';  -- Señal para fin_dir

    SIGNAL registro_SDA : std_logic_vector(6 downto 0) := (others => '0'); -- Registro para almacenar los 7 bits desde SDA
    SIGNAL direccion : std_logic_vector(6 downto 0) := "1111111"; -- Mi direccion
    SIGNAL comp_result : STD_LOGIC := '0';  -- Resultado de la comparación
	 
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,SDA,SOY,fin_dir,fin_data,reg_SDA_int,reg_hab_dir,reg_hab_data)
    BEGIN
        IF (reset='1') THEN -- pongo todo en cero para que no me tire undefined en la simulacion			
				reg_fstate <= Idle;
            reg_SDA_int <= '0';
            reg_hab_dir <= '0';
            reg_hab_data <= '0';
            reg_fin_dir <= '0';
            counter <= (others => '0');
            registro_SDA <= (others => '0');
            comp_result <= '0';
            SDA_int <= '0';
            hab_dir <= '0';
            hab_data <= '0';
            fin_dir <= '0';
        ELSE
            reg_SDA_int <= '0';
            reg_hab_dir <= '0';
            reg_hab_data <= '0';
            reg_fin_dir <= '0';
            SDA_int <= '0';
            hab_dir <= '0';
            hab_data <= '0';
            fin_dir <= '0';
				
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

                    reg_hab_dir <= '0';

                    reg_SDA_int <= '1';

                    reg_hab_data <= '0';
						  
						  
                WHEN Guarda_Dir =>
					 -- NO PUEDO USAR SOY ES UN QUILOMBO XQ ESTA DEFINIDA COMO ENTRADA Y SALIDA
--                    IF (((fin_dir = '1') AND (SOY = '0'))) THEN   
--                        reg_fstate <= Idle;
--                    ELSIF (((fin_dir = '1') AND (SOY = '1'))) THEN
--                        reg_fstate <= RW;
--                    ELSIF ((fin_dir = '0')) THEN
--                        reg_fstate <= Guarda_Dir;
--                    -- Inserting 'else' block to prevent latch inference
--                    ELSE
--                        reg_fstate <= Guarda_Dir;
--                    END IF;
						  
                    IF (fin_dir = '1') THEN
                        IF comp_result = '1' THEN
                            reg_fstate <= RW;  -- Si la comparación es correcta, sigue al estado RW
                        ELSE
                            reg_fstate <= Idle;  -- Si no es correcta, regresa a Idle
                        END IF;
                    END IF;
                    reg_hab_dir <= '1';

                    reg_SDA_int <= '1';

                    reg_hab_data <= '0';

						 
						  
                WHEN RW =>
                    reg_fstate <= ACK;

                    reg_hab_dir <= '0';

                    reg_SDA_int <= '1';

                    reg_hab_data <= '0';
						  
						  
                WHEN ACK =>
                    reg_fstate <= Guarda_Data;

                    reg_hab_dir <= '0';

                    reg_SDA_int <= '0';

                    reg_hab_data <= '0';
						  
						  
                WHEN Guarda_Data =>
                    IF ((fin_data = '1')) THEN
                        reg_fstate <= Idle;
                    ELSIF ((fin_data = '0')) THEN
                        reg_fstate <= Guarda_Data;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Guarda_Data;
                    END IF;

                    reg_hab_dir <= '0';

                    reg_SDA_int <= '1';

                    reg_hab_data <= '1';
						  
						  
                WHEN OTHERS => 
                    reg_SDA_int <= 'X';
                    reg_hab_dir <= 'X';
                    reg_hab_data <= 'X';
                    report "Reach undefined state";
            END CASE;
				
				--ASIGNO LAS SALIDAS
            SDA_int <= reg_SDA_int;
            hab_dir <= reg_hab_dir;
            hab_data <= reg_hab_data;
				fin_dir <= reg_fin_dir;
        END IF;
    END PROCESS;
	 
	     -- CIRCUITERIA contador y GUARDA DIR
    PROCESS (clock)
    BEGIN
        IF rising_edge(clock) THEN
            IF reset = '1' THEN
                counter <= (others => '0');
                reg_fin_dir <= '0';
                registro_SDA <= (others => '0');
                comp_result <= '0';
            ELSIF reg_hab_dir = '1' THEN
                IF counter < to_unsigned(7, counter'length) THEN -- TENGO QUE PASAR DE NATURAL A UNSIGNED
                    -- Almacenar el valor de SDA en el registro en la posición correspondiente
                    registro_SDA(to_integer(counter)) <= SDA; -- Y ACA DE UNSIGNED A NATURAL DIOOOOSSS
                    counter <= counter + 1;
                    reg_fin_dir <= '0';
                ELSE
                    -- Cuando el contador llegue a 7, fin_dir se activa
                    reg_fin_dir <= '1';
                    -- Comparar los registros de SDA y dirección
                    IF registro_SDA = direccion THEN
                        comp_result <= '1';  -- Comparación correcta
                    ELSE
                        comp_result <= '0';  -- Comparación incorrecta
                    END IF;
                END IF;
            ELSE
                counter <= (others => '0');  -- Reiniciar el contador cuando hab_dir sea 0
                reg_fin_dir <= '0';
                registro_SDA <= (others => '0');
                comp_result <= '0';
            END IF;
        END IF;
    END PROCESS;

    -- Asignar el resultado de la comparación a SOY
    SOY <= comp_result;
	 
END BEHAVIOR;
