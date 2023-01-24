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

-- DATE "11/28/2022 16:39:34"

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
	sclk : IN std_logic;
	vsync : IN std_logic;
	hsync : IN std_logic;
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic;
	led4 : OUT std_logic_vector(6 DOWNTO 0);
	led4_dp : OUT std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	led5_dp : OUT std_logic
	);
END toplevel;

-- Design Ports Information
-- sclk	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- vsync	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sclk : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_hsync : std_logic;
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
SIGNAL \sclk~input_o\ : std_logic;
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
SIGNAL \vsync~input_o\ : std_logic;
SIGNAL \U_VID|vcount[0]~33_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_VID|vcount[1]~11_combout\ : std_logic;
SIGNAL \U_VID|vcount[1]~12\ : std_logic;
SIGNAL \U_VID|vcount[2]~13_combout\ : std_logic;
SIGNAL \U_VID|vcount[2]~14\ : std_logic;
SIGNAL \U_VID|vcount[3]~15_combout\ : std_logic;
SIGNAL \U_VID|vcount[3]~16\ : std_logic;
SIGNAL \U_VID|vcount[4]~17_combout\ : std_logic;
SIGNAL \U_VID|vcount[4]~18\ : std_logic;
SIGNAL \U_VID|vcount[5]~19_combout\ : std_logic;
SIGNAL \U_VID|vcount[5]~20\ : std_logic;
SIGNAL \U_VID|vcount[6]~21_combout\ : std_logic;
SIGNAL \U_VID|vcount[6]~22\ : std_logic;
SIGNAL \U_VID|vcount[7]~23_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|vcount[7]~24\ : std_logic;
SIGNAL \U_VID|vcount[8]~25_combout\ : std_logic;
SIGNAL \U_VID|vcount[8]~26\ : std_logic;
SIGNAL \U_VID|vcount[9]~27_combout\ : std_logic;
SIGNAL \U_VID|vcount[9]~28\ : std_logic;
SIGNAL \U_VID|vcount[10]~29_combout\ : std_logic;
SIGNAL \U_VID|vcount[10]~30\ : std_logic;
SIGNAL \U_VID|vcount[11]~31_combout\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \hsync~input_o\ : std_logic;
SIGNAL \U_VID|hcount[0]~57_combout\ : std_logic;
SIGNAL \U_VID|hcount[1]~19_combout\ : std_logic;
SIGNAL \U_VID|hcount[1]~20\ : std_logic;
SIGNAL \U_VID|hcount[2]~21_combout\ : std_logic;
SIGNAL \U_VID|hcount[2]~22\ : std_logic;
SIGNAL \U_VID|hcount[3]~23_combout\ : std_logic;
SIGNAL \U_VID|hcount[3]~24\ : std_logic;
SIGNAL \U_VID|hcount[4]~25_combout\ : std_logic;
SIGNAL \U_VID|hcount[4]~26\ : std_logic;
SIGNAL \U_VID|hcount[5]~27_combout\ : std_logic;
SIGNAL \U_VID|hcount[5]~28\ : std_logic;
SIGNAL \U_VID|hcount[6]~29_combout\ : std_logic;
SIGNAL \U_VID|hcount[6]~30\ : std_logic;
SIGNAL \U_VID|hcount[7]~31_combout\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|hcount[7]~32\ : std_logic;
SIGNAL \U_VID|hcount[8]~33_combout\ : std_logic;
SIGNAL \U_VID|hcount[8]~34\ : std_logic;
SIGNAL \U_VID|hcount[9]~35_combout\ : std_logic;
SIGNAL \U_VID|hcount[9]~36\ : std_logic;
SIGNAL \U_VID|hcount[10]~37_combout\ : std_logic;
SIGNAL \U_VID|hcount[10]~38\ : std_logic;
SIGNAL \U_VID|hcount[11]~39_combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|hcount[11]~40\ : std_logic;
SIGNAL \U_VID|hcount[12]~41_combout\ : std_logic;
SIGNAL \U_VID|hcount[12]~42\ : std_logic;
SIGNAL \U_VID|hcount[13]~43_combout\ : std_logic;
SIGNAL \U_VID|hcount[13]~44\ : std_logic;
SIGNAL \U_VID|hcount[14]~45_combout\ : std_logic;
SIGNAL \U_VID|hcount[14]~46\ : std_logic;
SIGNAL \U_VID|hcount[15]~47_combout\ : std_logic;
SIGNAL \U_LED4|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|hcount[15]~48\ : std_logic;
SIGNAL \U_VID|hcount[16]~49_combout\ : std_logic;
SIGNAL \U_VID|hcount[16]~50\ : std_logic;
SIGNAL \U_VID|hcount[17]~51_combout\ : std_logic;
SIGNAL \U_VID|hcount[17]~52\ : std_logic;
SIGNAL \U_VID|hcount[18]~53_combout\ : std_logic;
SIGNAL \U_VID|hcount[18]~54\ : std_logic;
SIGNAL \U_VID|hcount[19]~55_combout\ : std_logic;
SIGNAL \U_LED5|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \U_VID|vcount\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \U_VID|hcount\ : std_logic_vector(47 DOWNTO 0);
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
ww_sclk <= sclk;
ww_vsync <= vsync;
ww_hsync <= hsync;
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

-- Location: LCCOMB_X44_Y47_N20
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X45_Y8_N28
\U_VID|vcount[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[0]~33_combout\ = !\U_VID|vcount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VID|vcount\(0),
	combout => \U_VID|vcount[0]~33_combout\);

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

