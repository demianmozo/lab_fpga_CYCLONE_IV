
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity division is
    port(
        a : in std_logic_vector(5 downto 0); -- Entrada 'a' (6 bits 4,2)
        b : in std_logic_vector(5 downto 0); -- Entrada 'b' (6 bits 3,3)
        cociente : out std_logic_vector(9 downto 0)  -- Salida 'c' (10 bits 7,3) segun lo que vimos con celeste
    );
end division;

architecture division of division is
    signal a_convertido : unsigned(15 downto 0);  -- 6 bits adicionales de p.entera y 4 p.decimal
    signal cociente_convertido : unsigned(15 downto 0); -- el resultado sera de 16 bits
	 
begin
    process(a, b)
    begin
       
        a_convertido <= "000000" & unsigned(a) & "0000"; --le agrego los ceros necesarios al dividendo, concatenando vectores
        
        -- División entera y asignación del resultado
        if b= "000000" then 
          cociente <= (others => '0');  -- Valor predeterminado para división por 0
			 
        else
		  cociente_convertido <= a_convertido / unsigned(b);
            cociente <= std_logic_vector(cociente_convertido(9 downto 0) srl 1);  -- recorto el cociente y ademas desplazo una posicion hacia la derecha agregando un 0 con srl
		  end if;
    end process;
end division;