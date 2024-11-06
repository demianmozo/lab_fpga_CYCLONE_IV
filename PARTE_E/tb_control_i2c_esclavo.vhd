LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_control_i2c_esclavo IS

END tb_control_i2c_esclavo;

ARCHITECTURE behavior OF tb_control_i2c_esclavo IS

    -- Component declaration for the unit under test (UUT)
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

    -- Signals for simulating inputs and outputs
    signal reset : std_logic := '0';
    signal clock : std_logic := '0';
    signal SDA : std_logic := '0';
    signal SOY : std_logic := '0';
    signal fin_dir : std_logic := '0';
    signal fin_data : std_logic := '0';
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

    -- Clock generation
    clock_process :process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

    -- Stimulus process
    stimulus: process
    begin
        -- Reset 
        reset <= '1';
        wait for 40 ns;
        reset <= '0';

        -- Test Case 1: Start (SDA = '0')
        SDA <= '0';
        wait for 40 ns;

        -- Test Case 2: fin_dir  '1' con SOY = '1' pasa a RW 
        fin_dir <= '1';
        SOY <= '1';
        wait for 40 ns;

        -- Test Case 3: pasa a ACK
        wait for 40 ns;

        -- Test Case 4: pasa a Guarda_Data
        fin_data <= '1';
        wait for 40 ns;

        -- Test Case 5: Go back to Idle
        SDA <= '1';
        wait for 40 ns;

        -- Finish simulation
        wait;
    end process;

END behavior;
