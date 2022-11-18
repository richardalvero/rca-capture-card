library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Input ADC-I2C Interface
entity RCA_Input is
	generic (
		in_clk :	integer := 50000000; -- Input Clk
		bus_clk : integer := 400000); -- I2C Bus Clk (SCL)
	port (
		clk, rst :		in std_logic; -- Clock, Reset
		ADC_address :	in std_logic_vector(6 downto 0); -- Address of ADC
		wr :				in std_logic; -- '0' is write, '1' is read/unused
		data_rd :		in std_logic_vector(7 downto 0); -- Data read from ADC (no writing done)
		ack_flag :		in std_logic; -- Improper acknowledge from ADC
		sda, scl : 		inout std_logic); -- Serial Data/Clock Output of I2C Bus
end RCA_Input;

architecture input of RCA_Input is
	-- Implement I2C as an FSM
	type state_t is (READY, START, COMMAND, ACK1, W, ACK2, MASTER_ACK, STOP);
	signal state_r, next_state : state_t;
	
begin

	process(clk, rst)
	begin
		-- STATE REGISTER
		if (rst = '1') then -- Asynchronous reset
			state_r <= READY;
		elsif(rising_edge(clk)) then
			state_r <= next_state;
		end if;
	end process;
	
	process(state_r, ADC_address, wr, data_rd, ack_flag, sda, scl)
	begin
		-- Initialize Values (Unfinished)
		next_state <= state_r;
		
		-- States
		case (state_r) is
			when READY =>
			
			when START =>
			
			when COMMAND =>
						
			when ACK1 =>
			
			when W =>
			
			when ACK2 =>
			
			when MASTER_ACK =>
			
			when STOP =>
			
			when others => null;
		end case;
	end process;
	
	-- Output Values
	
end input;