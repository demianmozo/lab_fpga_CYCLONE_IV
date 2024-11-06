-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's Zs are dependent only on the current state.
-- The Z is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity sec_de_luces_template is

	port(
		clk   : in	std_logic;
		x	   : in	std_logic;
		reset : in	std_logic;
		Z	   : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of sec_de_luces_template is

	-- Build an enumerated type for the state machine
	type state_type is (Idle, A1, A2, E, B1, B2, B3);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= Idle;
		elsif (rising_edge(clk)) then
			case state is
			
				when Idle =>
					if x = '0' then
						state <= A1;
					else
						state <= B1;
					end if;
					
				when A1=>
						state <= E;
					
				when A2=>
						state <= Idle;

				when B1 =>
						state <= B2;
						
				when B2 =>
						state <= E;
						
				when B3 =>
						state <= Idle;
				
				when E =>
					if x = '0' then
						state <= A2;
					else
						state <= B3;
					end if;

			end case;
		end if;
	end process;

	-- Z depends solely on the current state
	process (state)
	begin
		case state is
			when Idle =>
				Z <= "0000";
				
			when A1 =>
				Z <= "0110";
				
			when A2 =>
				Z <= "1001";
				
			when B1 =>
				Z <= "1000";
				
			when B2 =>
				Z <= "1100";
				
			when B3 =>
				Z <= "1110";
				
			when E =>
				Z <= "1111";
		end case;
	end process;

end rtl;
