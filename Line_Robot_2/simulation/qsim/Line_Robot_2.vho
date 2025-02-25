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

-- DATE "02/20/2025 14:28:44"

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

ENTITY 	Line_Robot_2 IS
    PORT (
	ME1 : OUT std_logic;
	clock : IN std_logic;
	SE : IN std_logic;
	SD : IN std_logic;
	ME0 : OUT std_logic;
	MD1 : OUT std_logic;
	MD0 : OUT std_logic;
	STATE2 : OUT std_logic;
	STATE1 : OUT std_logic;
	STATE0 : OUT std_logic
	);
END Line_Robot_2;

-- Design Ports Information
-- ME1	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ME0	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MD1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MD0	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE2	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE1	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATE0	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Line_Robot_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ME1 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_SE : std_logic;
SIGNAL ww_SD : std_logic;
SIGNAL ww_ME0 : std_logic;
SIGNAL ww_MD1 : std_logic;
SIGNAL ww_MD0 : std_logic;
SIGNAL ww_STATE2 : std_logic;
SIGNAL ww_STATE1 : std_logic;
SIGNAL ww_STATE0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ME1~output_o\ : std_logic;
SIGNAL \ME0~output_o\ : std_logic;
SIGNAL \MD1~output_o\ : std_logic;
SIGNAL \MD0~output_o\ : std_logic;
SIGNAL \STATE2~output_o\ : std_logic;
SIGNAL \STATE1~output_o\ : std_logic;
SIGNAL \STATE0~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \SD~input_o\ : std_logic;
SIGNAL \SE~input_o\ : std_logic;
SIGNAL \inst3|reg_fstate~0_combout\ : std_logic;
SIGNAL \inst3|fstate.FULL~q\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|fstate.STOP~q\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|fstate.TURN_D~q\ : std_logic;
SIGNAL \inst3|ME1~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|fstate.TURN_E~q\ : std_logic;
SIGNAL \inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|fstate.SEARCH_E~q\ : std_logic;
SIGNAL \inst3|WideOr5~0_combout\ : std_logic;
SIGNAL \inst3|MD1~0_combout\ : std_logic;
SIGNAL \inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|fstate.SEARCH_D~q\ : std_logic;
SIGNAL \inst3|MD0~0_combout\ : std_logic;
SIGNAL \inst3|STATE2~0_combout\ : std_logic;
SIGNAL \inst3|STATE1~0_combout\ : std_logic;
SIGNAL \inst3|WideOr5~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_MD0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ME1 <= ww_ME1;
ww_clock <= clock;
ww_SE <= SE;
ww_SD <= SD;
ME0 <= ww_ME0;
MD1 <= ww_MD1;
MD0 <= ww_MD0;
STATE2 <= ww_STATE2;
STATE1 <= ww_STATE1;
STATE0 <= ww_STATE0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst3|ALT_INV_WideOr5~combout\ <= NOT \inst3|WideOr5~combout\;
\inst3|ALT_INV_MD0~0_combout\ <= NOT \inst3|MD0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y27_N16
\ME1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ME1~0_combout\,
	devoe => ww_devoe,
	o => \ME1~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\ME0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \ME0~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\MD1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|MD1~0_combout\,
	devoe => ww_devoe,
	o => \MD1~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\MD0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_MD0~0_combout\,
	devoe => ww_devoe,
	o => \MD0~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\STATE2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|STATE2~0_combout\,
	devoe => ww_devoe,
	o => \STATE2~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\STATE1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|STATE1~0_combout\,
	devoe => ww_devoe,
	o => \STATE1~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\STATE0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => \STATE0~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N15
\SD~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD,
	o => \SD~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE,
	o => \SE~input_o\);

-- Location: LCCOMB_X1_Y26_N4
\inst3|reg_fstate~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate~0_combout\ = (\SD~input_o\ & \SE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SD~input_o\,
	datad => \SE~input_o\,
	combout => \inst3|reg_fstate~0_combout\);

-- Location: FF_X1_Y26_N5
\inst3|fstate.FULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.FULL~q\);

-- Location: LCCOMB_X1_Y26_N10
\inst3|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (\SE~input_o\) # ((\SD~input_o\) # ((\inst3|fstate.STOP~q\ & !\inst3|fstate.FULL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE~input_o\,
	datab => \SD~input_o\,
	datac => \inst3|fstate.STOP~q\,
	datad => \inst3|fstate.FULL~q\,
	combout => \inst3|Selector0~0_combout\);

-- Location: FF_X1_Y26_N11
\inst3|fstate.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.STOP~q\);

-- Location: LCCOMB_X1_Y26_N6
\inst3|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (\inst3|fstate.FULL~q\) # (!\inst3|fstate.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|fstate.FULL~q\,
	datad => \inst3|fstate.STOP~q\,
	combout => \inst3|Selector3~0_combout\);

