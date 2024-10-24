library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D_FF is
    port(
        D     : in  std_logic;
        CLOCK : in  std_logic;
        Q     : out std_logic
    );
end D_FF;

architecture behavioral of D_FF is
begin
    process(CLOCK)
    begin
        if (CLOCK = '1' and CLOCK'EVENT) then  --para flanco descendente: CLOCK = '0' and CLOCK'EVENT
            Q <= D;
        end if;
    end process;
end behavioral;

