-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/25/2025 00:03:08"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	Projeto_Final IS
    PORT (
	horas_dezena : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	btn_segundo : IN std_logic;
	btn_minuto : IN std_logic;
	btn_hora : IN std_logic;
	horas_unidade : OUT std_logic_vector(3 DOWNTO 0);
	minutos_dezena : OUT std_logic_vector(3 DOWNTO 0);
	minutos_unidade : OUT std_logic_vector(3 DOWNTO 0);
	segundos_dezena : OUT std_logic_vector(3 DOWNTO 0);
	segundos_unidade : OUT std_logic_vector(3 DOWNTO 0)
	);
END Projeto_Final;

-- Design Ports Information
-- horas_dezena[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_dezena[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_dezena[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_dezena[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_unidade[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_unidade[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_unidade[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horas_unidade[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_dezena[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_dezena[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_dezena[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_dezena[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_unidade[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_unidade[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_unidade[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos_unidade[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_dezena[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_dezena[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_dezena[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_dezena[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_unidade[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_unidade[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_unidade[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos_unidade[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_segundo	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_minuto	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_hora	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto_Final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horas_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_btn_segundo : std_logic;
SIGNAL ww_btn_minuto : std_logic;
SIGNAL ww_btn_hora : std_logic;
SIGNAL ww_horas_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minutos_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minutos_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segundos_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segundos_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_segundo~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \horas_dezena[3]~output_o\ : std_logic;
SIGNAL \horas_dezena[2]~output_o\ : std_logic;
SIGNAL \horas_dezena[1]~output_o\ : std_logic;
SIGNAL \horas_dezena[0]~output_o\ : std_logic;
SIGNAL \horas_unidade[3]~output_o\ : std_logic;
SIGNAL \horas_unidade[2]~output_o\ : std_logic;
SIGNAL \horas_unidade[1]~output_o\ : std_logic;
SIGNAL \horas_unidade[0]~output_o\ : std_logic;
SIGNAL \minutos_dezena[3]~output_o\ : std_logic;
SIGNAL \minutos_dezena[2]~output_o\ : std_logic;
SIGNAL \minutos_dezena[1]~output_o\ : std_logic;
SIGNAL \minutos_dezena[0]~output_o\ : std_logic;
SIGNAL \minutos_unidade[3]~output_o\ : std_logic;
SIGNAL \minutos_unidade[2]~output_o\ : std_logic;
SIGNAL \minutos_unidade[1]~output_o\ : std_logic;
SIGNAL \minutos_unidade[0]~output_o\ : std_logic;
SIGNAL \segundos_dezena[3]~output_o\ : std_logic;
SIGNAL \segundos_dezena[2]~output_o\ : std_logic;
SIGNAL \segundos_dezena[1]~output_o\ : std_logic;
SIGNAL \segundos_dezena[0]~output_o\ : std_logic;
SIGNAL \segundos_unidade[3]~output_o\ : std_logic;
SIGNAL \segundos_unidade[2]~output_o\ : std_logic;
SIGNAL \segundos_unidade[1]~output_o\ : std_logic;
SIGNAL \segundos_unidade[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_hora~input_o\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \btn_minuto~input_o\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|contador_segundos~3_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|contador_segundos~2_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|contador_segundos~1_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|contador_segundos~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|contador_horas[4]~1_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|contador_minutos~3_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|contador_minutos~2_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|contador_minutos~1_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|contador_minutos~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|contador_horas[4]~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|contador_horas~3_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|contador_horas~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[31]~41_combout\ : std_logic;
SIGNAL \inst|contador_horas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|contador_minutos\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|contador_segundos\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

horas_dezena <= ww_horas_dezena;
ww_clk <= clk;
ww_reset <= reset;
ww_btn_segundo <= btn_segundo;
ww_btn_minuto <= btn_minuto;
ww_btn_hora <= btn_hora;
horas_unidade <= ww_horas_unidade;
minutos_dezena <= ww_minutos_dezena;
minutos_unidade <= ww_minutos_unidade;
segundos_dezena <= ww_segundos_dezena;
segundos_unidade <= ww_segundos_unidade;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;
\inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X78_Y31_N2
\horas_dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \horas_dezena[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\horas_dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \horas_dezena[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\horas_dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \horas_dezena[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\horas_dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \horas_dezena[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\horas_unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\,
	devoe => ww_devoe,
	o => \horas_unidade[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\horas_unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~9_combout\,
	devoe => ww_devoe,
	o => \horas_unidade[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\horas_unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~10_combout\,
	devoe => ww_devoe,
	o => \horas_unidade[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\horas_unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador_horas\(0),
	devoe => ww_devoe,
	o => \horas_unidade[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\minutos_dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \minutos_dezena[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\minutos_dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \minutos_dezena[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\minutos_dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \minutos_dezena[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\minutos_dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \minutos_dezena[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\minutos_unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\,
	devoe => ww_devoe,
	o => \minutos_unidade[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\minutos_unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	devoe => ww_devoe,
	o => \minutos_unidade[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\minutos_unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\,
	devoe => ww_devoe,
	o => \minutos_unidade[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\minutos_unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador_minutos\(0),
	devoe => ww_devoe,
	o => \minutos_unidade[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\segundos_dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segundos_dezena[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\segundos_dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \segundos_dezena[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\segundos_dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \segundos_dezena[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\segundos_dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \segundos_dezena[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\segundos_unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	devoe => ww_devoe,
	o => \segundos_unidade[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\segundos_unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	devoe => ww_devoe,
	o => \segundos_unidade[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\segundos_unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~41_combout\,
	devoe => ww_devoe,
	o => \segundos_unidade[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\segundos_unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador_segundos\(0),
	devoe => ww_devoe,
	o => \segundos_unidade[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y52_N16
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|contador_horas\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|contador_horas\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\btn_hora~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_hora,
	o => \btn_hora~input_o\);

-- Location: LCCOMB_X51_Y52_N16
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|contador_minutos\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|contador_minutos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X52_Y52_N6
\inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|contador_segundos\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|contador_segundos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: FF_X52_Y52_N7
\inst|contador_segundos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(0));

-- Location: IOIBUF_X54_Y54_N22
\btn_minuto~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_minuto,
	o => \btn_minuto~input_o\);

-- Location: LCCOMB_X52_Y52_N8
\inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|contador_segundos\(1) & (!\inst|Add2~1\)) # (!\inst|contador_segundos\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|contador_segundos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: FF_X52_Y52_N9
\inst|contador_segundos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(1));

-- Location: LCCOMB_X52_Y52_N10
\inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|contador_segundos\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|contador_segundos\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|contador_segundos\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X52_Y52_N26
\inst|contador_segundos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_segundos~3_combout\ = (\inst|Add2~4_combout\ & (((\inst|Equal0~0_combout\) # (!\inst|contador_segundos\(1))) # (!\inst|contador_segundos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(0),
	datab => \inst|contador_segundos\(1),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add2~4_combout\,
	combout => \inst|contador_segundos~3_combout\);

-- Location: FF_X52_Y52_N27
\inst|contador_segundos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_segundos~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(2));

-- Location: LCCOMB_X52_Y52_N12
\inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|contador_segundos\(3) & (!\inst|Add2~5\)) # (!\inst|contador_segundos\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|contador_segundos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X52_Y52_N28
\inst|contador_segundos~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_segundos~2_combout\ = (\inst|Add2~6_combout\ & (((\inst|Equal0~0_combout\) # (!\inst|contador_segundos\(1))) # (!\inst|contador_segundos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(0),
	datab => \inst|contador_segundos\(1),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add2~6_combout\,
	combout => \inst|contador_segundos~2_combout\);

-- Location: FF_X52_Y52_N29
\inst|contador_segundos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_segundos~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(3));

-- Location: LCCOMB_X52_Y52_N14
\inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|contador_segundos\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|contador_segundos\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|contador_segundos\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X52_Y52_N22
\inst|contador_segundos~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_segundos~1_combout\ = (\inst|Add2~8_combout\ & ((\inst|Equal0~0_combout\) # ((!\inst|contador_segundos\(0)) # (!\inst|contador_segundos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|contador_segundos\(1),
	datac => \inst|Add2~8_combout\,
	datad => \inst|contador_segundos\(0),
	combout => \inst|contador_segundos~1_combout\);

-- Location: FF_X52_Y52_N23
\inst|contador_segundos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_segundos~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(4));

-- Location: LCCOMB_X52_Y52_N16
\inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\ $ (\inst|contador_segundos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador_segundos\(5),
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X52_Y52_N4
\inst|contador_segundos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_segundos~0_combout\ = (\inst|Add2~10_combout\ & (((\inst|Equal0~0_combout\) # (!\inst|contador_segundos\(1))) # (!\inst|contador_segundos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(0),
	datab => \inst|contador_segundos\(1),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add2~10_combout\,
	combout => \inst|contador_segundos~0_combout\);

-- Location: FF_X52_Y52_N5
\inst|contador_segundos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_segundos~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_segundos\(5));

-- Location: LCCOMB_X52_Y52_N20
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|contador_segundos\(2)) # (((!\inst|contador_segundos\(3)) # (!\inst|contador_segundos\(4))) # (!\inst|contador_segundos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(2),
	datab => \inst|contador_segundos\(5),
	datac => \inst|contador_segundos\(4),
	datad => \inst|contador_segundos\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y52_N18
\inst|contador_horas[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_horas[4]~1_combout\ = (\btn_minuto~input_o\) # ((\inst|contador_segundos\(0) & (\inst|contador_segundos\(1) & !\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(0),
	datab => \btn_minuto~input_o\,
	datac => \inst|contador_segundos\(1),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|contador_horas[4]~1_combout\);

-- Location: FF_X51_Y52_N17
\inst|contador_minutos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(0));

-- Location: LCCOMB_X51_Y52_N18
\inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|contador_minutos\(1) & (!\inst|Add1~1\)) # (!\inst|contador_minutos\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|contador_minutos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: FF_X51_Y52_N19
\inst|contador_minutos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(1));

-- Location: LCCOMB_X51_Y52_N20
\inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|contador_minutos\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|contador_minutos\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|contador_minutos\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X51_Y52_N10
\inst|contador_minutos~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_minutos~3_combout\ = (\inst|Add1~4_combout\ & (((!\inst|contador_minutos\(0)) # (!\inst|Equal1~0_combout\)) # (!\inst|contador_minutos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|contador_minutos\(0),
	datad => \inst|Add1~4_combout\,
	combout => \inst|contador_minutos~3_combout\);

-- Location: FF_X51_Y52_N11
\inst|contador_minutos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_minutos~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(2));

-- Location: LCCOMB_X51_Y52_N22
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|contador_minutos\(3) & (!\inst|Add1~5\)) # (!\inst|contador_minutos\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|contador_minutos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X51_Y52_N12
\inst|contador_minutos~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_minutos~2_combout\ = (\inst|Add1~6_combout\ & (((!\inst|Equal1~0_combout\) # (!\inst|contador_minutos\(0))) # (!\inst|contador_minutos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datab => \inst|contador_minutos\(0),
	datac => \inst|Add1~6_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|contador_minutos~2_combout\);

-- Location: FF_X51_Y52_N13
\inst|contador_minutos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_minutos~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(3));

-- Location: LCCOMB_X51_Y52_N24
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|contador_minutos\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|contador_minutos\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|contador_minutos\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X51_Y52_N14
\inst|contador_minutos~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_minutos~1_combout\ = (\inst|Add1~8_combout\ & (((!\inst|contador_minutos\(0)) # (!\inst|Equal1~0_combout\)) # (!\inst|contador_minutos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|contador_minutos\(0),
	datad => \inst|Add1~8_combout\,
	combout => \inst|contador_minutos~1_combout\);

-- Location: FF_X51_Y52_N15
\inst|contador_minutos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_minutos~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(4));

-- Location: LCCOMB_X51_Y52_N26
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = \inst|contador_minutos\(5) $ (\inst|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(5),
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\);

-- Location: LCCOMB_X51_Y52_N8
\inst|contador_minutos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_minutos~0_combout\ = (\inst|Add1~10_combout\ & (((!\inst|Equal1~0_combout\) # (!\inst|contador_minutos\(0))) # (!\inst|contador_minutos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datab => \inst|contador_minutos\(0),
	datac => \inst|Add1~10_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|contador_minutos~0_combout\);

-- Location: FF_X51_Y52_N9
\inst|contador_minutos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_minutos~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_minutos\(5));

-- Location: LCCOMB_X51_Y52_N28
\inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|contador_minutos\(2) & (\inst|contador_minutos\(4) & (\inst|contador_minutos\(5) & \inst|contador_minutos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(2),
	datab => \inst|contador_minutos\(4),
	datac => \inst|contador_minutos\(5),
	datad => \inst|contador_minutos\(3),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y52_N30
\inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|contador_minutos\(1) & \inst|contador_minutos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(1),
	datad => \inst|contador_minutos\(0),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X51_Y52_N0
\inst|contador_horas[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_horas[4]~2_combout\ = (\btn_hora~input_o\) # ((\inst|Equal1~0_combout\ & (\inst|Equal1~1_combout\ & \inst|contador_horas[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_hora~input_o\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|contador_horas[4]~1_combout\,
	combout => \inst|contador_horas[4]~2_combout\);

-- Location: FF_X50_Y52_N17
\inst|contador_horas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_horas\(0));

-- Location: LCCOMB_X50_Y52_N18
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|contador_horas\(1) & (!\inst|Add0~1\)) # (!\inst|contador_horas\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|contador_horas\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X50_Y52_N19
\inst|contador_horas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_horas\(1));

-- Location: LCCOMB_X50_Y52_N20
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|contador_horas\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|contador_horas\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|contador_horas\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X50_Y52_N21
\inst|contador_horas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_horas\(2));

-- Location: LCCOMB_X50_Y52_N22
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|contador_horas\(3) & (!\inst|Add0~5\)) # (!\inst|contador_horas\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|contador_horas\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X50_Y52_N14
\inst|contador_horas~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_horas~3_combout\ = (\inst|Add0~6_combout\ & ((!\inst|Equal2~0_combout\) # (!\inst|contador_horas\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(0),
	datac => \inst|Add0~6_combout\,
	datad => \inst|Equal2~0_combout\,
	combout => \inst|contador_horas~3_combout\);

-- Location: FF_X50_Y52_N15
\inst|contador_horas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_horas~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_horas\(3));

-- Location: LCCOMB_X50_Y52_N10
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|contador_horas\(4) & (\inst|contador_horas\(2) & (!\inst|contador_horas\(3) & \inst|contador_horas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_horas\(4),
	datab => \inst|contador_horas\(2),
	datac => \inst|contador_horas\(3),
	datad => \inst|contador_horas\(1),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y52_N24
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = \inst|Add0~7\ $ (!\inst|contador_horas\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador_horas\(4),
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X50_Y52_N12
\inst|contador_horas~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador_horas~0_combout\ = (\inst|Add0~8_combout\ & ((!\inst|contador_horas\(0)) # (!\inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|contador_horas\(0),
	datad => \inst|Add0~8_combout\,
	combout => \inst|contador_horas~0_combout\);

-- Location: FF_X50_Y52_N13
\inst|contador_horas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador_horas~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst|contador_horas[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador_horas\(4));

-- Location: LCCOMB_X54_Y52_N10
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_horas\(2) $ (VCC)
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_horas\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(2),
	datad => VCC,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X54_Y52_N12
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_horas\(3) & (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_horas\(3) & 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_horas\(3) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(3),
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X54_Y52_N14
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_horas\(4) & (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_horas\(4) & 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_horas\(4) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_horas\(4),
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X54_Y52_N16
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X50_Y52_N28
\inst|Div2|auto_generated|divider|divider|StageOut[18]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\inst|contador_horas\(4) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_horas\(4),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X54_Y52_N20
\inst|Div2|auto_generated|divider|divider|StageOut[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X54_Y52_N18
\inst|Div2|auto_generated|divider|divider|StageOut[17]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\inst|contador_horas\(3) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_horas\(3),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X54_Y52_N0
\inst|Div2|auto_generated|divider|divider|StageOut[17]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X54_Y52_N2
\inst|Div2|auto_generated|divider|divider|StageOut[16]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\inst|contador_horas\(2) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_horas\(2),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X54_Y52_N4
\inst|Div2|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X54_Y52_N6
\inst|Div2|auto_generated|divider|divider|StageOut[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst|contador_horas\(1) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_horas\(1),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X54_Y52_N8
\inst|Div2|auto_generated|divider|divider|StageOut[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\inst|contador_horas\(1) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_horas\(1),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X54_Y52_N22
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\inst|Div2|auto_generated|divider|divider|StageOut[15]~6_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => VCC,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X54_Y52_N24
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X54_Y52_N26
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[17]~2_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X54_Y52_N28
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X54_Y52_N30
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y52_N0
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_horas\(2) $ (VCC)
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_horas\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(2),
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X50_Y52_N2
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_horas\(3) & (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_horas\(3) & 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_horas\(3) & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(3),
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X50_Y52_N4
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_horas\(4) & (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_horas\(4) & 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_horas\(4) & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_horas\(4),
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X50_Y52_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X49_Y52_N28
\inst|Mod2|auto_generated|divider|divider|StageOut[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X50_Y52_N26
\inst|Mod2|auto_generated|divider|divider|StageOut[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|contador_horas\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|contador_horas\(3),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LCCOMB_X50_Y52_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[16]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\inst|contador_horas\(2) & \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(2),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LCCOMB_X49_Y52_N22
\inst|Mod2|auto_generated|divider|divider|StageOut[16]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LCCOMB_X49_Y52_N24
\inst|Mod2|auto_generated|divider|divider|StageOut[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\ = (\inst|contador_horas\(1) & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(1),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LCCOMB_X49_Y52_N16
\inst|Mod2|auto_generated|divider|divider|StageOut[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\ = (\inst|contador_horas\(1) & \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(1),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\);

-- Location: LCCOMB_X49_Y52_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~5_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~4_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X49_Y52_N8
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X49_Y52_N10
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X49_Y52_N26
\inst|Mod2|auto_generated|divider|divider|StageOut[18]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: LCCOMB_X50_Y52_N8
\inst|Mod2|auto_generated|divider|divider|StageOut[18]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|contador_horas\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|contador_horas\(4),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LCCOMB_X49_Y52_N12
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y52_N14
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X49_Y52_N4
\inst|Mod2|auto_generated|divider|divider|StageOut[23]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~0_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~8_combout\);

-- Location: LCCOMB_X49_Y52_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\) # 
-- ((\inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X49_Y52_N0
\inst|Mod2|auto_generated|divider|divider|StageOut[21]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[21]~10_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|contador_horas\(1))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_horas\(1),
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: LCCOMB_X57_Y53_N14
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_minutos\(3) $ (VCC)
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_minutos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(3),
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X57_Y53_N16
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_minutos\(4) & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_minutos\(4) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_minutos\(4) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(4),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N18
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_minutos\(5) & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_minutos\(5) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_minutos\(5) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(5),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X57_Y53_N20
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X57_Y53_N12
\inst|Div1|auto_generated|divider|divider|StageOut[18]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|contador_minutos\(5) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(5),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X57_Y53_N0
\inst|Div1|auto_generated|divider|divider|StageOut[18]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X57_Y53_N26
\inst|Div1|auto_generated|divider|divider|StageOut[17]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|contador_minutos\(4) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(4),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X57_Y53_N28
\inst|Div1|auto_generated|divider|divider|StageOut[17]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X57_Y53_N22
\inst|Div1|auto_generated|divider|divider|StageOut[16]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|contador_minutos\(3) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(3),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X57_Y53_N24
\inst|Div1|auto_generated|divider|divider|StageOut[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X56_Y53_N12
\inst|Div1|auto_generated|divider|divider|StageOut[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|contador_minutos\(2) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(2),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X56_Y53_N18
\inst|Div1|auto_generated|divider|divider|StageOut[15]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|contador_minutos\(2) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(2),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X57_Y53_N2
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X57_Y53_N4
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N6
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X57_Y53_N8
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y53_N10
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y53_N30
\inst|Div1|auto_generated|divider|divider|StageOut[23]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst|contador_minutos\(4))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|contador_minutos\(4),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X56_Y53_N8
\inst|Div1|auto_generated|divider|divider|StageOut[23]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X56_Y53_N6
\inst|Div1|auto_generated|divider|divider|StageOut[22]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X56_Y53_N16
\inst|Div1|auto_generated|divider|divider|StageOut[22]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_minutos\(3)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|contador_minutos\(3),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X57_Y53_N30
\inst|Div1|auto_generated|divider|divider|StageOut[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X56_Y53_N0
\inst|Div1|auto_generated|divider|divider|StageOut[21]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst|contador_minutos\(2) & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(2),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X56_Y53_N10
\inst|Div1|auto_generated|divider|divider|StageOut[20]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst|contador_minutos\(1) & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X56_Y53_N4
\inst|Div1|auto_generated|divider|divider|StageOut[20]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (\inst|contador_minutos\(1) & !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(1),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X56_Y53_N20
\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X56_Y53_N22
\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X56_Y53_N24
\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X56_Y53_N26
\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y53_N28
\inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X54_Y50_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_minutos\(3) $ (VCC)
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_minutos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(3),
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X54_Y50_N20
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_minutos\(4) & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_minutos\(4) & 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_minutos\(4) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(4),
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X54_Y50_N22
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_minutos\(5) & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_minutos\(5) & 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_minutos\(5) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(5),
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X54_Y50_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X54_Y50_N16
\inst|Mod1|auto_generated|divider|divider|StageOut[21]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X55_Y50_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[21]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\inst|contador_minutos\(5) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(5),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X55_Y50_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[20]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\inst|contador_minutos\(4) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(4),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X55_Y50_N8
\inst|Mod1|auto_generated|divider|divider|StageOut[20]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X55_Y50_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[19]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\inst|contador_minutos\(3) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(3),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X55_Y50_N20
\inst|Mod1|auto_generated|divider|divider|StageOut[19]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X55_Y50_N22
\inst|Mod1|auto_generated|divider|divider|StageOut[18]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\inst|contador_minutos\(2) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(2),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X55_Y50_N28
\inst|Mod1|auto_generated|divider|divider|StageOut[18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\inst|contador_minutos\(2) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(2),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X55_Y50_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X55_Y50_N12
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X55_Y50_N14
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X55_Y50_N16
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X55_Y50_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X55_Y50_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst|contador_minutos\(3))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(3),
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X55_Y50_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X55_Y50_N0
\inst|Mod1|auto_generated|divider|divider|StageOut[28]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_minutos\(5)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|contador_minutos\(5),
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X56_Y50_N8
\inst|Mod1|auto_generated|divider|divider|StageOut[28]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X56_Y50_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[27]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X55_Y50_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[27]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst|contador_minutos\(4))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_minutos\(4),
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X56_Y50_N10
\inst|Mod1|auto_generated|divider|divider|StageOut[25]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X56_Y50_N28
\inst|Mod1|auto_generated|divider|divider|StageOut[25]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\inst|contador_minutos\(2) & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(2),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X56_Y50_N12
\inst|Mod1|auto_generated|divider|divider|StageOut[24]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\ = (\inst|contador_minutos\(1) & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(1),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X56_Y50_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[24]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ = (\inst|contador_minutos\(1) & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_minutos\(1),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X56_Y50_N16
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N20
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N22
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y50_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\) # ((\inst|Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X56_Y50_N26
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X56_Y50_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X56_Y50_N14
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X56_Y50_N0
\inst|Mod1|auto_generated|divider|divider|StageOut[31]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst|contador_minutos\(1))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_minutos\(1),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~41_combout\);

-- Location: LCCOMB_X50_Y51_N14
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_segundos\(3) $ (VCC)
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_segundos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(3),
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X50_Y51_N16
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_segundos\(4) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_segundos\(4) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_segundos\(4) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(4),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X50_Y51_N18
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_segundos\(5) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_segundos\(5) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_segundos\(5) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(5),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X50_Y51_N20
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X51_Y51_N12
\inst|Div0|auto_generated|divider|divider|StageOut[18]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|contador_segundos\(5) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_segundos\(5),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X51_Y51_N16
\inst|Div0|auto_generated|divider|divider|StageOut[18]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X51_Y51_N26
\inst|Div0|auto_generated|divider|divider|StageOut[17]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|contador_segundos\(4) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(4),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X51_Y51_N24
\inst|Div0|auto_generated|divider|divider|StageOut[17]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X51_Y51_N22
\inst|Div0|auto_generated|divider|divider|StageOut[16]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|contador_segundos\(3) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_segundos\(3),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X51_Y51_N0
\inst|Div0|auto_generated|divider|divider|StageOut[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X51_Y51_N30
\inst|Div0|auto_generated|divider|divider|StageOut[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|contador_segundos\(2) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(2),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X51_Y51_N28
\inst|Div0|auto_generated|divider|divider|StageOut[15]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|contador_segundos\(2) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(2),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X51_Y51_N2
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X51_Y51_N4
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X51_Y51_N6
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X51_Y51_N8
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X51_Y51_N10
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y51_N12
\inst|Div0|auto_generated|divider|divider|StageOut[23]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X51_Y51_N18
\inst|Div0|auto_generated|divider|divider|StageOut[23]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_segundos\(4)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|contador_segundos\(4),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X51_Y51_N20
\inst|Div0|auto_generated|divider|divider|StageOut[22]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_segundos\(3)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|contador_segundos\(3),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X50_Y51_N0
\inst|Div0|auto_generated|divider|divider|StageOut[22]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X50_Y51_N26
\inst|Div0|auto_generated|divider|divider|StageOut[21]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|contador_segundos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|contador_segundos\(2),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X50_Y51_N28
\inst|Div0|auto_generated|divider|divider|StageOut[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X50_Y51_N22
\inst|Div0|auto_generated|divider|divider|StageOut[20]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|contador_segundos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|contador_segundos\(1),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X50_Y51_N24
\inst|Div0|auto_generated|divider|divider|StageOut[20]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|contador_segundos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|contador_segundos\(1),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X50_Y51_N2
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X50_Y51_N4
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X50_Y51_N6
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X50_Y51_N8
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X50_Y51_N10
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y53_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|contador_segundos\(3) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|contador_segundos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(3),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X50_Y53_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|contador_segundos\(4) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|contador_segundos\(4) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|contador_segundos\(4) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(4),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X50_Y53_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|contador_segundos\(5) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|contador_segundos\(5) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|contador_segundos\(5) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(5),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X50_Y53_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X52_Y53_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X52_Y53_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\inst|contador_segundos\(5) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X52_Y53_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X52_Y53_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\inst|contador_segundos\(4) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_segundos\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X52_Y53_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\inst|contador_segundos\(3) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_segundos\(3),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X52_Y53_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X52_Y53_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\inst|contador_segundos\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_segundos\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X52_Y53_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\inst|contador_segundos\(2) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_segundos\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X52_Y53_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X52_Y53_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X52_Y53_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X52_Y53_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X52_Y53_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X52_Y53_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_segundos\(3)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|contador_segundos\(3),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X52_Y53_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_segundos\(5)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|contador_segundos\(5),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X52_Y53_N18
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst|contador_segundos\(4)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst|contador_segundos\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X51_Y53_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\inst|contador_segundos\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X51_Y53_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[24]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ = (\inst|contador_segundos\(1) & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X51_Y53_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[24]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ = (\inst|contador_segundos\(1) & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X51_Y53_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X51_Y53_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X51_Y53_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X51_Y53_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X51_Y53_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X51_Y53_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[33]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[32]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[31]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[31]~41_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst|contador_segundos\(1))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_segundos\(1),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~41_combout\);

-- Location: IOIBUF_X74_Y54_N15
\btn_segundo~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_segundo,
	o => \btn_segundo~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

ww_horas_dezena(3) <= \horas_dezena[3]~output_o\;

ww_horas_dezena(2) <= \horas_dezena[2]~output_o\;

ww_horas_dezena(1) <= \horas_dezena[1]~output_o\;

ww_horas_dezena(0) <= \horas_dezena[0]~output_o\;

ww_horas_unidade(3) <= \horas_unidade[3]~output_o\;

ww_horas_unidade(2) <= \horas_unidade[2]~output_o\;

ww_horas_unidade(1) <= \horas_unidade[1]~output_o\;

ww_horas_unidade(0) <= \horas_unidade[0]~output_o\;

ww_minutos_dezena(3) <= \minutos_dezena[3]~output_o\;

ww_minutos_dezena(2) <= \minutos_dezena[2]~output_o\;

ww_minutos_dezena(1) <= \minutos_dezena[1]~output_o\;

ww_minutos_dezena(0) <= \minutos_dezena[0]~output_o\;

ww_minutos_unidade(3) <= \minutos_unidade[3]~output_o\;

ww_minutos_unidade(2) <= \minutos_unidade[2]~output_o\;

ww_minutos_unidade(1) <= \minutos_unidade[1]~output_o\;

ww_minutos_unidade(0) <= \minutos_unidade[0]~output_o\;

ww_segundos_dezena(3) <= \segundos_dezena[3]~output_o\;

ww_segundos_dezena(2) <= \segundos_dezena[2]~output_o\;

ww_segundos_dezena(1) <= \segundos_dezena[1]~output_o\;

ww_segundos_dezena(0) <= \segundos_dezena[0]~output_o\;

ww_segundos_unidade(3) <= \segundos_unidade[3]~output_o\;

ww_segundos_unidade(2) <= \segundos_unidade[2]~output_o\;

ww_segundos_unidade(1) <= \segundos_unidade[1]~output_o\;

ww_segundos_unidade(0) <= \segundos_unidade[0]~output_o\;
END structure;


