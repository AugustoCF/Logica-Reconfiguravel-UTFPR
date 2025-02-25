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

-- DATE "02/18/2025 20:08:07"

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

ENTITY 	sincos IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	MAX10_CLK1_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END sincos;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sincos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst13~1_combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\ : std_logic;
SIGNAL \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\ : std_logic;
SIGNAL \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_inst13~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ & 
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ & \inst1|altsyncram_component|auto_generated|q_a\(0));

\inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|altsyncram_component|auto_generated|q_a\(5) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|altsyncram_component|auto_generated|q_a\(6) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\);

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ & 
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst6|altsyncram_component|auto_generated|q_a\(0) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst6|altsyncram_component|auto_generated|q_a\(1) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst6|altsyncram_component|auto_generated|q_a\(2) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst6|altsyncram_component|auto_generated|q_a\(3) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst6|altsyncram_component|auto_generated|q_a\(4) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst6|altsyncram_component|auto_generated|q_a\(5) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst6|altsyncram_component|auto_generated|q_a\(6) <= \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\);

\inst5|altsyncram_component|auto_generated|q_a\(0) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst5|altsyncram_component|auto_generated|q_a\(1) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst5|altsyncram_component|auto_generated|q_a\(2) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst5|altsyncram_component|auto_generated|q_a\(3) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst5|altsyncram_component|auto_generated|q_a\(4) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst5|altsyncram_component|auto_generated|q_a\(5) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst5|altsyncram_component|auto_generated|q_a\(6) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24));

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\ALT_INV_inst13~combout\ <= NOT \inst13~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N8
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X45_Y53_N9
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X45_Y53_N10
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X45_Y53_N11
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X45_Y53_N12
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X45_Y53_N13
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X45_Y53_N14
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X45_Y53_N15
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X45_Y53_N16
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X45_Y53_N17
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X45_Y53_N18
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X45_Y53_N19
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X45_Y53_N20
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X45_Y53_N21
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X45_Y53_N22
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X45_Y53_N23
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X45_Y53_N24
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X45_Y53_N25
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X45_Y53_N26
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X45_Y53_N27
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X45_Y53_N28
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X45_Y53_N29
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X45_Y53_N30
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X45_Y53_N31
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X45_Y52_N0
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X45_Y52_N1
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X45_Y52_N2
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X45_Y52_N3
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X45_Y52_N4
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X45_Y52_N5
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X45_Y52_N6
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X45_Y52_N7
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X45_Y52_N8
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X45_Y52_N9
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X45_Y52_N10
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X45_Y52_N11
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X45_Y52_N12
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X45_Y52_N13
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X45_Y52_N14
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X45_Y52_N15
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X45_Y52_N16
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X45_Y52_N17
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X45_Y52_N18
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X45_Y52_N19
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X45_Y52_N20
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & !\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X45_Y52_N21
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X45_Y52_N22
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & (!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & ((\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X45_Y52_N23
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X45_Y52_N24
\inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ = \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ $ (!\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24),
	cin => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\);

-- Location: FF_X45_Y52_N25
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \inst11|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24));

-- Location: CLKCTRL_G11
\inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\);

-- Location: LCCOMB_X71_Y45_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X71_Y45_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X71_Y45_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X71_Y45_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X71_Y45_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X71_Y45_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X71_Y45_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X71_Y45_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X71_Y45_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X71_Y45_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X71_Y45_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X71_Y45_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X71_Y45_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X71_Y45_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) $ (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X71_Y45_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X71_Y45_N30
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X71_Y45_N24
\inst13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst13~1_combout\);

-- Location: LCCOMB_X71_Y45_N22
inst13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\inst13~0_combout\ & \inst13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13~0_combout\,
	datad => \inst13~1_combout\,
	combout => \inst13~combout\);