-- Location: FF_X45_Y8_N29
\U_VID|vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[0]~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(0));

-- Location: LCCOMB_X45_Y8_N6
\U_VID|vcount[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[1]~11_combout\ = (\U_VID|vcount\(1) & (\U_VID|vcount\(0) $ (VCC))) # (!\U_VID|vcount\(1) & (\U_VID|vcount\(0) & VCC))
-- \U_VID|vcount[1]~12\ = CARRY((\U_VID|vcount\(1) & \U_VID|vcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(1),
	datab => \U_VID|vcount\(0),
	datad => VCC,
	combout => \U_VID|vcount[1]~11_combout\,
	cout => \U_VID|vcount[1]~12\);

-- Location: FF_X45_Y8_N7
\U_VID|vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[1]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(1));

-- Location: LCCOMB_X45_Y8_N8
\U_VID|vcount[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[2]~13_combout\ = (\U_VID|vcount\(2) & (!\U_VID|vcount[1]~12\)) # (!\U_VID|vcount\(2) & ((\U_VID|vcount[1]~12\) # (GND)))
-- \U_VID|vcount[2]~14\ = CARRY((!\U_VID|vcount[1]~12\) # (!\U_VID|vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(2),
	datad => VCC,
	cin => \U_VID|vcount[1]~12\,
	combout => \U_VID|vcount[2]~13_combout\,
	cout => \U_VID|vcount[2]~14\);

-- Location: FF_X45_Y8_N9
\U_VID|vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[2]~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(2));

-- Location: LCCOMB_X45_Y8_N10
\U_VID|vcount[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[3]~15_combout\ = (\U_VID|vcount\(3) & (\U_VID|vcount[2]~14\ $ (GND))) # (!\U_VID|vcount\(3) & (!\U_VID|vcount[2]~14\ & VCC))
-- \U_VID|vcount[3]~16\ = CARRY((\U_VID|vcount\(3) & !\U_VID|vcount[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(3),
	datad => VCC,
	cin => \U_VID|vcount[2]~14\,
	combout => \U_VID|vcount[3]~15_combout\,
	cout => \U_VID|vcount[3]~16\);

-- Location: FF_X45_Y8_N11
\U_VID|vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[3]~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(3));

-- Location: LCCOMB_X45_Y8_N12
\U_VID|vcount[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[4]~17_combout\ = (\U_VID|vcount\(4) & (!\U_VID|vcount[3]~16\)) # (!\U_VID|vcount\(4) & ((\U_VID|vcount[3]~16\) # (GND)))
-- \U_VID|vcount[4]~18\ = CARRY((!\U_VID|vcount[3]~16\) # (!\U_VID|vcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datad => VCC,
	cin => \U_VID|vcount[3]~16\,
	combout => \U_VID|vcount[4]~17_combout\,
	cout => \U_VID|vcount[4]~18\);

-- Location: FF_X45_Y8_N13
\U_VID|vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[4]~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(4));

-- Location: LCCOMB_X45_Y8_N14
\U_VID|vcount[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[5]~19_combout\ = (\U_VID|vcount\(5) & (\U_VID|vcount[4]~18\ $ (GND))) # (!\U_VID|vcount\(5) & (!\U_VID|vcount[4]~18\ & VCC))
-- \U_VID|vcount[5]~20\ = CARRY((\U_VID|vcount\(5) & !\U_VID|vcount[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(5),
	datad => VCC,
	cin => \U_VID|vcount[4]~18\,
	combout => \U_VID|vcount[5]~19_combout\,
	cout => \U_VID|vcount[5]~20\);

-- Location: FF_X45_Y8_N15
\U_VID|vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[5]~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(5));

-- Location: LCCOMB_X45_Y8_N16
\U_VID|vcount[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[6]~21_combout\ = (\U_VID|vcount\(6) & (!\U_VID|vcount[5]~20\)) # (!\U_VID|vcount\(6) & ((\U_VID|vcount[5]~20\) # (GND)))
-- \U_VID|vcount[6]~22\ = CARRY((!\U_VID|vcount[5]~20\) # (!\U_VID|vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(6),
	datad => VCC,
	cin => \U_VID|vcount[5]~20\,
	combout => \U_VID|vcount[6]~21_combout\,
	cout => \U_VID|vcount[6]~22\);

-- Location: FF_X45_Y8_N17
\U_VID|vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[6]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(6));

-- Location: LCCOMB_X45_Y8_N18
\U_VID|vcount[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[7]~23_combout\ = (\U_VID|vcount\(7) & (\U_VID|vcount[6]~22\ $ (GND))) # (!\U_VID|vcount\(7) & (!\U_VID|vcount[6]~22\ & VCC))
-- \U_VID|vcount[7]~24\ = CARRY((\U_VID|vcount\(7) & !\U_VID|vcount[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(7),
	datad => VCC,
	cin => \U_VID|vcount[6]~22\,
	combout => \U_VID|vcount[7]~23_combout\,
	cout => \U_VID|vcount[7]~24\);

-- Location: FF_X45_Y8_N19
\U_VID|vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[7]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(7));

-- Location: LCCOMB_X63_Y50_N28
\U_LED0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_VID|vcount\(6) & (!\U_VID|vcount\(5) & (\U_VID|vcount\(4) $ (!\U_VID|vcount\(7))))) # (!\U_VID|vcount\(6) & (\U_VID|vcount\(4) & (\U_VID|vcount\(5) $ (!\U_VID|vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y50_N26
\U_LED0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_VID|vcount\(5) & ((\U_VID|vcount\(4) & ((\U_VID|vcount\(7)))) # (!\U_VID|vcount\(4) & (\U_VID|vcount\(6))))) # (!\U_VID|vcount\(5) & (\U_VID|vcount\(6) & (\U_VID|vcount\(4) $ (\U_VID|vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\U_LED0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_VID|vcount\(6) & (\U_VID|vcount\(7) & ((\U_VID|vcount\(5)) # (!\U_VID|vcount\(4))))) # (!\U_VID|vcount\(6) & (!\U_VID|vcount\(4) & (\U_VID|vcount\(5) & !\U_VID|vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y50_N6
\U_LED0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_VID|vcount\(4) & (\U_VID|vcount\(5) $ ((!\U_VID|vcount\(6))))) # (!\U_VID|vcount\(4) & ((\U_VID|vcount\(5) & (!\U_VID|vcount\(6) & \U_VID|vcount\(7))) # (!\U_VID|vcount\(5) & (\U_VID|vcount\(6) & !\U_VID|vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y50_N12
\U_LED0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_VID|vcount\(5) & (\U_VID|vcount\(4) & ((!\U_VID|vcount\(7))))) # (!\U_VID|vcount\(5) & ((\U_VID|vcount\(6) & ((!\U_VID|vcount\(7)))) # (!\U_VID|vcount\(6) & (\U_VID|vcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y50_N22
\U_LED0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_VID|vcount\(4) & (\U_VID|vcount\(7) $ (((\U_VID|vcount\(5)) # (!\U_VID|vcount\(6)))))) # (!\U_VID|vcount\(4) & (\U_VID|vcount\(5) & (!\U_VID|vcount\(6) & !\U_VID|vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y50_N24
\U_LED0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_VID|vcount\(4) & ((\U_VID|vcount\(7)) # (\U_VID|vcount\(5) $ (\U_VID|vcount\(6))))) # (!\U_VID|vcount\(4) & ((\U_VID|vcount\(5)) # (\U_VID|vcount\(6) $ (\U_VID|vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(4),
	datab => \U_VID|vcount\(5),
	datac => \U_VID|vcount\(6),
	datad => \U_VID|vcount\(7),
	combout => \U_LED0|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y8_N20
\U_VID|vcount[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[8]~25_combout\ = (\U_VID|vcount\(8) & (!\U_VID|vcount[7]~24\)) # (!\U_VID|vcount\(8) & ((\U_VID|vcount[7]~24\) # (GND)))
-- \U_VID|vcount[8]~26\ = CARRY((!\U_VID|vcount[7]~24\) # (!\U_VID|vcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(8),
	datad => VCC,
	cin => \U_VID|vcount[7]~24\,
	combout => \U_VID|vcount[8]~25_combout\,
	cout => \U_VID|vcount[8]~26\);

-- Location: FF_X45_Y8_N21
\U_VID|vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[8]~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(8));

-- Location: LCCOMB_X45_Y8_N22
\U_VID|vcount[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[9]~27_combout\ = (\U_VID|vcount\(9) & (\U_VID|vcount[8]~26\ $ (GND))) # (!\U_VID|vcount\(9) & (!\U_VID|vcount[8]~26\ & VCC))
-- \U_VID|vcount[9]~28\ = CARRY((\U_VID|vcount\(9) & !\U_VID|vcount[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datad => VCC,
	cin => \U_VID|vcount[8]~26\,
	combout => \U_VID|vcount[9]~27_combout\,
	cout => \U_VID|vcount[9]~28\);

-- Location: FF_X45_Y8_N23
\U_VID|vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[9]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(9));

-- Location: LCCOMB_X45_Y8_N24
\U_VID|vcount[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[10]~29_combout\ = (\U_VID|vcount\(10) & (!\U_VID|vcount[9]~28\)) # (!\U_VID|vcount\(10) & ((\U_VID|vcount[9]~28\) # (GND)))
-- \U_VID|vcount[10]~30\ = CARRY((!\U_VID|vcount[9]~28\) # (!\U_VID|vcount\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|vcount\(10),
	datad => VCC,
	cin => \U_VID|vcount[9]~28\,
	combout => \U_VID|vcount[10]~29_combout\,
	cout => \U_VID|vcount[10]~30\);

-- Location: FF_X45_Y8_N25
\U_VID|vcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[10]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(10));

-- Location: LCCOMB_X45_Y8_N26
\U_VID|vcount[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|vcount[11]~31_combout\ = \U_VID|vcount\(11) $ (!\U_VID|vcount[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(11),
	cin => \U_VID|vcount[10]~30\,
	combout => \U_VID|vcount[11]~31_combout\);

-- Location: FF_X45_Y8_N27
\U_VID|vcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vsync~input_o\,
	d => \U_VID|vcount[11]~31_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|vcount\(11));

-- Location: LCCOMB_X65_Y50_N0
\U_LED1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = (\U_VID|vcount\(10) & (!\U_VID|vcount\(9) & (\U_VID|vcount\(11) $ (!\U_VID|vcount\(8))))) # (!\U_VID|vcount\(10) & (\U_VID|vcount\(8) & (\U_VID|vcount\(9) $ (!\U_VID|vcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y50_N30
\U_LED1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_VID|vcount\(9) & ((\U_VID|vcount\(8) & ((\U_VID|vcount\(11)))) # (!\U_VID|vcount\(8) & (\U_VID|vcount\(10))))) # (!\U_VID|vcount\(9) & (\U_VID|vcount\(10) & (\U_VID|vcount\(11) $ (\U_VID|vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\U_LED1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_VID|vcount\(10) & (\U_VID|vcount\(11) & ((\U_VID|vcount\(9)) # (!\U_VID|vcount\(8))))) # (!\U_VID|vcount\(10) & (\U_VID|vcount\(9) & (!\U_VID|vcount\(11) & !\U_VID|vcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y50_N10
\U_LED1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux3~0_combout\ = (\U_VID|vcount\(8) & (\U_VID|vcount\(9) $ ((!\U_VID|vcount\(10))))) # (!\U_VID|vcount\(8) & ((\U_VID|vcount\(9) & (!\U_VID|vcount\(10) & \U_VID|vcount\(11))) # (!\U_VID|vcount\(9) & (\U_VID|vcount\(10) & !\U_VID|vcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\U_LED1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux2~0_combout\ = (\U_VID|vcount\(9) & (((!\U_VID|vcount\(11) & \U_VID|vcount\(8))))) # (!\U_VID|vcount\(9) & ((\U_VID|vcount\(10) & (!\U_VID|vcount\(11))) # (!\U_VID|vcount\(10) & ((\U_VID|vcount\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\U_LED1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux1~0_combout\ = (\U_VID|vcount\(9) & (!\U_VID|vcount\(11) & ((\U_VID|vcount\(8)) # (!\U_VID|vcount\(10))))) # (!\U_VID|vcount\(9) & (\U_VID|vcount\(8) & (\U_VID|vcount\(10) $ (!\U_VID|vcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\U_LED1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|Mux0~0_combout\ = (\U_VID|vcount\(8) & ((\U_VID|vcount\(11)) # (\U_VID|vcount\(9) $ (\U_VID|vcount\(10))))) # (!\U_VID|vcount\(8) & ((\U_VID|vcount\(9)) # (\U_VID|vcount\(10) $ (\U_VID|vcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|vcount\(9),
	datab => \U_VID|vcount\(10),
	datac => \U_VID|vcount\(11),
	datad => \U_VID|vcount\(8),
	combout => \U_LED1|Mux0~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\hsync~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hsync,
	o => \hsync~input_o\);

-- Location: LCCOMB_X41_Y15_N12
\U_VID|hcount[0]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[0]~57_combout\ = !\U_VID|hcount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VID|hcount\(0),
	combout => \U_VID|hcount[0]~57_combout\);

-- Location: FF_X41_Y15_N13
\U_VID|hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[0]~57_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(0));

-- Location: LCCOMB_X41_Y15_N14
\U_VID|hcount[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[1]~19_combout\ = (\U_VID|hcount\(0) & (\U_VID|hcount\(1) $ (VCC))) # (!\U_VID|hcount\(0) & (\U_VID|hcount\(1) & VCC))
-- \U_VID|hcount[1]~20\ = CARRY((\U_VID|hcount\(0) & \U_VID|hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(0),
	datab => \U_VID|hcount\(1),
	datad => VCC,
	combout => \U_VID|hcount[1]~19_combout\,
	cout => \U_VID|hcount[1]~20\);

-- Location: FF_X41_Y15_N15
\U_VID|hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[1]~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(1));

-- Location: LCCOMB_X41_Y15_N16
\U_VID|hcount[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[2]~21_combout\ = (\U_VID|hcount\(2) & (!\U_VID|hcount[1]~20\)) # (!\U_VID|hcount\(2) & ((\U_VID|hcount[1]~20\) # (GND)))
-- \U_VID|hcount[2]~22\ = CARRY((!\U_VID|hcount[1]~20\) # (!\U_VID|hcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(2),
	datad => VCC,
	cin => \U_VID|hcount[1]~20\,
	combout => \U_VID|hcount[2]~21_combout\,
	cout => \U_VID|hcount[2]~22\);

-- Location: FF_X41_Y15_N17
\U_VID|hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[2]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(2));

-- Location: LCCOMB_X41_Y15_N18
\U_VID|hcount[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[3]~23_combout\ = (\U_VID|hcount\(3) & (\U_VID|hcount[2]~22\ $ (GND))) # (!\U_VID|hcount\(3) & (!\U_VID|hcount[2]~22\ & VCC))
-- \U_VID|hcount[3]~24\ = CARRY((\U_VID|hcount\(3) & !\U_VID|hcount[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(3),
	datad => VCC,
	cin => \U_VID|hcount[2]~22\,
	combout => \U_VID|hcount[3]~23_combout\,
	cout => \U_VID|hcount[3]~24\);

-- Location: FF_X41_Y15_N19
\U_VID|hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[3]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(3));

-- Location: LCCOMB_X41_Y15_N20
\U_VID|hcount[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[4]~25_combout\ = (\U_VID|hcount\(4) & (!\U_VID|hcount[3]~24\)) # (!\U_VID|hcount\(4) & ((\U_VID|hcount[3]~24\) # (GND)))
-- \U_VID|hcount[4]~26\ = CARRY((!\U_VID|hcount[3]~24\) # (!\U_VID|hcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(4),
	datad => VCC,
	cin => \U_VID|hcount[3]~24\,
	combout => \U_VID|hcount[4]~25_combout\,
	cout => \U_VID|hcount[4]~26\);

-- Location: FF_X41_Y15_N21
\U_VID|hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[4]~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(4));

-- Location: LCCOMB_X41_Y15_N22
\U_VID|hcount[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[5]~27_combout\ = (\U_VID|hcount\(5) & (\U_VID|hcount[4]~26\ $ (GND))) # (!\U_VID|hcount\(5) & (!\U_VID|hcount[4]~26\ & VCC))
-- \U_VID|hcount[5]~28\ = CARRY((\U_VID|hcount\(5) & !\U_VID|hcount[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(5),
	datad => VCC,
	cin => \U_VID|hcount[4]~26\,
	combout => \U_VID|hcount[5]~27_combout\,
	cout => \U_VID|hcount[5]~28\);

-- Location: FF_X41_Y15_N23
\U_VID|hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[5]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(5));

-- Location: LCCOMB_X41_Y15_N24
\U_VID|hcount[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[6]~29_combout\ = (\U_VID|hcount\(6) & (!\U_VID|hcount[5]~28\)) # (!\U_VID|hcount\(6) & ((\U_VID|hcount[5]~28\) # (GND)))
-- \U_VID|hcount[6]~30\ = CARRY((!\U_VID|hcount[5]~28\) # (!\U_VID|hcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(6),
	datad => VCC,
	cin => \U_VID|hcount[5]~28\,
	combout => \U_VID|hcount[6]~29_combout\,
	cout => \U_VID|hcount[6]~30\);

-- Location: FF_X41_Y15_N25
\U_VID|hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[6]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(6));

-- Location: LCCOMB_X41_Y15_N26
\U_VID|hcount[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[7]~31_combout\ = (\U_VID|hcount\(7) & (\U_VID|hcount[6]~30\ $ (GND))) # (!\U_VID|hcount\(7) & (!\U_VID|hcount[6]~30\ & VCC))
-- \U_VID|hcount[7]~32\ = CARRY((\U_VID|hcount\(7) & !\U_VID|hcount[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(7),
	datad => VCC,
	cin => \U_VID|hcount[6]~30\,
	combout => \U_VID|hcount[7]~31_combout\,
	cout => \U_VID|hcount[7]~32\);

-- Location: FF_X41_Y15_N27
\U_VID|hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[7]~31_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(7));

-- Location: LCCOMB_X42_Y15_N28
\U_LED2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\U_VID|hcount\(7) & (\U_VID|hcount\(4) & (\U_VID|hcount\(5) $ (\U_VID|hcount\(6))))) # (!\U_VID|hcount\(7) & (!\U_VID|hcount\(5) & (\U_VID|hcount\(4) $ (\U_VID|hcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X42_Y15_N26
\U_LED2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\U_VID|hcount\(5) & ((\U_VID|hcount\(4) & (\U_VID|hcount\(7))) # (!\U_VID|hcount\(4) & ((\U_VID|hcount\(6)))))) # (!\U_VID|hcount\(5) & (\U_VID|hcount\(6) & (\U_VID|hcount\(4) $ (\U_VID|hcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y15_N8
\U_LED2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\U_VID|hcount\(7) & (\U_VID|hcount\(6) & ((\U_VID|hcount\(5)) # (!\U_VID|hcount\(4))))) # (!\U_VID|hcount\(7) & (!\U_VID|hcount\(4) & (\U_VID|hcount\(5) & !\U_VID|hcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y15_N14
\U_LED2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\U_VID|hcount\(4) & (\U_VID|hcount\(5) $ (((!\U_VID|hcount\(6)))))) # (!\U_VID|hcount\(4) & ((\U_VID|hcount\(5) & (\U_VID|hcount\(7) & !\U_VID|hcount\(6))) # (!\U_VID|hcount\(5) & (!\U_VID|hcount\(7) & \U_VID|hcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y15_N4
\U_LED2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\U_VID|hcount\(5) & (\U_VID|hcount\(4) & (!\U_VID|hcount\(7)))) # (!\U_VID|hcount\(5) & ((\U_VID|hcount\(6) & ((!\U_VID|hcount\(7)))) # (!\U_VID|hcount\(6) & (\U_VID|hcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y15_N10
\U_LED2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\U_VID|hcount\(4) & (\U_VID|hcount\(7) $ (((\U_VID|hcount\(5)) # (!\U_VID|hcount\(6)))))) # (!\U_VID|hcount\(4) & (\U_VID|hcount\(5) & (!\U_VID|hcount\(7) & !\U_VID|hcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y15_N0
\U_LED2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\U_VID|hcount\(4) & ((\U_VID|hcount\(7)) # (\U_VID|hcount\(5) $ (\U_VID|hcount\(6))))) # (!\U_VID|hcount\(4) & ((\U_VID|hcount\(5)) # (\U_VID|hcount\(7) $ (\U_VID|hcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(4),
	datab => \U_VID|hcount\(5),
	datac => \U_VID|hcount\(7),
	datad => \U_VID|hcount\(6),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y15_N28
\U_VID|hcount[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[8]~33_combout\ = (\U_VID|hcount\(8) & (!\U_VID|hcount[7]~32\)) # (!\U_VID|hcount\(8) & ((\U_VID|hcount[7]~32\) # (GND)))
-- \U_VID|hcount[8]~34\ = CARRY((!\U_VID|hcount[7]~32\) # (!\U_VID|hcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(8),
	datad => VCC,
	cin => \U_VID|hcount[7]~32\,
	combout => \U_VID|hcount[8]~33_combout\,
	cout => \U_VID|hcount[8]~34\);

-- Location: FF_X41_Y15_N29
\U_VID|hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[8]~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(8));

-- Location: LCCOMB_X41_Y15_N30
\U_VID|hcount[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[9]~35_combout\ = (\U_VID|hcount\(9) & (\U_VID|hcount[8]~34\ $ (GND))) # (!\U_VID|hcount\(9) & (!\U_VID|hcount[8]~34\ & VCC))
-- \U_VID|hcount[9]~36\ = CARRY((\U_VID|hcount\(9) & !\U_VID|hcount[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(9),
	datad => VCC,
	cin => \U_VID|hcount[8]~34\,
	combout => \U_VID|hcount[9]~35_combout\,
	cout => \U_VID|hcount[9]~36\);

-- Location: FF_X41_Y15_N31
\U_VID|hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[9]~35_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(9));

-- Location: LCCOMB_X41_Y14_N0
\U_VID|hcount[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[10]~37_combout\ = (\U_VID|hcount\(10) & (!\U_VID|hcount[9]~36\)) # (!\U_VID|hcount\(10) & ((\U_VID|hcount[9]~36\) # (GND)))
-- \U_VID|hcount[10]~38\ = CARRY((!\U_VID|hcount[9]~36\) # (!\U_VID|hcount\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(10),
	datad => VCC,
	cin => \U_VID|hcount[9]~36\,
	combout => \U_VID|hcount[10]~37_combout\,
	cout => \U_VID|hcount[10]~38\);

-- Location: FF_X41_Y14_N1
\U_VID|hcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[10]~37_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(10));

-- Location: LCCOMB_X41_Y14_N2
\U_VID|hcount[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[11]~39_combout\ = (\U_VID|hcount\(11) & (\U_VID|hcount[10]~38\ $ (GND))) # (!\U_VID|hcount\(11) & (!\U_VID|hcount[10]~38\ & VCC))
-- \U_VID|hcount[11]~40\ = CARRY((\U_VID|hcount\(11) & !\U_VID|hcount[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(11),
	datad => VCC,
	cin => \U_VID|hcount[10]~38\,
	combout => \U_VID|hcount[11]~39_combout\,
	cout => \U_VID|hcount[11]~40\);

-- Location: FF_X41_Y14_N3
\U_VID|hcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[11]~39_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(11));

-- Location: LCCOMB_X71_Y33_N4
\U_LED3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\U_VID|hcount\(10) & (!\U_VID|hcount\(9) & (\U_VID|hcount\(8) $ (!\U_VID|hcount\(11))))) # (!\U_VID|hcount\(10) & (\U_VID|hcount\(8) & (\U_VID|hcount\(9) $ (!\U_VID|hcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y33_N22
\U_LED3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\U_VID|hcount\(9) & ((\U_VID|hcount\(8) & ((\U_VID|hcount\(11)))) # (!\U_VID|hcount\(8) & (\U_VID|hcount\(10))))) # (!\U_VID|hcount\(9) & (\U_VID|hcount\(10) & (\U_VID|hcount\(8) $ (\U_VID|hcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y33_N28
\U_LED3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\U_VID|hcount\(10) & (\U_VID|hcount\(11) & ((\U_VID|hcount\(9)) # (!\U_VID|hcount\(8))))) # (!\U_VID|hcount\(10) & (!\U_VID|hcount\(8) & (\U_VID|hcount\(9) & !\U_VID|hcount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y33_N2
\U_LED3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\U_VID|hcount\(8) & (\U_VID|hcount\(9) $ ((!\U_VID|hcount\(10))))) # (!\U_VID|hcount\(8) & ((\U_VID|hcount\(9) & (!\U_VID|hcount\(10) & \U_VID|hcount\(11))) # (!\U_VID|hcount\(9) & (\U_VID|hcount\(10) & !\U_VID|hcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y33_N12
\U_LED3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\U_VID|hcount\(9) & (\U_VID|hcount\(8) & ((!\U_VID|hcount\(11))))) # (!\U_VID|hcount\(9) & ((\U_VID|hcount\(10) & ((!\U_VID|hcount\(11)))) # (!\U_VID|hcount\(10) & (\U_VID|hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y33_N6
\U_LED3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\U_VID|hcount\(8) & (\U_VID|hcount\(11) $ (((\U_VID|hcount\(9)) # (!\U_VID|hcount\(10)))))) # (!\U_VID|hcount\(8) & (\U_VID|hcount\(9) & (!\U_VID|hcount\(10) & !\U_VID|hcount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y33_N16
\U_LED3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\U_VID|hcount\(8) & ((\U_VID|hcount\(11)) # (\U_VID|hcount\(9) $ (\U_VID|hcount\(10))))) # (!\U_VID|hcount\(8) & ((\U_VID|hcount\(9)) # (\U_VID|hcount\(10) $ (\U_VID|hcount\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(8),
	datab => \U_VID|hcount\(9),
	datac => \U_VID|hcount\(10),
	datad => \U_VID|hcount\(11),
	combout => \U_LED3|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y14_N4
\U_VID|hcount[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[12]~41_combout\ = (\U_VID|hcount\(12) & (!\U_VID|hcount[11]~40\)) # (!\U_VID|hcount\(12) & ((\U_VID|hcount[11]~40\) # (GND)))
-- \U_VID|hcount[12]~42\ = CARRY((!\U_VID|hcount[11]~40\) # (!\U_VID|hcount\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(12),
	datad => VCC,
	cin => \U_VID|hcount[11]~40\,
	combout => \U_VID|hcount[12]~41_combout\,
	cout => \U_VID|hcount[12]~42\);

-- Location: FF_X41_Y14_N5
\U_VID|hcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[12]~41_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(12));

-- Location: LCCOMB_X41_Y14_N6
\U_VID|hcount[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[13]~43_combout\ = (\U_VID|hcount\(13) & (\U_VID|hcount[12]~42\ $ (GND))) # (!\U_VID|hcount\(13) & (!\U_VID|hcount[12]~42\ & VCC))
-- \U_VID|hcount[13]~44\ = CARRY((\U_VID|hcount\(13) & !\U_VID|hcount[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(13),
	datad => VCC,
	cin => \U_VID|hcount[12]~42\,
	combout => \U_VID|hcount[13]~43_combout\,
	cout => \U_VID|hcount[13]~44\);

-- Location: FF_X41_Y14_N7
\U_VID|hcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[13]~43_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(13));

-- Location: LCCOMB_X41_Y14_N8
\U_VID|hcount[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[14]~45_combout\ = (\U_VID|hcount\(14) & (!\U_VID|hcount[13]~44\)) # (!\U_VID|hcount\(14) & ((\U_VID|hcount[13]~44\) # (GND)))
-- \U_VID|hcount[14]~46\ = CARRY((!\U_VID|hcount[13]~44\) # (!\U_VID|hcount\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(14),
	datad => VCC,
	cin => \U_VID|hcount[13]~44\,
	combout => \U_VID|hcount[14]~45_combout\,
	cout => \U_VID|hcount[14]~46\);

-- Location: FF_X41_Y14_N9
\U_VID|hcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[14]~45_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(14));

-- Location: LCCOMB_X41_Y14_N10
\U_VID|hcount[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[15]~47_combout\ = (\U_VID|hcount\(15) & (\U_VID|hcount[14]~46\ $ (GND))) # (!\U_VID|hcount\(15) & (!\U_VID|hcount[14]~46\ & VCC))
-- \U_VID|hcount[15]~48\ = CARRY((\U_VID|hcount\(15) & !\U_VID|hcount[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(15),
	datad => VCC,
	cin => \U_VID|hcount[14]~46\,
	combout => \U_VID|hcount[15]~47_combout\,
	cout => \U_VID|hcount[15]~48\);

-- Location: FF_X41_Y14_N11
\U_VID|hcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[15]~47_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(15));

-- Location: LCCOMB_X42_Y14_N16
\U_LED4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux6~0_combout\ = (\U_VID|hcount\(14) & (!\U_VID|hcount\(13) & (\U_VID|hcount\(12) $ (!\U_VID|hcount\(15))))) # (!\U_VID|hcount\(14) & (\U_VID|hcount\(12) & (\U_VID|hcount\(13) $ (!\U_VID|hcount\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux6~0_combout\);

-- Location: LCCOMB_X42_Y14_N2
\U_LED4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux5~0_combout\ = (\U_VID|hcount\(13) & ((\U_VID|hcount\(12) & ((\U_VID|hcount\(15)))) # (!\U_VID|hcount\(12) & (\U_VID|hcount\(14))))) # (!\U_VID|hcount\(13) & (\U_VID|hcount\(14) & (\U_VID|hcount\(12) $ (\U_VID|hcount\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y14_N24
\U_LED4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux4~0_combout\ = (\U_VID|hcount\(14) & (\U_VID|hcount\(15) & ((\U_VID|hcount\(13)) # (!\U_VID|hcount\(12))))) # (!\U_VID|hcount\(14) & (!\U_VID|hcount\(12) & (\U_VID|hcount\(13) & !\U_VID|hcount\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y14_N26
\U_LED4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux3~0_combout\ = (\U_VID|hcount\(12) & (\U_VID|hcount\(14) $ ((!\U_VID|hcount\(13))))) # (!\U_VID|hcount\(12) & ((\U_VID|hcount\(14) & (!\U_VID|hcount\(13) & !\U_VID|hcount\(15))) # (!\U_VID|hcount\(14) & (\U_VID|hcount\(13) & 
-- \U_VID|hcount\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y14_N4
\U_LED4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\U_VID|hcount\(13) & (((\U_VID|hcount\(12) & !\U_VID|hcount\(15))))) # (!\U_VID|hcount\(13) & ((\U_VID|hcount\(14) & ((!\U_VID|hcount\(15)))) # (!\U_VID|hcount\(14) & (\U_VID|hcount\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y14_N10
\U_LED4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\U_VID|hcount\(14) & (\U_VID|hcount\(12) & (\U_VID|hcount\(13) $ (\U_VID|hcount\(15))))) # (!\U_VID|hcount\(14) & (!\U_VID|hcount\(15) & ((\U_VID|hcount\(12)) # (\U_VID|hcount\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y14_N12
\U_LED4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\U_VID|hcount\(12) & ((\U_VID|hcount\(15)) # (\U_VID|hcount\(14) $ (\U_VID|hcount\(13))))) # (!\U_VID|hcount\(12) & ((\U_VID|hcount\(13)) # (\U_VID|hcount\(14) $ (\U_VID|hcount\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(14),
	datab => \U_VID|hcount\(12),
	datac => \U_VID|hcount\(13),
	datad => \U_VID|hcount\(15),
	combout => \U_LED4|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y14_N12
\U_VID|hcount[16]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[16]~49_combout\ = (\U_VID|hcount\(16) & (!\U_VID|hcount[15]~48\)) # (!\U_VID|hcount\(16) & ((\U_VID|hcount[15]~48\) # (GND)))
-- \U_VID|hcount[16]~50\ = CARRY((!\U_VID|hcount[15]~48\) # (!\U_VID|hcount\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(16),
	datad => VCC,
	cin => \U_VID|hcount[15]~48\,
	combout => \U_VID|hcount[16]~49_combout\,
	cout => \U_VID|hcount[16]~50\);

-- Location: FF_X41_Y14_N13
\U_VID|hcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[16]~49_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(16));

-- Location: LCCOMB_X41_Y14_N14
\U_VID|hcount[17]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[17]~51_combout\ = (\U_VID|hcount\(17) & (\U_VID|hcount[16]~50\ $ (GND))) # (!\U_VID|hcount\(17) & (!\U_VID|hcount[16]~50\ & VCC))
-- \U_VID|hcount[17]~52\ = CARRY((\U_VID|hcount\(17) & !\U_VID|hcount[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(17),
	datad => VCC,
	cin => \U_VID|hcount[16]~50\,
	combout => \U_VID|hcount[17]~51_combout\,
	cout => \U_VID|hcount[17]~52\);

-- Location: FF_X41_Y14_N15
\U_VID|hcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[17]~51_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(17));

-- Location: LCCOMB_X41_Y14_N16
\U_VID|hcount[18]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[18]~53_combout\ = (\U_VID|hcount\(18) & (!\U_VID|hcount[17]~52\)) # (!\U_VID|hcount\(18) & ((\U_VID|hcount[17]~52\) # (GND)))
-- \U_VID|hcount[18]~54\ = CARRY((!\U_VID|hcount[17]~52\) # (!\U_VID|hcount\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VID|hcount\(18),
	datad => VCC,
	cin => \U_VID|hcount[17]~52\,
	combout => \U_VID|hcount[18]~53_combout\,
	cout => \U_VID|hcount[18]~54\);

-- Location: FF_X41_Y14_N17
\U_VID|hcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[18]~53_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(18));

-- Location: LCCOMB_X41_Y14_N18
\U_VID|hcount[19]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_VID|hcount[19]~55_combout\ = \U_VID|hcount[18]~54\ $ (!\U_VID|hcount\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VID|hcount\(19),
	cin => \U_VID|hcount[18]~54\,
	combout => \U_VID|hcount[19]~55_combout\);

-- Location: FF_X41_Y14_N19
\U_VID|hcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hsync~input_o\,
	d => \U_VID|hcount[19]~55_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VID|hcount\(19));

-- Location: LCCOMB_X74_Y30_N24
\U_LED5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux6~0_combout\ = (\U_VID|hcount\(19) & (\U_VID|hcount\(16) & (\U_VID|hcount\(18) $ (\U_VID|hcount\(17))))) # (!\U_VID|hcount\(19) & (!\U_VID|hcount\(17) & (\U_VID|hcount\(18) $ (\U_VID|hcount\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y30_N6
\U_LED5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux5~0_combout\ = (\U_VID|hcount\(19) & ((\U_VID|hcount\(16) & ((\U_VID|hcount\(17)))) # (!\U_VID|hcount\(16) & (\U_VID|hcount\(18))))) # (!\U_VID|hcount\(19) & (\U_VID|hcount\(18) & (\U_VID|hcount\(16) $ (\U_VID|hcount\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y30_N20
\U_LED5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux4~0_combout\ = (\U_VID|hcount\(19) & (\U_VID|hcount\(18) & ((\U_VID|hcount\(17)) # (!\U_VID|hcount\(16))))) # (!\U_VID|hcount\(19) & (!\U_VID|hcount\(18) & (!\U_VID|hcount\(16) & \U_VID|hcount\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y30_N18
\U_LED5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux3~0_combout\ = (\U_VID|hcount\(16) & ((\U_VID|hcount\(18) $ (!\U_VID|hcount\(17))))) # (!\U_VID|hcount\(16) & ((\U_VID|hcount\(19) & (!\U_VID|hcount\(18) & \U_VID|hcount\(17))) # (!\U_VID|hcount\(19) & (\U_VID|hcount\(18) & 
-- !\U_VID|hcount\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y30_N12
\U_LED5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux2~0_combout\ = (\U_VID|hcount\(17) & (!\U_VID|hcount\(19) & ((\U_VID|hcount\(16))))) # (!\U_VID|hcount\(17) & ((\U_VID|hcount\(18) & (!\U_VID|hcount\(19))) # (!\U_VID|hcount\(18) & ((\U_VID|hcount\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y30_N10
\U_LED5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux1~0_combout\ = (\U_VID|hcount\(18) & (\U_VID|hcount\(16) & (\U_VID|hcount\(19) $ (\U_VID|hcount\(17))))) # (!\U_VID|hcount\(18) & (!\U_VID|hcount\(19) & ((\U_VID|hcount\(16)) # (\U_VID|hcount\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y30_N4
\U_LED5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux0~0_combout\ = (\U_VID|hcount\(16) & ((\U_VID|hcount\(19)) # (\U_VID|hcount\(18) $ (\U_VID|hcount\(17))))) # (!\U_VID|hcount\(16) & ((\U_VID|hcount\(17)) # (\U_VID|hcount\(19) $ (\U_VID|hcount\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VID|hcount\(19),
	datab => \U_VID|hcount\(18),
	datac => \U_VID|hcount\(16),
	datad => \U_VID|hcount\(17),
	combout => \U_LED5|Mux0~0_combout\);

-- Location: IOIBUF_X24_Y0_N29
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


