LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_restador_4_bits IS
END tb_restador_4_bits;

ARCHITECTURE behavior OF tb_restador_4_bits IS 

    -- Component declaration for the Unit Under Test (UUT)
    COMPONENT restador_4_bits
    PORT(
         B_in   : IN  std_logic;
         CLOCK  : IN  std_logic;
         A3, A2, A1, A0 : IN  std_logic;
         B3, B2, B1, B0 : IN  std_logic;
         R3, R2, R1, R0 : OUT std_logic;
         B_out  : OUT std_logic
        );
    END COMPONENT;
   
   -- Signals to connect to UUT
   signal B_in    : std_logic := '0';
   signal CLOCK   : std_logic := '0';
   signal A3, A2, A1, A0 : std_logic := '0';
   signal B3, B2, B1, B0 : std_logic := '0';
   signal R3, R2, R1, R0 : std_logic;
   signal B_out   : std_logic;

   -- Clock generation
   constant clk_period : time := 20 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: restador_4_bits PORT MAP (
          B_in => B_in,
          CLOCK => CLOCK,
          A3 => A3, A2 => A2, A1 => A1, A0 => A0,
          B3 => B3, B2 => B2, B1 => B1, B0 => B0,
          R3 => R3, R2 => R2, R1 => R1, R0 => R0,
          B_out => B_out
        );

    -- Clock process definitions
    clock_process :process
    begin
        CLOCK <= '0';
        wait for clk_period/2;
        CLOCK <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin	
        -- Test Case 1: 1010 (A) - 0101 (B), no borrow in
        A3 <= '1'; A2 <= '0'; A1 <= '1'; A0 <= '0'; -- A = 1010 (10 decimal)
        B3 <= '0'; B2 <= '1'; B1 <= '0'; B0 <= '1'; -- B = 0101 (5 decimal)
        B_in <= '0';  -- No borrow in
        wait for 40 ns;
        -- Esperado: R = 0101 (5 decimal), B_out = 0 (no borrow out)

        -- Test Case 2: 1111 (A) - 0001 (B), borrow in = 1
        A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1'; -- A = 1111 (15 decimal)
        B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '1'; -- B = 0001 (1 decimal)
        B_in <= '1';  -- Borrow in = 1
        wait for 40 ns;
        -- Esperado: R = 1110 (14 decimal), B_out = 0 (no borrow out)

        -- Test Case 3: 0000 (A) - 0001 (B), borrow in = 0
        A3 <= '0'; A2 <= '0'; A1 <= '0'; A0 <= '0'; -- A = 0000 (0 decimal)
        B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '1'; -- B = 0001 (1 decimal)
        B_in <= '0';  -- No borrow in
        wait for 40 ns;
        -- Esperado: R = 1111 (complemento a 2 del resultado -1), B_out = 1 (borrow out)

        -- Test Case 4: 0100 (A) - 1000 (B), borrow in = 0
        A3 <= '0'; A2 <= '1'; A1 <= '0'; A0 <= '0'; -- A = 0100 (4 decimal)
        B3 <= '1'; B2 <= '0'; B1 <= '0'; B0 <= '0'; -- B = 1000 (8 decimal)
        B_in <= '0';  -- No borrow in
        wait for 40 ns;
        -- Esperado: R = 1100 (complemento a 2 de -4), B_out = 1 (borrow out)

        -- Test Case 5: 0011 (A) - 0011 (B), borrow in = 0
        A3 <= '0'; A2 <= '0'; A1 <= '1'; A0 <= '1'; -- A = 0011 (3 decimal)
        B3 <= '0'; B2 <= '0'; B1 <= '1'; B0 <= '1'; -- B = 0011 (3 decimal)
        B_in <= '0';  -- No borrow in
        wait for 40 ns;
        -- Esperado: R = 0000 (0 decimal), B_out = 0 (no borrow out)

        -- Test Case 6: 1111 (A) - 1111 (B), borrow in = 1
        A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1'; -- A = 1111 (15 decimal)
        B3 <= '1'; B2 <= '1'; B1 <= '1'; B0 <= '1'; -- B = 1111 (15 decimal)
        B_in <= '1';  -- Borrow in = 1
        wait for 40 ns;
        -- Esperado: R = 1111 (15 decimal), B_out = 1 (borrow out)

        wait;
    end process;

END;
