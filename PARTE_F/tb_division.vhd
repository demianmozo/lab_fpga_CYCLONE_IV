library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_division is
    -- Testbench no tiene puertos
end tb_division;

architecture sim of tb_division is

    -- Declaración de señales para las entradas y salidas del DUT
    signal a : std_logic_vector(5 downto 0); -- Entrada 'a' (6 bits, 4 parte entera, 2 parte decimal)
    signal b : std_logic_vector(5 downto 0); -- Entrada 'b' (6 bits, 3 parte entera, 3 parte decimal)
    signal cociente : std_logic_vector(9 downto 0); -- Salida 'c' (10 bits, 7 parte entera, 3 parte decimal)

    -- Instancia del divisor
    component division
        port(
            a : in std_logic_vector(5 downto 0);
            b : in std_logic_vector(5 downto 0);
            cociente : out std_logic_vector(9 downto 0)
        );
    end component;

begin
    -- Instanciamos el divisor
    uut: division
        port map(
            a => a,
            b => b,
            cociente => cociente
        );

    -- Proceso de estimulación . chat gpt sos lo mas grande que hay
    stim_proc: process
    begin
        -- Caso 1: 6.25 / 2.5 = 2.5 (00000010100 en formato 7,3)
        a <= "110010";  -- 6.25 en formato 4,2 (1100.10)
        b <= "010100";  -- 2.5 en formato 3,3 (010.100)
        wait for 10 ns;

        -- Caso 2: 3.75 / 1.25 = 3.0
        a <= "111000";  -- 3.75 en formato 4,2 (111.000)
        b <= "001010";  -- 1.25 en formato 3,3 (001.010)
        wait for 10 ns;

        -- Caso 3: 1.5 / 0.5 = 3.0 ??
        a <= "011000";  -- 1.5 en formato 4,2 (011.00)
        b <= "000100";  -- 0.5 en formato 3,3 (000.100)
        wait for 10 ns;

        -- Caso 4: 0 / 4.5 = 0
        a <= "000000";  -- 0 en formato 4,2 (000.00)
        b <= "100100";  -- 4.5 en formato 3,3 (100.100)
        wait for 10 ns;

        -- Caso 5: Dividir por 0 (0 / 0.75)
        a <= "001000";  -- 2.0 en formato 4,2 (001.000)
        b <= "000000";  -- 0 en formato 3,3 (000.000)
        wait for 10 ns;

        -- Fin de la simulación
        wait;
    end process;

end sim;

