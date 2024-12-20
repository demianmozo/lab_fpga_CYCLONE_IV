library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity guarda_data is
    port(
        SDA         : in  std_logic;
        SCL         : in  std_logic;
        habilitacion : in  std_logic;
        finalizo    : out std_logic
    );
end entity guarda_data;

architecture behavior of guarda_data is

    signal contador    : unsigned(2 downto 0) := (others => '0'); -- Contador de 3 bits (0 a 7, para contar 8 ciclos)
    signal registro    : std_logic_vector(7 downto 0) := (others => '0'); -- Registro de desplazamiento de 8 bits
    signal finalizo_int: std_logic := '0'; -- Señal interna para finalizo
    
begin

    -- Cuenta hasta 7 y registra los valores del byte de datoossss
    process(SCL)
    begin
        if rising_edge(SCL) then
            if habilitacion = '1' then
                if contador < to_unsigned(7, contador'length) then
                    -- Contador de 0 a 7 (8 ciclos en total)
                    contador <= contador + 1;
                    
                    -- Desplazamiento en el registro de 8 bits
                    registro(to_integer(contador)) <= SDA;
                    
                elsif contador = to_unsigned(7, contador'length) then
                    -- Señal de finalización cuando el contador llega a 7 (después de 8 ciclos)
                    finalizo_int <= '1';
                end if;
            else
                -- Reset del contador y finalizo cuando habilitación = 0
                contador <= (others => '0');
                finalizo_int <= '0';
            end if;
        end if;
    end process;

    -- Asignación de la señal interna a la salida
    finalizo <= finalizo_int;

end architecture behavior;
