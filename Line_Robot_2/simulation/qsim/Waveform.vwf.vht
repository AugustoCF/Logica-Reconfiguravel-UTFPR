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
-- Generated on "02/20/2025 14:28:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Line_Robot_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Line_Robot_2_vhd_vec_tst IS
END Line_Robot_2_vhd_vec_tst;
ARCHITECTURE Line_Robot_2_arch OF Line_Robot_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL MD0 : STD_LOGIC;
SIGNAL MD1 : STD_LOGIC;
SIGNAL ME0 : STD_LOGIC;
SIGNAL ME1 : STD_LOGIC;
SIGNAL SD : STD_LOGIC;
SIGNAL SE : STD_LOGIC;
SIGNAL STATE0 : STD_LOGIC;
SIGNAL STATE1 : STD_LOGIC;
SIGNAL STATE2 : STD_LOGIC;
COMPONENT Line_Robot_2
	PORT (
	clock : IN STD_LOGIC;
	MD0 : OUT STD_LOGIC;
	MD1 : OUT STD_LOGIC;
	ME0 : OUT STD_LOGIC;
	ME1 : OUT STD_LOGIC;
	SD : IN STD_LOGIC;
	SE : IN STD_LOGIC;
	STATE0 : OUT STD_LOGIC;
	STATE1 : OUT STD_LOGIC;
	STATE2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Line_Robot_2
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	MD0 => MD0,
	MD1 => MD1,
	ME0 => ME0,
	ME1 => ME1,
	SD => SD,
	SE => SE,
	STATE0 => STATE0,
	STATE1 => STATE1,
	STATE2 => STATE2
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 500000 ps;
	clock <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- SE
t_prcs_SE: PROCESS
BEGIN
	SE <= '0';
	WAIT FOR 5120000 ps;
	SE <= '1';
	WAIT FOR 8320000 ps;
	SE <= '0';
	WAIT FOR 7040000 ps;
	SE <= '1';
	WAIT FOR 16640000 ps;
	SE <= '0';
	WAIT FOR 3840000 ps;
	SE <= '1';
	WAIT FOR 10240000 ps;
	SE <= '0';
	WAIT FOR 7040000 ps;
	SE <= '1';
	WAIT FOR 5760000 ps;
	SE <= '0';
	WAIT FOR 10880000 ps;
	SE <= '1';
	WAIT FOR 8960000 ps;
	SE <= '0';
WAIT;
END PROCESS t_prcs_SE;

-- SD
t_prcs_SD: PROCESS
BEGIN
	SD <= '0';
	WAIT FOR 5120000 ps;
	SD <= '1';
	WAIT FOR 8320000 ps;
	SD <= '0';
	WAIT FOR 7040000 ps;
	SD <= '1';
	WAIT FOR 5120000 ps;
	SD <= '0';
	WAIT FOR 5120000 ps;
	SD <= '1';
	WAIT FOR 16640000 ps;
	SD <= '0';
	WAIT FOR 10880000 ps;
	SD <= '1';
	WAIT FOR 10240000 ps;
	SD <= '0';
	WAIT FOR 6400000 ps;
	SD <= '1';
	WAIT FOR 8960000 ps;
	SD <= '0';
WAIT;
END PROCESS t_prcs_SD;
END Line_Robot_2_arch;
