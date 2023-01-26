library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Entity for the Video Input
entity videoInput is
	port (
		-- Input clock/reset
		sclk, rst : in std_logic;
		-- Enable Count
		vsync : 	in std_logic;
		hsync :	in std_logic;
		
		-- Output of Counter
		v_output : out std_logic_vector(47 downto 0);
		h_output : out std_logic_vector(47 downto 0);
		vsync_led : out std_logic;
		hsync_led : out std_logic);
end videoInput;

-- Architecture of Video Input
architecture video of videoInput is

	signal vcount : unsigned(47 downto 0);
	signal hcount : unsigned(47 downto 0);

begin	
	process(vsync, rst)
	begin
		if (rst = '1') then
			vcount <= (others => '0');
			vsync_led <= '0';
		elsif(rising_edge(vsync)) then
			vcount <= vcount + 1;
			vsync_led <= '1';
		end if;
	end process;
	
	process(hsync, rst)
	begin
		if (rst = '1') then
			hcount <= (others => '0');
			hsync_led <= '0';
		elsif(rising_edge(hsync)) then
			hcount <= hcount + 1;
			hsync_led <= '1';
		end if;
	end process;

	v_output <= std_logic_vector(vcount);
	h_output <= std_logic_vector(hcount);
	
end video;
