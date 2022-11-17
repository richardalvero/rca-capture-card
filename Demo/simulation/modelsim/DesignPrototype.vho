-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/17/2022 13:19:27"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	rst : IN std_logic;
	vsync : IN std_logic;
	sclk : IN std_logic;
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic;
	led4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led4_dp : BUFFER std_logic;
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	led5_dp : BUFFER std_logic
	);
END toplevel;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \vsync~input_o\ : std_logic;
SIGNAL \U_VID|count[0]~23_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_VID|count[1]~24_combout\ : std_logic;
SIGNAL \U_VID|count[1]~25\ : std_logic;
SIGNAL \U_VID|count[2]~26_combout\ : std_logic;
SIGNAL \U_VID|count[2]~27\ : std_logic;
SIGNAL \U_VID|count[3]~28_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count[3]~29\ : std_logic;
SIGNAL \U_VID|count[4]~30_combout\ : std_logic;
SIGNAL \U_VID|count[4]~31\ : std_logic;
SIGNAL \U_VID|count[5]~32_combout\ : std_logic;
SIGNAL \U_VID|count[5]~33\ : std_logic;
SIGNAL \U_VID|count[6]~34_combout\ : std_logic;
SIGNAL \U_VID|count[6]~35\ : std_logic;
SIGNAL \U_VID|count[7]~36_combout\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count[7]~37\ : std_logic;
SIGNAL \U_VID|count[8]~38_combout\ : std_logic;
SIGNAL \U_VID|count[8]~39\ : std_logic;
SIGNAL \U_VID|count[9]~40_combout\ : std_logic;
SIGNAL \U_VID|count[9]~41\ : std_logic;
SIGNAL \U_VID|count[10]~42_combout\ : std_logic;
SIGNAL \U_VID|count[10]~43\ : std_logic;
SIGNAL \U_VID|count[11]~44_combout\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count[11]~45\ : std_logic;
SIGNAL \U_VID|count[12]~46_combout\ : std_logic;
SIGNAL \U_VID|count[12]~47\ : std_logic;
SIGNAL \U_VID|count[13]~48_combout\ : std_logic;
SIGNAL \U_VID|count[13]~49\ : std_logic;
SIGNAL \U_VID|count[14]~50_combout\ : std_logic;
SIGNAL \U_VID|count[14]~51\ : std_logic;
SIGNAL \U_VID|count[15]~52_combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count[15]~53\ : std_logic;
SIGNAL \U_VID|count[16]~54_combout\ : std_logic;
SIGNAL \U_VID|count[16]~55\ : std_logic;
SIGNAL \U_VID|count[17]~56_combout\ : std_logic;
SIGNAL \U_VID|count[17]~57\ : std_logic;
SIGNAL \U_VID|count[18]~58_combout\ : std_logic;
SIGNAL \U_VID|count[18]~59\ : std_logic;
SIGNAL \U_VID|count[19]~60_combout\ : std_logic;
SIGNAL \U_LED4|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count[19]~61\ : std_logic;
SIGNAL \U_VID|count[20]~62_combout\ : std_logic;
SIGNAL \U_VID|count[20]~63\ : std_logic;
SIGNAL \U_VID|count[21]~64_combout\ : std_logic;
SIGNAL \U_VID|count[21]~65\ : std_logic;
SIGNAL \U_VID|count[22]~66_combout\ : std_logic;
SIGNAL \U_VID|count[22]~67\ : std_logic;
SIGNAL \U_VID|count[23]~68_combout\ : std_logic;
SIGNAL \U_LED5|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U_LED5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_vsync <= vsync;
ww_sclk <= sclk;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U_LED5|ALT_INV_Mux0~0_combout\ <= NOT \U_LED5|Mux0~0_combout\;
\U_LED4|ALT_INV_Mux0~0_combout\ <= NOT \U_LED4|Mux0~0_combout\;
\U_LED3|ALT_INV_Mux0~0_combout\ <= NOT \U_LED3|Mux0~0_combout\;
\U_LED2|ALT_INV_Mux0~0_combout\ <= NOT \U_LED2|Mux0~0_combout\;
\U_LED1|ALT_INV_Mux0~0_combout\ <= NOT \U_LED1|Mux0~0_combout\;
\U_LED0|ALT_INV_Mux0~0_combout\ <= NOT \U_LED0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\sclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\vsync~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vsync,
	o => \vsync~input_o\);

