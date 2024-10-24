library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restador_completo is
    port(
        in_a    : in  std_logic;
        in_b    : in  std_logic;
        in_B_in : in  std_logic;
        clk     : in  std_logic;
        o_R     : out std_logic;
        o_B_out : out std_logic
    );
end restador_completo;

architecture behavioral of restador_completo is

    component D_FF
        port(
            D, CLOCK : in  std_logic;
            Q        : out std_logic
        );
    end component;

    signal a, b, B_in, B_out, R : std_logic;

begin

    R <= a xor b xor B_in;
    B_out <= (not(a) and B_in) or (not(a) and b) or (b and B_in);

    D1: D_FF port map (in_a, clk, a); --latcheo entradas
    D2: D_FF port map (in_b, clk, b);
    D3: D_FF port map (in_B_in, clk, B_in); --latcheo Borrow in
    D4: D_FF port map (B_out, clk, o_B_out); --latcheo Borrow out
    D5: D_FF port map (R, clk, o_R); --latcheo Resultado resta

end behavioral;
