library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity guarda_dir is
    port(
        SDA        : in  std_logic;
        SCL        : in  std_logic;
        habilitacion : in  std_logic;
        igual      : out std_logic;
        finalizo   : out std_logic
    );
end entity guarda_dir;

architecture behavior of guarda_dir is

    signal contador    : unsigned(2 downto 0) := (others => '0'); -- Contador de 3 bits (0 a 6)
    signal registro    : std_logic_vector(6 downto 0) := (others => '0'); -- Registro de desplazamiento de 7 bits
    signal direccion   : std_logic_vector(6 downto 0) := "1010101"; -- Registro interno de comparación
	 signal finalizo_int : std_logic := '0'; -- Señal interna para finalizo
    
begin


    process(SCL)
    begin
        if rising_edge(SCL) then
            if habilitacion = '1' then
                if contador < to_unsigned(6, contador'length) then  -- TENGO QUE PASAR DE NATURAL A UNSIGNED
                    -- Contador de 0 a 6
                    contador <= contador + 1;
                    
                    -- Desplazamiento en el registro de 7 bits
                    registro <= registro(5 downto 0) & SDA;
                    
                elsif contador = to_unsigned(6, contador'length) then  -- Y ACA DE UNSIGNED A NATURAL DIOOOOSSS
                    -- Señal de finalización
                    finalizo_int <= '1';
                end if;
            else
                -- Reset de señales cuando habilitación = 0
                contador <= (others => '0');
                finalizo_int <= '0';
            end if;
        end if;
    end process;
	 
	 -- Asignación de la señal interna a la salida
    finalizo <= finalizo_int;
	 

    -- Comparador: si el registro es igual a la dirección
   process(finalizo_int)
    begin
        if finalizo_int = '1' then
            if registro = direccion then
                igual <= '1';
            else
                igual <= '0';
            end if;
        else
            igual <= '0';
        end if;
    end process;
	 
end architecture behavior;
