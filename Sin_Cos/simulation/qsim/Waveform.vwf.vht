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
-- Generated on "02/18/2025 15:37:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sincos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sincos_vhd_vec_tst IS
END sincos_vhd_vec_tst;
ARCHITECTURE sincos_arch OF sincos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL angulo : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL sincos : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT sincos
	PORT (
	angulo : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	sincos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sincos
	PORT MAP (
-- list connections between master ports and signals
	angulo => angulo,
	clk => clk,
	sincos => sincos
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
END sincos_arch;
