library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_restador_completo is
end tb_restador_completo;

architecture behavioral of tb_restador_completo is

    -- Component declaration
    component restador_completo
        port(
            in_a    : in std_logic;
            in_b    : in std_logic;
            in_B_in : in std_logic;
            clk     : in std_logic;
            o_R     : out std_logic; 
            o_B_out : out std_logic
        );
    end component;

    -- Testbench signals
    signal in_a    : std_logic := '0';
    signal in_b    : std_logic := '0';
    signal in_B_in : std_logic := '0';
    signal clk     : std_logic := '0';
    signal o_R     : std_logic;
    signal o_B_out : std_logic;

begin

    -- Instantiate restador_completo
    uut: restador_completo
        port map (
            in_a    => in_a,
            in_b    => in_b,
            in_B_in => in_B_in,
            clk     => clk,
            o_R     => o_R,
            o_B_out => o_B_out
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;  -- half period
            clk <= '1';
            wait for 10 ns;  -- half period
        end loop;
    end process;

-- Stimulus process
    stimulus_process : process
    begin
        -- Caso 1: 0 - 0 - 0
        in_a <= '0'; in_b <= '0'; in_B_in <= '0';
        wait for 20 ns;

        -- Caso 2: 0 - 0 - 1
        in_a <= '0'; in_b <= '0'; in_B_in <= '1';
        wait for 20 ns;

        -- Caso 3: 0 - 1 - 0
        in_a <= '0'; in_b <= '1'; in_B_in <= '0';
        wait for 20 ns;

        -- Caso 4: 0 - 1 - 1
        in_a <= '0'; in_b <= '1'; in_B_in <= '1';
        wait for 20 ns;

        -- Caso 5: 1 - 0 - 0
        in_a <= '1'; in_b <= '0'; in_B_in <= '0';
        wait for 20 ns;

        -- Caso 6: 1 - 0 - 1
        in_a <= '1'; in_b <= '0'; in_B_in <= '1';
        wait for 20 ns;

        -- Caso 7: 1 - 1 - 0
        in_a <= '1'; in_b <= '1'; in_B_in <= '0';
        wait for 20 ns;

        -- Caso 8: 1 - 1 - 1
        in_a <= '1'; in_b <= '1'; in_B_in <= '1';
        wait for 20 ns;

        -- Finish simulation
        wait;
    end process;

end behavioral;