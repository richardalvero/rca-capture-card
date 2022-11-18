library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity HDMI_Output is
	port (
		clk, rst :		in std_logic; -- TMDS Clock, Reset
		-- HDMI INPUTS
		video_en :		in std_logic; -- Video Data Enable
		hSync, vSync : in std_logic; -- Horizontal/Vertical Sync
		drawArea :		in std_logic; -- Draw
		r, g, b :		in std_logic_vector(7 downto 0); -- RGB Bytes
		-- HDMI OUTPUTS
		TMDS_p :			out std_logic_vector(2 downto 0); -- TMDS RGB +
		TMDS_n :			out std_logic_vector(2 downto 0); -- TMDS RGB -
		TMDS_clk_p :	out std_logic; -- TMDS + Clock
		TMDS_clk_n :	out std_logic); -- TMDS - Clock
		
end HDMI_Output;

architecture output of HDMI_Output is

begin

end output;