-- Location: LCCOMB_X1_Y26_N18
\inst3|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector3~1_combout\ = (\SE~input_o\ & (!\SD~input_o\ & (\inst3|fstate.TURN_D~q\))) # (!\SE~input_o\ & (\SD~input_o\ & ((\inst3|fstate.TURN_D~q\) # (\inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE~input_o\,
	datab => \SD~input_o\,
	datac => \inst3|fstate.TURN_D~q\,
	datad => \inst3|Selector3~0_combout\,
	combout => \inst3|Selector3~1_combout\);

-- Location: FF_X1_Y26_N19
\inst3|fstate.TURN_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.TURN_D~q\);

-- Location: LCCOMB_X1_Y26_N28
\inst3|ME1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ME1~0_combout\ = (\inst3|fstate.FULL~q\) # (\inst3|fstate.TURN_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.FULL~q\,
	datad => \inst3|fstate.TURN_D~q\,
	combout => \inst3|ME1~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\inst3|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\SE~input_o\ & (!\SD~input_o\ & ((\inst3|fstate.TURN_E~q\) # (\inst3|Selector3~0_combout\)))) # (!\SE~input_o\ & (\SD~input_o\ & (\inst3|fstate.TURN_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE~input_o\,
	datab => \SD~input_o\,
	datac => \inst3|fstate.TURN_E~q\,
	datad => \inst3|Selector3~0_combout\,
	combout => \inst3|Selector2~0_combout\);

-- Location: FF_X1_Y26_N17
\inst3|fstate.TURN_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.TURN_E~q\);

-- Location: LCCOMB_X1_Y26_N0
\inst3|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector4~0_combout\ = (\SE~input_o\ & (!\SD~input_o\ & (\inst3|fstate.SEARCH_E~q\))) # (!\SE~input_o\ & ((\inst3|fstate.SEARCH_E~q\) # ((!\SD~input_o\ & \inst3|fstate.TURN_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE~input_o\,
	datab => \SD~input_o\,
	datac => \inst3|fstate.SEARCH_E~q\,
	datad => \inst3|fstate.TURN_E~q\,
	combout => \inst3|Selector4~0_combout\);

-- Location: FF_X1_Y26_N1
\inst3|fstate.SEARCH_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.SEARCH_E~q\);

-- Location: LCCOMB_X1_Y26_N30
\inst3|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~0_combout\ = (\inst3|fstate.STOP~q\ & !\inst3|fstate.SEARCH_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|fstate.STOP~q\,
	datad => \inst3|fstate.SEARCH_E~q\,
	combout => \inst3|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y26_N2
\inst3|MD1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|MD1~0_combout\ = (\inst3|fstate.FULL~q\) # (\inst3|fstate.TURN_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.FULL~q\,
	datad => \inst3|fstate.TURN_E~q\,
	combout => \inst3|MD1~0_combout\);

-- Location: LCCOMB_X1_Y26_N8
\inst3|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Selector5~0_combout\ = (\SE~input_o\ & (!\SD~input_o\ & (\inst3|fstate.SEARCH_D~q\))) # (!\SE~input_o\ & ((\inst3|fstate.SEARCH_D~q\) # ((!\SD~input_o\ & \inst3|fstate.TURN_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SE~input_o\,
	datab => \SD~input_o\,
	datac => \inst3|fstate.SEARCH_D~q\,
	datad => \inst3|fstate.TURN_D~q\,
	combout => \inst3|Selector5~0_combout\);

-- Location: FF_X1_Y26_N9
\inst3|fstate.SEARCH_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.SEARCH_D~q\);

-- Location: LCCOMB_X1_Y26_N14
\inst3|MD0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|MD0~0_combout\ = (\inst3|fstate.SEARCH_D~q\) # (!\inst3|fstate.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.STOP~q\,
	datac => \inst3|fstate.SEARCH_D~q\,
	combout => \inst3|MD0~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\inst3|STATE2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|STATE2~0_combout\ = (\inst3|fstate.SEARCH_D~q\) # (\inst3|fstate.SEARCH_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|fstate.SEARCH_D~q\,
	datad => \inst3|fstate.SEARCH_E~q\,
	combout => \inst3|STATE2~0_combout\);

-- Location: LCCOMB_X1_Y26_N22
\inst3|STATE1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|STATE1~0_combout\ = (\inst3|fstate.TURN_E~q\) # (\inst3|fstate.TURN_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.TURN_E~q\,
	datad => \inst3|fstate.TURN_D~q\,
	combout => \inst3|STATE1~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\inst3|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~combout\ = (\inst3|fstate.TURN_E~q\) # ((\inst3|fstate.SEARCH_E~q\) # (!\inst3|fstate.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.TURN_E~q\,
	datac => \inst3|fstate.STOP~q\,
	datad => \inst3|fstate.SEARCH_E~q\,
	combout => \inst3|WideOr5~combout\);

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

ww_ME1 <= \ME1~output_o\;

ww_ME0 <= \ME0~output_o\;

ww_MD1 <= \MD1~output_o\;

ww_MD0 <= \MD0~output_o\;

ww_STATE2 <= \STATE2~output_o\;

ww_STATE1 <= \STATE1~output_o\;

ww_STATE0 <= \STATE0~output_o\;
END structure;