-- Location: FF_X71_Y45_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: M9K_X73_Y50_N0
\inst1|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400010400420010C00440011400460011C004800124004A0012C004C00134004E00138004F0014000510014400520014C00530015000540015400560015800570015C005700160005800164005900164005900168005A00168005A00168005A00168005A0016C005A00168005A00168005A00168005A0016800590016400590016400580016000570015C00570015800560015400540015000530014C005200144005100140004F00138004E00134004C0012C004A0012400480011C00460011400440010C0042001040040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sincos_bin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst1|altsyncram:altsyncram_component|altsyncram_ssq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 91,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	portaaddr => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X74_Y50_N6
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ = (\inst1|altsyncram_component|auto_generated|q_a\(7) & (!\inst1|altsyncram_component|auto_generated|q_a\(5) & ((\inst1|altsyncram_component|auto_generated|q_a\(6)) # 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(4))))) # (!\inst1|altsyncram_component|auto_generated|q_a\(7) & (\inst1|altsyncram_component|auto_generated|q_a\(5) & ((\inst1|altsyncram_component|auto_generated|q_a\(4)) # 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: LCCOMB_X74_Y50_N4
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\inst1|altsyncram_component|auto_generated|q_a\(6) & (!\inst1|altsyncram_component|auto_generated|q_a\(4) & (\inst1|altsyncram_component|auto_generated|q_a\(7) $ 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(5))))) # (!\inst1|altsyncram_component|auto_generated|q_a\(6) & (\inst1|altsyncram_component|auto_generated|q_a\(7) & (\inst1|altsyncram_component|auto_generated|q_a\(4) & 
-- !\inst1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X74_Y50_N10
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ = (\inst1|altsyncram_component|auto_generated|q_a\(7) & ((\inst1|altsyncram_component|auto_generated|q_a\(6) & (\inst1|altsyncram_component|auto_generated|q_a\(4) & 
-- \inst1|altsyncram_component|auto_generated|q_a\(5))) # (!\inst1|altsyncram_component|auto_generated|q_a\(6) & ((!\inst1|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst1|altsyncram_component|auto_generated|q_a\(7) & 
-- (\inst1|altsyncram_component|auto_generated|q_a\(6) & ((\inst1|altsyncram_component|auto_generated|q_a\(4)) # (\inst1|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X74_Y50_N0
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ = (\inst1|altsyncram_component|auto_generated|q_a\(3)) # (\inst1|altsyncram_component|auto_generated|q_a\(4) $ 
-- (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X74_Y50_N16
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ = (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # ((\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ & 
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\,
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\);

-- Location: LCCOMB_X74_Y50_N22
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ = (\inst1|altsyncram_component|auto_generated|q_a\(2)) # (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ 
-- (\inst1|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst1|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\);

-- Location: LCCOMB_X74_Y50_N2
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ = \inst1|altsyncram_component|auto_generated|q_a\(4) $ (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ 
-- (((!\inst1|altsyncram_component|auto_generated|q_a\(3) & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst1|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X74_Y50_N20
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ & ((\inst1|altsyncram_component|auto_generated|q_a\(2)) # 
-- (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ (\inst1|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datac => \inst1|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\);

-- Location: LCCOMB_X74_Y50_N24
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\) # ((\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ & 
-- ((!\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))) # (!\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ & (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ & 
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\,
	datab => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\);

-- Location: LCCOMB_X74_Y50_N18
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ = \inst1|altsyncram_component|auto_generated|q_a\(3) $ (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ 
-- (((!\inst1|altsyncram_component|auto_generated|q_a\(2) & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X74_Y50_N28
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\ = (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst1|altsyncram_component|auto_generated|q_a\(1)) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(2) $ (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\);

-- Location: LCCOMB_X74_Y50_N12
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ = (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\) # (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ $ 
-- (((\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datab => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\);

-- Location: LCCOMB_X74_Y50_N26
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ = \inst1|altsyncram_component|auto_generated|q_a\(1) $ (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\);

-- Location: LCCOMB_X74_Y50_N14
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ = \inst1|altsyncram_component|auto_generated|q_a\(2) $ (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ $ 
-- (((!\inst1|altsyncram_component|auto_generated|q_a\(1) & \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LCCOMB_X74_Y50_N8
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\ = \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ $ (\inst1|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst1|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\);

-- Location: LCCOMB_X74_Y50_N30
\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ = \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ & 
-- ((\inst1|altsyncram_component|auto_generated|q_a\(1)) # (\inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	combout => \inst10|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\);

-- Location: M9K_X73_Y51_N0
\inst4|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0003800060008400460000C0008000400000001E00002000480019000C00024001E40040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "contador_seteseg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_BCD:inst4|altsyncram:altsyncram_component|altsyncram_ngr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y53_N0
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0003800060008400460000C0008000400000001E00002000480019000C00024001E40040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "contador_seteseg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_BCD:inst3|altsyncram:altsyncram_component|altsyncram_ngr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X71_Y45_N2
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (((!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X71_Y45_N28
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X71_Y45_N0
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: LCCOMB_X72_Y45_N20
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ 
-- (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X72_Y45_N30
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ = (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # ((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\ & 
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\);

-- Location: LCCOMB_X72_Y45_N24
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ 
-- (((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X72_Y45_N8
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ 
-- (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\);

-- Location: LCCOMB_X72_Y45_N6
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\);

-- Location: LCCOMB_X72_Y45_N26
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\) # ((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ & 
-- (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ & !\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\)) # (!\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ & 
-- ((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	datab => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~2_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\);

-- Location: LCCOMB_X72_Y45_N28
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ 
-- (((!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X72_Y45_N18
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\ = (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\);

-- Location: LCCOMB_X72_Y45_N14
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ = (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\) # (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ $ 
-- (((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datab => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~0_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\);

-- Location: LCCOMB_X72_Y45_N16
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~5_combout\);

-- Location: LCCOMB_X72_Y45_N4
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\ = \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (((!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LCCOMB_X72_Y45_N22
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\ = \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\);

-- Location: LCCOMB_X72_Y45_N12
\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\ = \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\ & 
-- ((\inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\) # (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_combout\,
	datad => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	combout => \inst8|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~7_combout\);

-- Location: M9K_X73_Y45_N0
\inst6|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0003800060008400460000C0008000400000001E00002000480019000C00024001E40040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "contador_seteseg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_BCD:inst6|altsyncram:altsyncram_component|altsyncram_ngr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	portaaddr => \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y41_N0
\inst5|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0003800060008400460000C0008000400000001E00002000480019000C00024001E40040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "contador_seteseg.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_BCD:inst5|altsyncram:altsyncram_component|altsyncram_ngr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]~clkctrl_outclk\,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

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

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;
END structure;


