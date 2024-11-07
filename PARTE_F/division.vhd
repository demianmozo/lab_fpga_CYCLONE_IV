
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity division is
    port(
        input_a : in std_logic_vector(5 downto 0); -- Entrada 'a' (6 bits 4,2)
        input_b : in std_logic_vector(5 downto 0); -- Entrada 'b' (6 bits 3,3)
        output_c : out std_logic_vector(9 downto 0)  -- Salida 'c' (10 bits 7,3) segun lo que vimos con celeste
    );
end division;

architecture behavioral of division is

    -- Señales internas para almacenar los valores convertidos
    signal a_convertido : integer;
    signal b_convertido : integer;
    signal cociente : integer;

begin
    -- Proceso aritmético para realizar las operaciones
    procedimiento: process(input_a, input_b) is
    begin
        -- Convertimos 'a' y 'b' a enteros multiplicados por 1000 para manejar la coma decimal NO FUNCIONAAAAA 
    a_convertido <= to_natural(unsigned(input_a)) * 1000;  -- Multiplicamos 'a' por 1000
    b_convertido <= to_natural(unsigned(input_b)) * 1000;  -- Multiplicamos 'b' por 1000

    if b_convertido /= 0 then
        cociente <= a_convertido / b_convertido;  -- Realizamos la división
    else
        cociente <= 0;  -- Valor predeterminado para división por 0
    end if;

    output_c <= std_logic_vector(to_unsigned(cociente, output_c'length));

    end process procedimiento;

end behavioral;