-- Location: LCCOMB_X39_Y35_N4
\U_VID|count[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[0]~23_combout\ = \vsync~input_o\ $ (\U_VID|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vsync~input_o\,
	datac => \U_VID|count\(0),
	combout => \U_VID|count[0]~23_combout\);

-- Location: IOIBUF_X46_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X39_Y35_N5
\U_VID|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[0]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(0));

-- Location: LCCOMB_X39_Y35_N10
\U_VID|count[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[1]~24_combout\ = (\U_VID|count\(1) & (\U_VID|count\(0) $ (VCC))) # (!\U_VID|count\(1) & (\U_VID|count\(0) & VCC))
-- \U_VID|count[1]~25\ = CARRY((\U_VID|count\(1) & \U_VID|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(0),
	datad => VCC,
	combout => \U_VID|count[1]~24_combout\,
	cout => \U_VID|count[1]~25\);

-- Location: FF_X39_Y35_N11
\U_VID|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[1]~24_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(1));

-- Location: LCCOMB_X39_Y35_N12
\U_VID|count[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[2]~26_combout\ = (\U_VID|count\(2) & (!\U_VID|count[1]~25\)) # (!\U_VID|count\(2) & ((\U_VID|count[1]~25\) # (GND)))
-- \U_VID|count[2]~27\ = CARRY((!\U_VID|count[1]~25\) # (!\U_VID|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(2),
	datad => VCC,
	cin => \U_VID|count[1]~25\,
	combout => \U_VID|count[2]~26_combout\,
	cout => \U_VID|count[2]~27\);

-- Location: FF_X39_Y35_N13
\U_VID|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[2]~26_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(2));

-- Location: LCCOMB_X39_Y35_N14
\U_VID|count[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[3]~28_combout\ = (\U_VID|count\(3) & (\U_VID|count[2]~27\ $ (GND))) # (!\U_VID|count\(3) & (!\U_VID|count[2]~27\ & VCC))
-- \U_VID|count[3]~29\ = CARRY((\U_VID|count\(3) & !\U_VID|count[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(3),
	datad => VCC,
	cin => \U_VID|count[2]~27\,
	combout => \U_VID|count[3]~28_combout\,
	cout => \U_VID|count[3]~29\);

-- Location: FF_X39_Y35_N15
\U_VID|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[3]~28_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(3));

-- Location: LCCOMB_X67_Y51_N28
\U_LED0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_VID|count\(3) & (\U_VID|count\(0) & (\U_VID|count\(1) $ (\U_VID|count\(2))))) # (!\U_VID|count\(3) & (!\U_VID|count\(1) & (\U_VID|count\(0) $ (\U_VID|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y51_N6
\U_LED0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_VID|count\(1) & ((\U_VID|count\(0) & (\U_VID|count\(3))) # (!\U_VID|count\(0) & ((\U_VID|count\(2)))))) # (!\U_VID|count\(1) & (\U_VID|count\(2) & (\U_VID|count\(3) $ (\U_VID|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y51_N12
\U_LED0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_VID|count\(3) & (\U_VID|count\(2) & ((\U_VID|count\(1)) # (!\U_VID|count\(0))))) # (!\U_VID|count\(3) & (\U_VID|count\(1) & (!\U_VID|count\(0) & !\U_VID|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y51_N30
\U_LED0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_VID|count\(0) & (\U_VID|count\(1) $ (((!\U_VID|count\(2)))))) # (!\U_VID|count\(0) & ((\U_VID|count\(1) & (\U_VID|count\(3) & !\U_VID|count\(2))) # (!\U_VID|count\(1) & (!\U_VID|count\(3) & \U_VID|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y51_N24
\U_LED0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_VID|count\(1) & (!\U_VID|count\(3) & (\U_VID|count\(0)))) # (!\U_VID|count\(1) & ((\U_VID|count\(2) & (!\U_VID|count\(3))) # (!\U_VID|count\(2) & ((\U_VID|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y51_N10
\U_LED0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_VID|count\(1) & (!\U_VID|count\(3) & ((\U_VID|count\(0)) # (!\U_VID|count\(2))))) # (!\U_VID|count\(1) & (\U_VID|count\(0) & (\U_VID|count\(3) $ (!\U_VID|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y51_N0
\U_LED0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_VID|count\(0) & ((\U_VID|count\(3)) # (\U_VID|count\(1) $ (\U_VID|count\(2))))) # (!\U_VID|count\(0) & ((\U_VID|count\(1)) # (\U_VID|count\(3) $ (\U_VID|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(1),
	datab => \U_VID|count\(3),
	datac => \U_VID|count\(0),
	datad => \U_VID|count\(2),
	combout => \U_LED0|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y35_N16
\U_VID|count[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[4]~30_combout\ = (\U_VID|count\(4) & (!\U_VID|count[3]~29\)) # (!\U_VID|count\(4) & ((\U_VID|count[3]~29\) # (GND)))
-- \U_VID|count[4]~31\ = CARRY((!\U_VID|count[3]~29\) # (!\U_VID|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(4),
	datad => VCC,
	cin => \U_VID|count[3]~29\,
	combout => \U_VID|count[4]~30_combout\,
	cout => \U_VID|count[4]~31\);

-- Location: FF_X39_Y35_N17
\U_VID|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[4]~30_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(4));

-- Location: LCCOMB_X39_Y35_N18
\U_VID|count[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[5]~32_combout\ = (\U_VID|count\(5) & (\U_VID|count[4]~31\ $ (GND))) # (!\U_VID|count\(5) & (!\U_VID|count[4]~31\ & VCC))
-- \U_VID|count[5]~33\ = CARRY((\U_VID|count\(5) & !\U_VID|count[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(5),
	datad => VCC,
	cin => \U_VID|count[4]~31\,
	combout => \U_VID|count[5]~32_combout\,
	cout => \U_VID|count[5]~33\);

-- Location: FF_X39_Y35_N19
\U_VID|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[5]~32_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(5));

-- Location: LCCOMB_X39_Y35_N20
\U_VID|count[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[6]~34_combout\ = (\U_VID|count\(6) & (!\U_VID|count[5]~33\)) # (!\U_VID|count\(6) & ((\U_VID|count[5]~33\) # (GND)))
-- \U_VID|count[6]~35\ = CARRY((!\U_VID|count[5]~33\) # (!\U_VID|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(6),
	datad => VCC,
	cin => \U_VID|count[5]~33\,
	combout => \U_VID|count[6]~34_combout\,
	cout => \U_VID|count[6]~35\);

-- Location: FF_X39_Y35_N21
\U_VID|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[6]~34_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(6));

-- Location: LCCOMB_X39_Y35_N22
\U_VID|count[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[7]~36_combout\ = (\U_VID|count\(7) & (\U_VID|count[6]~35\ $ (GND))) # (!\U_VID|count\(7) & (!\U_VID|count[6]~35\ & VCC))
-- \U_VID|count[7]~37\ = CARRY((\U_VID|count\(7) & !\U_VID|count[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datad => VCC,
	cin => \U_VID|count[6]~35\,
	combout => \U_VID|count[7]~36_combout\,
	cout => \U_VID|count[7]~37\);

-- Location: FF_X39_Y35_N23
\U_VID|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[7]~36_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(7));

-- Location: LCCOMB_X63_Y50_N12
\U_LED1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = (\U_VID|count\(7) & (\U_VID|count\(4) & (\U_VID|count\(5) $ (\U_VID|count\(6))))) # (!\U_VID|count\(7) & (!\U_VID|count\(5) & (\U_VID|count\(4) $ (\U_VID|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y50_N30
\U_LED1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_VID|count\(7) & ((\U_VID|count\(4) & (\U_VID|count\(5))) # (!\U_VID|count\(4) & ((\U_VID|count\(6)))))) # (!\U_VID|count\(7) & (\U_VID|count\(6) & (\U_VID|count\(5) $ (\U_VID|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N24
\U_LED1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_VID|count\(7) & (\U_VID|count\(6) & ((\U_VID|count\(5)) # (!\U_VID|count\(4))))) # (!\U_VID|count\(7) & (\U_VID|count\(5) & (!\U_VID|count\(4) & !\U_VID|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y50_N10
\U_LED1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux3~0_combout\ = (\U_VID|count\(4) & ((\U_VID|count\(5) $ (!\U_VID|count\(6))))) # (!\U_VID|count\(4) & ((\U_VID|count\(7) & (\U_VID|count\(5) & !\U_VID|count\(6))) # (!\U_VID|count\(7) & (!\U_VID|count\(5) & \U_VID|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\U_LED1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux2~0_combout\ = (\U_VID|count\(5) & (!\U_VID|count\(7) & (\U_VID|count\(4)))) # (!\U_VID|count\(5) & ((\U_VID|count\(6) & (!\U_VID|count\(7))) # (!\U_VID|count\(6) & ((\U_VID|count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y50_N6
\U_LED1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux1~0_combout\ = (\U_VID|count\(5) & (!\U_VID|count\(7) & ((\U_VID|count\(4)) # (!\U_VID|count\(6))))) # (!\U_VID|count\(5) & (\U_VID|count\(4) & (\U_VID|count\(7) $ (!\U_VID|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y50_N8
\U_LED1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux0~0_combout\ = (\U_VID|count\(4) & ((\U_VID|count\(7)) # (\U_VID|count\(5) $ (\U_VID|count\(6))))) # (!\U_VID|count\(4) & ((\U_VID|count\(5)) # (\U_VID|count\(7) $ (\U_VID|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(7),
	datab => \U_VID|count\(5),
	datac => \U_VID|count\(4),
	datad => \U_VID|count\(6),
	combout => \U_LED1|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y35_N24
\U_VID|count[8]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[8]~38_combout\ = (\U_VID|count\(8) & (!\U_VID|count[7]~37\)) # (!\U_VID|count\(8) & ((\U_VID|count[7]~37\) # (GND)))
-- \U_VID|count[8]~39\ = CARRY((!\U_VID|count[7]~37\) # (!\U_VID|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(8),
	datad => VCC,
	cin => \U_VID|count[7]~37\,
	combout => \U_VID|count[8]~38_combout\,
	cout => \U_VID|count[8]~39\);

-- Location: FF_X39_Y35_N25
\U_VID|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[8]~38_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(8));

-- Location: LCCOMB_X39_Y35_N26
\U_VID|count[9]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[9]~40_combout\ = (\U_VID|count\(9) & (\U_VID|count[8]~39\ $ (GND))) # (!\U_VID|count\(9) & (!\U_VID|count[8]~39\ & VCC))
-- \U_VID|count[9]~41\ = CARRY((\U_VID|count\(9) & !\U_VID|count[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(9),
	datad => VCC,
	cin => \U_VID|count[8]~39\,
	combout => \U_VID|count[9]~40_combout\,
	cout => \U_VID|count[9]~41\);

-- Location: FF_X39_Y35_N27
\U_VID|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[9]~40_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(9));

-- Location: LCCOMB_X39_Y35_N28
\U_VID|count[10]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[10]~42_combout\ = (\U_VID|count\(10) & (!\U_VID|count[9]~41\)) # (!\U_VID|count\(10) & ((\U_VID|count[9]~41\) # (GND)))
-- \U_VID|count[10]~43\ = CARRY((!\U_VID|count[9]~41\) # (!\U_VID|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(10),
	datad => VCC,
	cin => \U_VID|count[9]~41\,
	combout => \U_VID|count[10]~42_combout\,
	cout => \U_VID|count[10]~43\);

-- Location: FF_X39_Y35_N29
\U_VID|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[10]~42_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(10));

-- Location: LCCOMB_X39_Y35_N30
\U_VID|count[11]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[11]~44_combout\ = (\U_VID|count\(11) & (\U_VID|count[10]~43\ $ (GND))) # (!\U_VID|count\(11) & (!\U_VID|count[10]~43\ & VCC))
-- \U_VID|count[11]~45\ = CARRY((\U_VID|count\(11) & !\U_VID|count[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(11),
	datad => VCC,
	cin => \U_VID|count[10]~43\,
	combout => \U_VID|count[11]~44_combout\,
	cout => \U_VID|count[11]~45\);

-- Location: FF_X39_Y35_N31
\U_VID|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[11]~44_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(11));

-- Location: LCCOMB_X72_Y39_N0
\U_LED2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\U_VID|count\(10) & (!\U_VID|count\(9) & (\U_VID|count\(11) $ (!\U_VID|count\(8))))) # (!\U_VID|count\(10) & (\U_VID|count\(8) & (\U_VID|count\(9) $ (!\U_VID|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y39_N2
\U_LED2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\U_VID|count\(9) & ((\U_VID|count\(8) & ((\U_VID|count\(11)))) # (!\U_VID|count\(8) & (\U_VID|count\(10))))) # (!\U_VID|count\(9) & (\U_VID|count\(10) & (\U_VID|count\(11) $ (\U_VID|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y39_N4
\U_LED2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\U_VID|count\(10) & (\U_VID|count\(11) & ((\U_VID|count\(9)) # (!\U_VID|count\(8))))) # (!\U_VID|count\(10) & (\U_VID|count\(9) & (!\U_VID|count\(11) & !\U_VID|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y39_N22
\U_LED2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\U_VID|count\(8) & (\U_VID|count\(10) $ ((!\U_VID|count\(9))))) # (!\U_VID|count\(8) & ((\U_VID|count\(10) & (!\U_VID|count\(9) & !\U_VID|count\(11))) # (!\U_VID|count\(10) & (\U_VID|count\(9) & \U_VID|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y39_N12
\U_LED2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\U_VID|count\(9) & (((!\U_VID|count\(11) & \U_VID|count\(8))))) # (!\U_VID|count\(9) & ((\U_VID|count\(10) & (!\U_VID|count\(11))) # (!\U_VID|count\(10) & ((\U_VID|count\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y39_N10
\U_LED2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\U_VID|count\(10) & (\U_VID|count\(8) & (\U_VID|count\(9) $ (\U_VID|count\(11))))) # (!\U_VID|count\(10) & (!\U_VID|count\(11) & ((\U_VID|count\(9)) # (\U_VID|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y39_N24
\U_LED2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\U_VID|count\(8) & ((\U_VID|count\(11)) # (\U_VID|count\(10) $ (\U_VID|count\(9))))) # (!\U_VID|count\(8) & ((\U_VID|count\(9)) # (\U_VID|count\(10) $ (\U_VID|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(10),
	datab => \U_VID|count\(9),
	datac => \U_VID|count\(11),
	datad => \U_VID|count\(8),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y34_N0
\U_VID|count[12]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[12]~46_combout\ = (\U_VID|count\(12) & (!\U_VID|count[11]~45\)) # (!\U_VID|count\(12) & ((\U_VID|count[11]~45\) # (GND)))
-- \U_VID|count[12]~47\ = CARRY((!\U_VID|count[11]~45\) # (!\U_VID|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(12),
	datad => VCC,
	cin => \U_VID|count[11]~45\,
	combout => \U_VID|count[12]~46_combout\,
	cout => \U_VID|count[12]~47\);

-- Location: FF_X39_Y34_N1
\U_VID|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[12]~46_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(12));

-- Location: LCCOMB_X39_Y34_N2
\U_VID|count[13]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[13]~48_combout\ = (\U_VID|count\(13) & (\U_VID|count[12]~47\ $ (GND))) # (!\U_VID|count\(13) & (!\U_VID|count[12]~47\ & VCC))
-- \U_VID|count[13]~49\ = CARRY((\U_VID|count\(13) & !\U_VID|count[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(13),
	datad => VCC,
	cin => \U_VID|count[12]~47\,
	combout => \U_VID|count[13]~48_combout\,
	cout => \U_VID|count[13]~49\);

-- Location: FF_X39_Y34_N3
\U_VID|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[13]~48_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(13));

-- Location: LCCOMB_X39_Y34_N4
\U_VID|count[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[14]~50_combout\ = (\U_VID|count\(14) & (!\U_VID|count[13]~49\)) # (!\U_VID|count\(14) & ((\U_VID|count[13]~49\) # (GND)))
-- \U_VID|count[14]~51\ = CARRY((!\U_VID|count[13]~49\) # (!\U_VID|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(14),
	datad => VCC,
	cin => \U_VID|count[13]~49\,
	combout => \U_VID|count[14]~50_combout\,
	cout => \U_VID|count[14]~51\);

-- Location: FF_X39_Y34_N5
\U_VID|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[14]~50_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(14));

-- Location: LCCOMB_X39_Y34_N6
\U_VID|count[15]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[15]~52_combout\ = (\U_VID|count\(15) & (\U_VID|count[14]~51\ $ (GND))) # (!\U_VID|count\(15) & (!\U_VID|count[14]~51\ & VCC))
-- \U_VID|count[15]~53\ = CARRY((\U_VID|count\(15) & !\U_VID|count[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datad => VCC,
	cin => \U_VID|count[14]~51\,
	combout => \U_VID|count[15]~52_combout\,
	cout => \U_VID|count[15]~53\);

-- Location: FF_X39_Y34_N7
\U_VID|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[15]~52_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(15));

-- Location: LCCOMB_X75_Y34_N0
\U_LED3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\U_VID|count\(15) & (\U_VID|count\(12) & (\U_VID|count\(14) $ (\U_VID|count\(13))))) # (!\U_VID|count\(15) & (!\U_VID|count\(13) & (\U_VID|count\(12) $ (\U_VID|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y34_N30
\U_LED3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\U_VID|count\(15) & ((\U_VID|count\(12) & ((\U_VID|count\(13)))) # (!\U_VID|count\(12) & (\U_VID|count\(14))))) # (!\U_VID|count\(15) & (\U_VID|count\(14) & (\U_VID|count\(12) $ (\U_VID|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y34_N4
\U_LED3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\U_VID|count\(15) & (\U_VID|count\(14) & ((\U_VID|count\(13)) # (!\U_VID|count\(12))))) # (!\U_VID|count\(15) & (!\U_VID|count\(12) & (!\U_VID|count\(14) & \U_VID|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y34_N26
\U_LED3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\U_VID|count\(12) & ((\U_VID|count\(14) $ (!\U_VID|count\(13))))) # (!\U_VID|count\(12) & ((\U_VID|count\(15) & (!\U_VID|count\(14) & \U_VID|count\(13))) # (!\U_VID|count\(15) & (\U_VID|count\(14) & !\U_VID|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y34_N24
\U_LED3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\U_VID|count\(13) & (!\U_VID|count\(15) & (\U_VID|count\(12)))) # (!\U_VID|count\(13) & ((\U_VID|count\(14) & (!\U_VID|count\(15))) # (!\U_VID|count\(14) & ((\U_VID|count\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y34_N22
\U_LED3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\U_VID|count\(12) & (\U_VID|count\(15) $ (((\U_VID|count\(13)) # (!\U_VID|count\(14)))))) # (!\U_VID|count\(12) & (!\U_VID|count\(15) & (!\U_VID|count\(14) & \U_VID|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y34_N12
\U_LED3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\U_VID|count\(12) & ((\U_VID|count\(15)) # (\U_VID|count\(14) $ (\U_VID|count\(13))))) # (!\U_VID|count\(12) & ((\U_VID|count\(13)) # (\U_VID|count\(15) $ (\U_VID|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(15),
	datab => \U_VID|count\(12),
	datac => \U_VID|count\(14),
	datad => \U_VID|count\(13),
	combout => \U_LED3|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y34_N8
\U_VID|count[16]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[16]~54_combout\ = (\U_VID|count\(16) & (!\U_VID|count[15]~53\)) # (!\U_VID|count\(16) & ((\U_VID|count[15]~53\) # (GND)))
-- \U_VID|count[16]~55\ = CARRY((!\U_VID|count[15]~53\) # (!\U_VID|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(16),
	datad => VCC,
	cin => \U_VID|count[15]~53\,
	combout => \U_VID|count[16]~54_combout\,
	cout => \U_VID|count[16]~55\);

-- Location: FF_X39_Y34_N9
\U_VID|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[16]~54_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(16));

-- Location: LCCOMB_X39_Y34_N10
\U_VID|count[17]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[17]~56_combout\ = (\U_VID|count\(17) & (\U_VID|count[16]~55\ $ (GND))) # (!\U_VID|count\(17) & (!\U_VID|count[16]~55\ & VCC))
-- \U_VID|count[17]~57\ = CARRY((\U_VID|count\(17) & !\U_VID|count[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(17),
	datad => VCC,
	cin => \U_VID|count[16]~55\,
	combout => \U_VID|count[17]~56_combout\,
	cout => \U_VID|count[17]~57\);

-- Location: FF_X39_Y34_N11
\U_VID|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[17]~56_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(17));

-- Location: LCCOMB_X39_Y34_N12
\U_VID|count[18]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[18]~58_combout\ = (\U_VID|count\(18) & (!\U_VID|count[17]~57\)) # (!\U_VID|count\(18) & ((\U_VID|count[17]~57\) # (GND)))
-- \U_VID|count[18]~59\ = CARRY((!\U_VID|count[17]~57\) # (!\U_VID|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(18),
	datad => VCC,
	cin => \U_VID|count[17]~57\,
	combout => \U_VID|count[18]~58_combout\,
	cout => \U_VID|count[18]~59\);

-- Location: FF_X39_Y34_N13
\U_VID|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[18]~58_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(18));

-- Location: LCCOMB_X39_Y34_N14
\U_VID|count[19]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[19]~60_combout\ = (\U_VID|count\(19) & (\U_VID|count[18]~59\ $ (GND))) # (!\U_VID|count\(19) & (!\U_VID|count[18]~59\ & VCC))
-- \U_VID|count[19]~61\ = CARRY((\U_VID|count\(19) & !\U_VID|count[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(19),
	datad => VCC,
	cin => \U_VID|count[18]~59\,
	combout => \U_VID|count[19]~60_combout\,
	cout => \U_VID|count[19]~61\);

-- Location: FF_X39_Y34_N15
\U_VID|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[19]~60_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(19));

-- Location: LCCOMB_X77_Y40_N16
\U_LED4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux6~0_combout\ = (\U_VID|count\(19) & (\U_VID|count\(16) & (\U_VID|count\(17) $ (\U_VID|count\(18))))) # (!\U_VID|count\(19) & (!\U_VID|count\(17) & (\U_VID|count\(16) $ (\U_VID|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\U_LED4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux5~0_combout\ = (\U_VID|count\(17) & ((\U_VID|count\(16) & (\U_VID|count\(19))) # (!\U_VID|count\(16) & ((\U_VID|count\(18)))))) # (!\U_VID|count\(17) & (\U_VID|count\(18) & (\U_VID|count\(16) $ (\U_VID|count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\U_LED4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux4~0_combout\ = (\U_VID|count\(19) & (\U_VID|count\(18) & ((\U_VID|count\(17)) # (!\U_VID|count\(16))))) # (!\U_VID|count\(19) & (!\U_VID|count\(16) & (\U_VID|count\(17) & !\U_VID|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\U_LED4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux3~0_combout\ = (\U_VID|count\(16) & (\U_VID|count\(17) $ (((!\U_VID|count\(18)))))) # (!\U_VID|count\(16) & ((\U_VID|count\(17) & (\U_VID|count\(19) & !\U_VID|count\(18))) # (!\U_VID|count\(17) & (!\U_VID|count\(19) & \U_VID|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N12
\U_LED4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\U_VID|count\(17) & (\U_VID|count\(16) & (!\U_VID|count\(19)))) # (!\U_VID|count\(17) & ((\U_VID|count\(18) & ((!\U_VID|count\(19)))) # (!\U_VID|count\(18) & (\U_VID|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\U_LED4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\U_VID|count\(16) & (\U_VID|count\(19) $ (((\U_VID|count\(17)) # (!\U_VID|count\(18)))))) # (!\U_VID|count\(16) & (\U_VID|count\(17) & (!\U_VID|count\(19) & !\U_VID|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\U_LED4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\U_VID|count\(16) & ((\U_VID|count\(19)) # (\U_VID|count\(17) $ (\U_VID|count\(18))))) # (!\U_VID|count\(16) & ((\U_VID|count\(17)) # (\U_VID|count\(19) $ (\U_VID|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(16),
	datab => \U_VID|count\(17),
	datac => \U_VID|count\(19),
	datad => \U_VID|count\(18),
	combout => \U_LED4|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y34_N16
\U_VID|count[20]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[20]~62_combout\ = (\U_VID|count\(20) & (!\U_VID|count[19]~61\)) # (!\U_VID|count\(20) & ((\U_VID|count[19]~61\) # (GND)))
-- \U_VID|count[20]~63\ = CARRY((!\U_VID|count[19]~61\) # (!\U_VID|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(20),
	datad => VCC,
	cin => \U_VID|count[19]~61\,
	combout => \U_VID|count[20]~62_combout\,
	cout => \U_VID|count[20]~63\);

-- Location: FF_X39_Y34_N17
\U_VID|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[20]~62_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(20));

-- Location: LCCOMB_X39_Y34_N18
\U_VID|count[21]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[21]~64_combout\ = (\U_VID|count\(21) & (\U_VID|count[20]~63\ $ (GND))) # (!\U_VID|count\(21) & (!\U_VID|count[20]~63\ & VCC))
-- \U_VID|count[21]~65\ = CARRY((\U_VID|count\(21) & !\U_VID|count[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(21),
	datad => VCC,
	cin => \U_VID|count[20]~63\,
	combout => \U_VID|count[21]~64_combout\,
	cout => \U_VID|count[21]~65\);

-- Location: FF_X39_Y34_N19
\U_VID|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[21]~64_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(21));

-- Location: LCCOMB_X39_Y34_N20
\U_VID|count[22]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[22]~66_combout\ = (\U_VID|count\(22) & (!\U_VID|count[21]~65\)) # (!\U_VID|count\(22) & ((\U_VID|count[21]~65\) # (GND)))
-- \U_VID|count[22]~67\ = CARRY((!\U_VID|count[21]~65\) # (!\U_VID|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|count\(22),
	datad => VCC,
	cin => \U_VID|count[21]~65\,
	combout => \U_VID|count[22]~66_combout\,
	cout => \U_VID|count[22]~67\);

-- Location: FF_X39_Y34_N21
\U_VID|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[22]~66_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(22));

-- Location: LCCOMB_X39_Y34_N22
\U_VID|count[23]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|count[23]~68_combout\ = \U_VID|count\(23) $ (!\U_VID|count[22]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(23),
	cin => \U_VID|count[22]~67\,
	combout => \U_VID|count[23]~68_combout\);

-- Location: FF_X39_Y34_N23
\U_VID|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \U_VID|count[23]~68_combout\,
	clrn => \rst~input_o\,
	ena => \vsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|count\(23));

-- Location: LCCOMB_X77_Y34_N16
\U_LED5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux6~0_combout\ = (\U_VID|count\(23) & (\U_VID|count\(20) & (\U_VID|count\(21) $ (\U_VID|count\(22))))) # (!\U_VID|count\(23) & (!\U_VID|count\(21) & (\U_VID|count\(20) $ (\U_VID|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y34_N2
\U_LED5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux5~0_combout\ = (\U_VID|count\(21) & ((\U_VID|count\(20) & (\U_VID|count\(23))) # (!\U_VID|count\(20) & ((\U_VID|count\(22)))))) # (!\U_VID|count\(21) & (\U_VID|count\(22) & (\U_VID|count\(23) $ (\U_VID|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y34_N4
\U_LED5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux4~0_combout\ = (\U_VID|count\(23) & (\U_VID|count\(22) & ((\U_VID|count\(21)) # (!\U_VID|count\(20))))) # (!\U_VID|count\(23) & (\U_VID|count\(21) & (!\U_VID|count\(20) & !\U_VID|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y34_N14
\U_LED5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux3~0_combout\ = (\U_VID|count\(20) & (\U_VID|count\(21) $ (((!\U_VID|count\(22)))))) # (!\U_VID|count\(20) & ((\U_VID|count\(21) & (\U_VID|count\(23) & !\U_VID|count\(22))) # (!\U_VID|count\(21) & (!\U_VID|count\(23) & \U_VID|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y34_N12
\U_LED5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux2~0_combout\ = (\U_VID|count\(21) & (!\U_VID|count\(23) & (\U_VID|count\(20)))) # (!\U_VID|count\(21) & ((\U_VID|count\(22) & (!\U_VID|count\(23))) # (!\U_VID|count\(22) & ((\U_VID|count\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y34_N10
\U_LED5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux1~0_combout\ = (\U_VID|count\(21) & (!\U_VID|count\(23) & ((\U_VID|count\(20)) # (!\U_VID|count\(22))))) # (!\U_VID|count\(21) & (\U_VID|count\(20) & (\U_VID|count\(23) $ (!\U_VID|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y34_N20
\U_LED5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux0~0_combout\ = (\U_VID|count\(20) & ((\U_VID|count\(23)) # (\U_VID|count\(21) $ (\U_VID|count\(22))))) # (!\U_VID|count\(20) & ((\U_VID|count\(21)) # (\U_VID|count\(23) $ (\U_VID|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|count\(21),
	datab => \U_VID|count\(23),
	datac => \U_VID|count\(20),
	datad => \U_VID|count\(22),
	combout => \U_LED5|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;
END structure;


