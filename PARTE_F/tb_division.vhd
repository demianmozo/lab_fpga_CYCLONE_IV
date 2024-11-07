library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definición de la entidad del testbench
entity tb_division is
end tb_division;

-- Arquitectura del testbench
architecture behavior of tb_division is

    -- Componentes a instanciar
    component division
        port(
            input_a : in std_logic_vector(5 downto 0); -- Entrada 'a' (4 bits parte entera, 2 bits parte decimal)
            input_b : in std_logic_vector(5 downto 0); -- Entrada 'b' (3 bits parte entera, 3 bits parte decimal)
            output_c : out std_logic_vector(9 downto 0) -- Salida 'c' (7 bits parte entera, 3 bits parte decimal)
        );
    end component;

    -- Señales para conectar al componente
    signal input_a : std_logic_vector(5 downto 0);
    signal input_b : std_logic_vector(5 downto 0);
    signal output_c : std_logic_vector(9 downto 0);

begin

    -- Instanciación del divisor
    uut: division
        port map(
            input_a => input_a,
            input_b => input_b,
            output_c => output_c
        );

    -- Estímulos para el testbench
    stim_proc: process
    begin
        -- Test 1: División de 6.25 / 2.5 = 2.5
        input_a <= "000110"; -- 6.25 en binario (a = 6,25)
        input_b <= "000101"; -- 2.5 en binario (b = 2,5)
        wait for 10 ns;
        -- Esperamos que la salida sea 2.5, es decir, 00000001000 (2.5 en formato 7,3)

        -- Test 2: División de 10.5 / 3.25 = 3.23 (aproximadamente)
        input_a <= "001010"; -- 10.5 en binario (a = 10,5)
        input_b <= "001100"; -- 3.25 en binario (b = 3,25)
        wait for 10 ns;
        -- Esperamos que la salida sea 3.23, es decir, 00000011000 (aproximadamente 3.23 en formato 7,3)

        -- Test 3: División de 5 / 2 = 2.5
        input_a <= "001010"; -- 5 en binario (a = 5,00)
        input_b <= "000010"; -- 2 en binario (b = 2,00)
        wait for 10 ns;
        -- Esperamos que la salida sea 2.5, es decir, 00000001000 (2.5 en formato 7,3)

        -- Test 4: División por 0 (debe dar 0 en la salida)
        input_a <= "000100"; -- 4 en binario (a = 4,00)
        input_b <= "000000"; -- 0 en binario (b = 0,00)
        wait for 10 ns;
        -- Verificamos que la salida sea 0, es decir, 00000000000 (0 en formato 7,3)

        -- Test 5: División de 8 / 2 = 4
        input_a <= "001000"; -- 8 en binario (a = 8,00)
        input_b <= "000010"; -- 2 en binario (b = 2,00)
        wait for 10 ns;
        -- Esperamos que la salida sea 4, es decir, 00000010000 (4 en formato 7,3)

        -- Finalizamos la simulación
        wait;
    end process stim_proc;

end behavior;
