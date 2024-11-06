LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_sec_de_luces IS
END tb_sec_de_luces;

ARCHITECTURE behavior OF tb_sec_de_luces IS

    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT sec_de_luces_template
    PORT(
        clk   : IN  STD_LOGIC;
        x     : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        Z     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT;

    -- Signals for the testbench
    SIGNAL clk   : STD_LOGIC := '0';
    SIGNAL x     : STD_LOGIC := '0';
    SIGNAL reset : STD_LOGIC := '0';
    SIGNAL Z     : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Clock period definition
    CONSTANT clk_period : TIME := 20 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: sec_de_luces_template
    PORT MAP (
        clk => clk,
        x => x,
        reset => reset,
        Z => Z
    );

    -- Clock process definition
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period / 2;
        clk <= '1';
        WAIT FOR clk_period / 2;
    END PROCESS;

    -- Stimulus process
    stimulus : PROCESS
    BEGIN
        -- Hago Reset
        reset <= '1';   -- Activate reset
        WAIT FOR clk_period * 2;  -- Wait for a few clock cycles
        reset <= '0';   -- Deactivate reset
        WAIT FOR clk_period;  -- Wait for a clock cycle to propagate

        -- Pruebo con la secuencia x: 0 1 0 1 1 1 0 1 0
        x <= '0';
        WAIT FOR clk_period;
        
        x <= '1';
        WAIT FOR clk_period;
        
        x <= '0';
        WAIT FOR clk_period;
        
        x <= '1';
        WAIT FOR clk_period;
        
        x <= '1';
        WAIT FOR clk_period;
        
        x <= '1';
        WAIT FOR clk_period;
        
        x <= '0';
        WAIT FOR clk_period;
        
        x <= '1';
        WAIT FOR clk_period;
        
        x <= '0';
        WAIT FOR clk_period;

        -- End of simulation
        WAIT;
    END PROCESS;

END behavior;
