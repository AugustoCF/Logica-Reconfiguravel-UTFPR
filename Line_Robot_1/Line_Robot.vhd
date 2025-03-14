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

-- Generated by Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
-- Created on Wed Feb 19 23:58:17 2025

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Line_Robot IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        SE : IN STD_LOGIC := '0';
        SD : IN STD_LOGIC := '0';
        ME2 : OUT STD_LOGIC;
        ME1 : OUT STD_LOGIC;
        MD2 : OUT STD_LOGIC;
        MD1 : OUT STD_LOGIC;
        STATE2 : OUT STD_LOGIC;
        STATE1 : OUT STD_LOGIC
    );
END Line_Robot;

ARCHITECTURE BEHAVIOR OF Line_Robot IS
    TYPE type_fstate IS (STOP,MAX_SPEED,TURN_E,TURN_D);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,SE,SD)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= STOP;
            ME2 <= '0';
            ME1 <= '0';
            MD2 <= '0';
            MD1 <= '0';
            STATE2 <= '0';
            STATE1 <= '0';
        ELSE
            ME2 <= '0';
            ME1 <= '0';
            MD2 <= '0';
            MD1 <= '0';
            STATE2 <= '0';
            STATE1 <= '0';
            CASE fstate IS
                WHEN STOP =>
                    IF ((NOT((SE = '1')) AND NOT((SD = '1')))) THEN
                        reg_fstate <= STOP;
                    ELSIF (((SE = '1') AND (SD = '1'))) THEN
                        reg_fstate <= MAX_SPEED;
                    ELSIF (((SE = '1') AND NOT((SD = '1')))) THEN
                        reg_fstate <= TURN_E;
                    ELSIF ((NOT((SE = '1')) AND (SD = '1'))) THEN
                        reg_fstate <= TURN_D;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= STOP;
                    END IF;

                    MD1 <= '0';

                    MD2 <= '0';

                    ME1 <= '0';

                    ME2 <= '0';

                    STATE1 <= '0';

                    STATE2 <= '0';
                WHEN MAX_SPEED =>
                    IF (((SE = '1') AND (SD = '1'))) THEN
                        reg_fstate <= MAX_SPEED;
                    ELSIF ((NOT((SE = '1')) AND NOT((SD = '1')))) THEN
                        reg_fstate <= STOP;
                    ELSIF (((SE = '1') AND NOT((SD = '1')))) THEN
                        reg_fstate <= TURN_E;
                    ELSIF ((NOT((SE = '1')) AND (SD = '1'))) THEN
                        reg_fstate <= TURN_D;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= MAX_SPEED;
                    END IF;

                    MD1 <= '1';

                    MD2 <= '1';

                    ME1 <= '1';

                    ME2 <= '1';

                    STATE1 <= '1';

                    STATE2 <= '1';
                WHEN TURN_E =>
                    IF (((SE = '1') AND NOT((SD = '1')))) THEN
                        reg_fstate <= TURN_E;
                    ELSIF ((NOT((SE = '1')) AND NOT((SD = '1')))) THEN
                        reg_fstate <= STOP;
                    ELSIF (((SE = '1') AND (SD = '1'))) THEN
                        reg_fstate <= MAX_SPEED;
                    ELSIF ((NOT((SE = '1')) AND (SD = '1'))) THEN
                        reg_fstate <= TURN_D;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= TURN_E;
                    END IF;

                    MD1 <= '1';

                    MD2 <= '1';

                    ME1 <= '1';

                    ME2 <= '0';

                    STATE1 <= '0';

                    STATE2 <= '1';
                WHEN TURN_D =>
                    IF ((NOT((SE = '1')) AND (SD = '1'))) THEN
                        reg_fstate <= TURN_D;
                    ELSIF ((NOT((SE = '1')) AND NOT((SD = '1')))) THEN
                        reg_fstate <= STOP;
                    ELSIF (((SE = '1') AND (SD = '1'))) THEN
                        reg_fstate <= MAX_SPEED;
                    ELSIF (((SE = '1') AND NOT((SD = '1')))) THEN
                        reg_fstate <= TURN_E;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= TURN_D;
                    END IF;

                    MD1 <= '1';

                    MD2 <= '0';

                    ME1 <= '1';

                    ME2 <= '1';

                    STATE1 <= '1';

                    STATE2 <= '0';
                WHEN OTHERS => 
                    ME2 <= 'X';
                    ME1 <= 'X';
                    MD2 <= 'X';
                    MD1 <= 'X';
                    STATE2 <= 'X';
                    STATE1 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
