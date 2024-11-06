LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_sec_de_luces IS
END tb_sec_de_luces;

ARCHITECTURE behavior OF tb_sec_de_luces IS
    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT sec_de_luces
    PORT(
         reset : IN  STD_LOGIC;
         clock : IN  STD_LOGIC;
         x : IN  STD_LOGIC;
         LedA : OUT STD_LOGIC;
         LedB : OUT STD_LOGIC;
         LedC : OUT STD_LOGIC;
         LedD : OUT STD_LOGIC
        );
    END COMPONENT;
    
    -- Signal declarations for testbench
    SIGNAL reset : STD_LOGIC := '0';
    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL x : STD_LOGIC := '0';
    SIGNAL LedA : STD_LOGIC;
    SIGNAL LedB : STD_LOGIC;
    SIGNAL LedC : STD_LOGIC;
    SIGNAL LedD : STD_LOGIC;

    -- Clock period (adjust as needed)
    CONSTANT clock_period : time := 20 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: sec_de_luces PORT MAP (
          reset => reset,
          clock => clock,
          x => x,
          LedA => LedA,
          LedB => LedB,
          LedC => LedC,
          LedD => LedD
        );

    -- Clock process definition
    clock_process : PROCESS
    BEGIN
        clock <= '0';
        WAIT FOR clock_period / 2;
        clock <= '1';
        WAIT FOR clock_period / 2;
    END PROCESS;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Test 1: Apply reset
        reset <= '1';
        WAIT FOR clock_period * 2;  -- Wait for 2 clock cycles
        reset <= '0';
        WAIT FOR clock_period * 2;  -- Wait for 2 clock cycles after releasing reset

        -- Test 2: x = 0 (Deberia ir a A1, Z=0110)
        x <= '0';
        WAIT FOR clock_period * 2;  -- Wait for 2 clock cycles
       
        -- Test 3: x = 1 (Deberia ir a E, z=1111)
        x <= '1';
        WAIT FOR clock_period * 2;
       
        -- Test 4: x = 0 (Deberia ir a A2, z=1001)
        x <= '0';
        WAIT FOR clock_period * 2;
       
        -- Test 5: x = 1 (Deberia ir a idle , z=0000)
		  x <= '1';
		  WAIT FOR clock_period * 2;
		 
		  -- Test 6: x = 1 (Deberia ir a B1 , z=1000)
		  x <= '1';
		  WAIT FOR clock_period * 2;
		  
		  -- Test 7: x = 0 (Deberia ir a B2 , z=1100)
		  x <= '1';
		  WAIT FOR clock_period * 2;
		  
		  -- Test 8: x = 1 (Deberia ir a E , z=1111)
		  x <= '1';
		  WAIT FOR clock_period * 2;
		  
		  -- Test 9: x = 1 (Deberia ir a B3 , z=1110)
		  x <= '1';
		  WAIT FOR clock_period * 2;
		  
		  -- Test 10: x = 1 (Deberia ir a idle , z=0000)
		  x <= '1';
		  WAIT FOR clock_period * 2;

		  
        -- End of the test
        WAIT;
    END PROCESS;

END behavior;
