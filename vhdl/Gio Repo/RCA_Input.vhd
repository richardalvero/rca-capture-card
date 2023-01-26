library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Input ADC-I2C Interface
entity RCA_Input is
	generic (
		in_clk :	integer := 50000000; -- Input Clk
		bus_clk : integer := 400000); -- I2C Bus Clk (SCL)
	port (
		clk :				in std_logic; -- Clock
		rst :				in std_logic; -- Reset
		
		en :				in std_logic; -- Enable I2C transmission
		wr :				in std_logic; -- '0' is write, '1' is read
		ADC_address :	in std_logic_vector(6 downto 0); -- Address of ADC
		REG_address :	in std_logic_vector(6 downto 0); -- Address of Register
		data_wr :		in std_logic_vector(7 downto 0); -- Data written to ADC
		data_rd :		out std_logic_vector(7 downto 0); -- Data read from ADC
		sda, scl : 		inout std_logic); -- Serial Data/Clock Output of I2C Bus
end RCA_Input;

architecture input of RCA_Input is
	-- Implement I2C as an FSM
	type state_t is (
		IDLE, -- I2C is not being used
		START, -- I2C is starting a cycle
		
		--| WRITE SLAVE ADDRESS |--
		ADDR_WRITE, -- Writing address of I2C device
		ADDR_WAIT, -- Updating SCL signal between bit writes
		ADDR_ACK, -- I2C Acknowledge after writing address
		
		--| WRITE REGISTER ADDRESS |--
		REG_WRITE, -- Writing address of device register
		REG_WAIT, -- Updating SCL signal between bit writes
		REG_ACK, -- I2C Acknowledge after writing register address
		
		--| WRITE REGISTER |--
		WRITE_DATA, -- Writing data to a register
		WRITE_WAIT, -- Updating SCL signal between writes
		WRITE_ACK, -- I2C Acknowledge after writing data
		
		--| READ REGISTER |--
		READ_DATA, -- Reading data from a register
		READ_WAIT, -- Updating SCL signal between reads
		READ_ACK, -- I2C Acknowledge after reading data (not acknowledge)
		
		STOP); -- I2C is ending a cycle (or beginning read phase 2)
	signal state_r, next_state : state_t;
	
	signal counter : 		unsigned(3 downto 0);
	signal read_phase2 : std_logic;
	signal data_received : std_logic(7 downto 0);
	
	signal ACK_address, ACK_register, ACK_write : std_logic;
	
	
begin

	process(clk, rst)
	begin
		-- STATE REGISTER
		if (rst = '1') then -- Asynchronous reset
			scl <= '1';
			sda <= '1';
			data_rd <= (others => '0');
			state_r <= IDLE;
		elsif(rising_edge(clk)) then
			state_r <= next_state;
		end if;
	end process;
	
	
	process(state_r, ADC_address, wr, data_rd, ack_flag, sda, scl)
	begin
		-- Initialize Values
		next_state <= state_r;
		counter <= "0111";
		read_phase2 <= '0';
		data_received <= (others => '0');
		ACK_address <= '0';
		ACK_register <= '0';
		ACK_write <= '0';
		
		-- States
		case (state_r) is
			-- Writing address of I2C device
			when IDLE =>
				-- SCL/SDA are both high when idle
				scl <= '1';
				sda <= '1';
				
				-- Check if transfer is enabled
				if (en = '1') then
					-- reset all acknowledges and read phase 2
					read_phase2 <= '0';
					ACK_address <= '0';
					ACK_register <= '0';
					ACK_write <= '0';
					data_received <= (others => '0');
					next_state <= START;
				end if;
			
			when START =>
				sda <= '0'; -- SDA lowered to indicate start
				counter <= "0111"; -- reset counter for bits
				next_state <= ADDR_WRITE;
			
			
			-- Writing address of I2C device
			when ADDR_WRITE =>
				scl <= '0'; -- sda line changes when scl is low
				
				-- If writing ADC address
				if counter >= "0111" then
					-- send address bit by bit to sda
					sda <= ADC_address(counter); -- MSB first
					next_state <= ADDR_WAIT;
				
				-- if writing RW bit
				elsif counter = "0000" then
					-- If still writing ADC address
					if read_phase2 = '0' then
						sda <= '0'; -- signify WRITE
						next_state <= ADDR_WAIT;
					-- If second phase reading
					else
						sda <= '1'; -- signify READ
						next_state <= ADDR_ACK;
					end if;
				
				-- if finished writing address
				elsif counter > "0111" then
					next_state <= ADDR_ACK;
			
			
			-- Updating SCL signal between bit writes	(ADDRESS)
			when ADDR_WAIT =>
				scl <= '1';
				counter <= counter - 1;
				next_state <= ADDR_WRITE;
				
			
			-- I2C Acknowledge after writing address
			when ADDR_ACK =>
				scl <= '1';
				ACK_address <= sda;
				counter <= "0111";
				if read_phase2 = '0' then
					next_state <= REG_WRITE;
				else
					next_state <= READ_DATA;
				end if;
				
				
			-- Writing address of device register
			when REG_WRITE =>
				scl <= '0';
				-- If writing register address
				if counter <= "0111" then
					-- send address bit by bit to sda
					sda <= REG_address(counter); -- MSB first
					next_state <= REG_WAIT;
				-- If finished writing address
				else
					next_state <= REG_ACK;
				end if;
			
			
			-- Updating SCL signal between bit writes (REGISTER)
			when REG_WAIT =>
				scl <= '1';
				counter <= counter - 1;
				next_state <= REG_WRITE;
			
			
			-- I2C Acknowledge after writing register address
			when REG_ACK =>
				ACK_register <= sda;
				scl <= '1';
				counter <= "0111";
				-- If writing to register
				if wr = '0' then
					next_state <= DATA_WRITE;
				
				-- Else reading from register (2nd phase)
				else
					read_phase2 = '1';
					next_state <= STOP;
				end if;
				
			when WRITE_DATA =>
				if counter <= "0111" then
					-- send address bit by bit to sda
					sda <= data_wr(counter); -- MSB first
					next_state <= WRITE_WAIT;
				else
					next_state <= WRITE_ACK;
				end if;
			
			when WRITE_ACK =>
				ACK_write <= sda;
				scl <= '1';
				counter <= "0111";
				next_state <= STOP;
				
			
			when READ_DATA =>
				if counter <= "0111" then
					scl <= '1';
					-- read address bit by bit to sda
					data_received(counter) <= sda;
					next_state <= READ_WAIT;
				else
					scl <= '0';
					sda <= '1';
					next_state <= READ_ACK;
			
			when READ_WAIT =>
				scl <= '0';
				counter <= counter - 1;
				next_state <= READ_DATA;
			
			when READ_ACK =>
				scl <= '1';
				read_phase2 <= '0';
				next_state <= STOP;
			
			when STOP =>
				scl <= '1';
				sda <= '1';
				if read_phase2 = '1' then
					next_state <= START;
				else
					next_state <= IDLE;
				end if;
			
			
			when others => null;
		end case;
	end process;
	
	-- Output Values
	data_rd <= data_received;
	
end input;