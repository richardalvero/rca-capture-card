library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Output to USB-UART Bridge
entity USB_Output is
	-- clks_per_bit = (clk_freq / baud_rate)
	-- For DE10-LitE: 50 MHz / 250,000 baud UART = 200
	generic (
		clk_freq :		integer := 50e6; -- System Clock Frequency
		baud_rate :		integer := 125000; -- Baud Rate
		parity_bit :	std_logic_vector(1 downto 0) := "00"); -- Type of Parity
	port (
		clk, rst :			in std_logic; -- UART Clock, Reset
		-- UART INPUTS
		UART_TX_valid :	in std_logic; -- Input Data is Valid
		UART_TX_data :		in std_logic_vector(7 downto 0); -- Input Data to Transmit
		-- UART OUTPUTS
		UART_TX_ready :	out std_logic; -- Transmit Ready
		UART_TX_out :		out std_logic); -- Transmit Output

end USB_Output;

architecture transmit of USB_Output is
	
	type state_t is (IDLE, TXSYNC, START_BIT, DATA_BITS, P_BIT, STOP_BIT, RESTART);
	signal state_r, next_state : state_t;
	
	signal tmp_ready, tmp_out : std_logic;

begin

	-- UART TX FSM
	process(clk, rst)
	begin
		-- STATE REGISTER
		if (rst = '1') then -- Asynchronous reset
			state_r <= IDLE;
		elsif(rising_edge(clk)) then
			state_r <= next_state;
		end if;
	end process;
	
	process(state_r, UART_TX_valid, UART_TX_data)
	begin
		-- Initialize Values
		next_state <= state_r;
		tmp_ready <= '0';
		tmp_out <= '0';		
		
		-- States
		case (state_r) is
			when IDLE =>
			
			when START_BIT =>
			
			when DATA_BITS =>
			
			when STOP_BIT =>
			
			when P_BIT =>
			
			when RESTART =>
			
			when others => null;
		end case;
	end process;
	
	-- Output Values
	UART_TX_ready <= tmp_ready;
	UART_TX_out <= tmp_out;
	
end transmit;