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
		
		-- Output of Counter
		output : out std_logic_vector(23 downto 0));

end videoInput;

-- Architecture of Video Input
architecture video of videoInput is

	signal count : unsigned(23 downto 0);

begin
	process(sclk, rst)
	begin
		if (rst = '1') then
			count <= (others => '0');
		
		elsif (rising_edge(sclk)) then
			if (vsync = '1') then
				count <= count + 1;
			end if;
		end if;
	end process;

	output <= std_logic_vector(count);
	
end video;