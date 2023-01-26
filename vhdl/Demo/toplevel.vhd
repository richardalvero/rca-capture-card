library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port (
		-- DE 10
		--clk50MHz :	in std_logic; (unused for DEMO, only check GPIO)
		rst		:	in std_logic;
	
		-- Video Input (from GPIO for DEMO)
		--video		;	in std_logic_vector(7 downto 0); (unused for DEMO)
		sclk		:	in std_logic; -- PIN_W10 (top left pin)
		vsync		:	in std_logic; -- PIN_W9 (next to top left pin)
		hsync		:	in std_logic; -- PIN_W8 (third from top)
	
		-- 7 Segment Display Outputs
		led0		: 	out std_logic_vector(6 downto 0);
		led0_dp	:	out std_logic;
		led1		: 	out std_logic_vector(6 downto 0);
		led1_dp	:	out std_logic;
		led2		: 	out std_logic_vector(6 downto 0);
		led2_dp	:	out std_logic;
		led3		: 	out std_logic_vector(6 downto 0);
		led3_dp	:	out std_logic;
		led4		: 	out std_logic_vector(6 downto 0);
		led4_dp	:	out std_logic;
		led5		: 	out std_logic_vector(6 downto 0);
		led5_dp	:	out std_logic);
end toplevel;

architecture STR of toplevel is

	-- Components Used
	component decoder
		port (
			input :	in std_logic_vector(3 downto 0);
			output :	out std_logic_vector(6 downto 0));
	end component;
	
	component videoInput
		port (
			sclk, rst : in std_logic;
			vsync : 	in std_logic;
			hsync : 	in std_logic;
			v_output : out std_logic_vector(47 downto 0);
			h_output : out std_logic_vector(47 downto 0);
			vsync_led : out std_logic;
			hsync_led : out std_logic);
	end component;
	
	-- Internal Signals Used
	signal vsync_counter : std_logic_Vector(47 downto 0);
	signal hsync_counter : std_logic_vector(47 downto 0);
	signal vsync_led : std_logic;
	signal hsync_led : std_logic;
	
begin
	-- map Video Input to vsync_counter
	U_VID : videoInput port map (
		sclk => sclk,
		rst => not rst,
		vsync => vsync,
		hsync => hsync,
		v_output => vsync_counter,
		h_output => hsync_counter,
		vsync_led => vsync_led,
		hsync_led => hsync_led);

	-- map VSync/HSync Counter to 7 Segment Display
	U_LED0 : decoder port map (
		input => vsync_counter(7 downto 4),
		output => led0);
	U_LED1 : decoder port map (
		input => vsync_counter(11 downto 8),
		output => led1);
	U_LED2 : decoder port map (
		input => hsync_counter(7 downto 4),
		output => led2);
	U_LED3 : decoder port map (
		input => hsync_counter(11 downto 8),
		output => led3);
	U_LED4 : decoder port map (
		input => hsync_counter(15 downto 12),
		output => led4);
	U_LED5 : decoder port map (
		input => hsync_counter(19 downto 16),
		output => led5);
		
	-- map decimal points to off
	led0_dp <= '0';
	led1_dp <= '1';
	led2_dp <= '0';
	led3_dp <= '1';
	led4_dp <= '1';
	led5_dp <= '1';

end STR;