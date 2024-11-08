LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_i2c_esclavo_completo IS
END tb_i2c_esclavo_completo;

ARCHITECTURE behavior OF tb_i2c_esclavo_completo IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT control_i2c_esclavo
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic;
         SDA : IN  std_logic;
         SOY : IN  std_logic;
         fin_dir : IN  std_logic;
         fin_data : IN  std_logic;
         SDA_int : OUT  std_logic;
         hab_dir : OUT  std_logic;
         hab_data : OUT  std_logic
        );
    END COMPONENT;
    
    -- Signals for stimulating the inputs of UUT
    signal reset : std_logic := '0';
    signal clock : std_logic := '0';
    signal SDA : std_logic := '0';
    signal SOY : std_logic := '0';
    signal fin_dir : std_logic := '0';
    signal fin_data : std_logic := '0';

    -- Signals for observing the outputs of UUT
    signal SDA_int : std_logic;
    signal hab_dir : std_logic;
    signal hab_data : std_logic;

    -- Clock period definition
    constant clock_period : time := 20 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: control_i2c_esclavo PORT MAP (
          reset => reset,
          clock => clock,
          SDA => SDA,
          SOY => SOY,
          fin_dir => fin_dir,
          fin_data => fin_data,
          SDA_int => SDA_int,
          hab_dir => hab_dir,
          hab_data => hab_data
        );

    -- Clock process definitions
    clock_process :process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        reset <= '1';
        wait for 40 ns;
        reset <= '0';
        
        -- Condition for the start of transmission
        -- SDA should be 0 when SCL is 1 before the first falling edge
        SDA <= '1';  -- SDA high initially
        wait for clock_period;
        SDA <= '0';  -- Start condition: SDA goes low when SCL is high
        wait for clock_period;

        -- Apply the SDA sequence: 1 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0 0 0 1 1
        SDA <= '1'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '1'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '1'; wait for clock_period;
        SDA <= '1'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '1'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '0'; wait for clock_period;
        SDA <= '1'; wait for clock_period;
        SDA <= '1'; wait for clock_period;

        -- Simulate SOY, fin_dir, and fin_data signals for evaluation
        SOY <= '1';
        fin_dir <= '1';
        fin_data <= '0';
        wait for clock_period;
        fin_data <= '1';
        wait for clock_period;
        
        -- End simulation after the test
        wait;
    end process;

END;
