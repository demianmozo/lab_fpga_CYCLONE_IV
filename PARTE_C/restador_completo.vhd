library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restador_completo is
    port(
        a    : in  std_logic;
        b    : in  std_logic;
        B_in : in  std_logic;
        R     : out std_logic;
        B_out : out std_logic
    );
end restador_completo;

architecture behavioral of restador_completo is --no se latchean los resultados en este caso

begin
    R <= a xor b xor B_in;
    B_out <= (not(a) and B_in) or (not(a) and b) or (b and B_in);

end behavioral;