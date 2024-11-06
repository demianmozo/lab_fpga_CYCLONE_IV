LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sec_de_luces_vector IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        Z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  -- Cambiado a vector de 4 bits
    );
END sec_de_luces_vector;

ARCHITECTURE BEHAVIOR OF sec_de_luces_vector IS
    TYPE type_fstate IS (Idle, A1, E, B1, B2, B3, A2);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_Z : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";  -- Cambiado a vector de 4 bits
BEGIN
    PROCESS (clock, reg_fstate)
    BEGIN
        IF (clock = '1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate, reset, x, reg_Z)
    BEGIN
        IF (reset = '1') THEN
            reg_fstate <= Idle;
            reg_Z <= "0000";  -- Asignación a 4 bits
            Z <= "0000";      -- Asignación a 4 bits
        ELSE
            reg_Z <= "0000";  -- Asignación a 4 bits por defecto
            Z <= "0000";      -- Asignación a 4 bits por defecto
            CASE fstate IS
				
                WHEN Idle =>
                    IF ((x = '0')) THEN
                        reg_fstate <= A1;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= B1;
                    ELSE
                        reg_fstate <= Idle;
                    END IF;
                    reg_Z <= "0000";  -- Asignación específica para este estado
						  
						  

                WHEN A1 =>
                    reg_fstate <= E;
                    reg_Z <= "0001";  -- Asignación específica para este estado
						  
						  

                WHEN E =>
                    IF ((x = '1')) THEN
                        reg_fstate <= B3;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= A2;
                    ELSE
                        reg_fstate <= E;
                    END IF;
                    reg_Z <= "0010";  -- Asignación específica para este estado
						  
						  

                WHEN B1 =>
                    reg_fstate <= B2;
                    reg_Z <= "0011";  -- Asignación específica para este estado
						  
						  

                WHEN B2 =>
                    reg_fstate <= E;
                    reg_Z <= "0100";  -- Asignación específica para este estado
						  
						  

                WHEN B3 =>
                    reg_fstate <= Idle;
                    reg_Z <= "0101";  -- Asignación específica para este estado
						  
						  

                WHEN A2 =>
                    reg_fstate <= Idle;
                    reg_Z <= "0110";  -- Asignación específica para este estado
						  
						  

                WHEN OTHERS => 
                    reg_Z <= "XXXX";  -- Estado no definido, asignar valor indefinido
                    report "Reach undefined state";
            END CASE;
            Z <= reg_Z;  -- Asignar reg_Z a Z
        END IF;
    END PROCESS;
END BEHAVIOR;
