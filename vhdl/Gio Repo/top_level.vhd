library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity top_level is
	port (
		-- INPUTS
		clk :				in std_logic; -- Clock
		power_on : 		in std_logic; -- Power System
		rst : 			in std_logic; -- Restart System
		
		-- RCA IN --
		sda : inout std_logic; -- Serial Data Output of I2C Bus (ADC)
		scl : inout std_logic; -- Serial Clock Output of I2C Bus (ADC)
		
		-- USB OUT --
		UART_TX_ready :	out std_logic; -- Transmit Ready
		UART_TX_out :		out std_logic; -- Transmit Output
		
		-- HDMI OUT --
		TMDS_p 		:	out std_logic_vector(2 downto 0); -- R,G,B + bits
		TMDS_n 		:	out std_logic_vector(2 downto 0); -- R,G,B - bits
		TMDS_clk_p	:	out std_logic; -- + clk
		TMDS_clk_n	:	out std_logic); -- - clk
end top_level;

architecture STR of top_level is

	-- Related to RCA_Input *Uses I2C
		constant CLK_FREQ : integer := 50e6;
		constant BUS_CLK : integer := 400000;
		signal ADC_address : std_logic_vector(6 downto 0);
		signal wr : std_logic;
		signal data_rd : std_logic_vector(7 downto 0);
		signal ack_flag : std_logic;
	
	-- Related to RCA_to_USB (Not Connected Yet)
	
	-- Related to RCA_to_HDMI (Not Connected Yet)

	-- Related to USB_Output *Uses UART
		--Also uses CLK_FREQ
		constant BAUD_RATE : integer := 125000;
		constant PARITY_BIT : std_logic_vector(1 downto 0) := "00";
		signal UART_TX_valid :	std_logic; 
		signal UART_TX_data :	std_logic_vector(7 downto 0);
	

	-- Related to HDMI_Output
		-- Video
		signal video_en :			std_logic; 
		signal hSync, vSync : 	std_logic;
		signal drawArea :			std_logic;
		signal r, g, b :			std_logic_vector(7 downto 0);
		
		-- Audio (Not Connected Yet)
		--signal audio_en :			in std_logic;
		--signal aux0, aux1, aux2 : in std_logic_vector(3 downto 0);

begin -- STR

	U_RCA_INPUT : entity work.RCA_Input
		generic map (
			in_clk => CLK_FREQ,
			bus_clk => BUS_CLK)
		port map (
			clk => clk,
			rst => rst,
			ADC_address => ADC_address,
			wr => wr,
			data_rd => data_rd,
			ack_flag => ack_flag,
			sda => sda,
			scl => scl);
			

	U_USB_OUTPUT : entity work.USB_Output
		generic map (
			clk_freq => CLK_FREQ,
			baud_rate => BAUD_RATE,
			parity_bit => PARITY_BIT)
		port map (
			clk => clk,
			rst => rst,
			UART_TX_valid => UART_TX_valid,
			UART_TX_data => UART_TX_data,
			UART_TX_ready => UART_TX_ready,
			UART_TX_out => UART_TX_out);
			
	U_HDMI_OUTPUT : entity work.HDMI_Output
		port map (
			clk => clk,
			rst => rst,
			video_en => video_en,
			hSync => hSync,
			vSync => vSync,
			drawArea => drawArea,
			r => r,
			b => b,
			g => g,
			TMDS_p => TMDS_p,
			TMDS_n => TMDS_n,
			TMDS_clk_p => TMDS_clk_p,
			TMDS_clk_n => TMDS_clk_n);

end STR;	
		