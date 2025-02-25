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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/25/2025 00:03:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Projeto_Final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Projeto_Final_vhd_vec_tst IS
END Projeto_Final_vhd_vec_tst;
ARCHITECTURE Projeto_Final_arch OF Projeto_Final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn_hora : STD_LOGIC;
SIGNAL btn_minuto : STD_LOGIC;
SIGNAL btn_segundo : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL horas_dezena : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL horas_unidade : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minutos_dezena : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minutos_unidade : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL segundos_dezena : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL segundos_unidade : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Projeto_Final
	PORT (
	btn_hora : IN STD_LOGIC;
	btn_minuto : IN STD_LOGIC;
	btn_segundo : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	horas_dezena : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	horas_unidade : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	minutos_dezena : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	minutos_unidade : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	segundos_dezena : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	segundos_unidade : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Projeto_Final
	PORT MAP (
-- list connections between master ports and signals
	btn_hora => btn_hora,
	btn_minuto => btn_minuto,
	btn_segundo => btn_segundo,
	clk => clk,
	horas_dezena => horas_dezena,
	horas_unidade => horas_unidade,
	minutos_dezena => minutos_dezena,
	minutos_unidade => minutos_unidade,
	reset => reset,
	segundos_dezena => segundos_dezena,
	segundos_unidade => segundos_unidade
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- btn_hora
t_prcs_btn_hora: PROCESS
BEGIN
	btn_hora <= '0';
	WAIT FOR 1280000 ps;
	btn_hora <= '1';
	WAIT FOR 9600000 ps;
	btn_hora <= '0';
WAIT;
END PROCESS t_prcs_btn_hora;

-- btn_minuto
t_prcs_btn_minuto: PROCESS
BEGIN
	btn_minuto <= '0';
	WAIT FOR 12160000 ps;
	btn_minuto <= '1';
	WAIT FOR 12800000 ps;
	btn_minuto <= '0';
WAIT;
END PROCESS t_prcs_btn_minuto;

-- btn_segundo
t_prcs_btn_segundo: PROCESS
BEGIN
	btn_segundo <= '0';
	WAIT FOR 26240000 ps;
	btn_segundo <= '1';
	WAIT FOR 10880000 ps;
	btn_segundo <= '0';
WAIT;
END PROCESS t_prcs_btn_segundo;
END Projeto_Final_arch;
