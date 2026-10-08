-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/08/2026 15:16:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          metodoant
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY metodoant_vhd_vec_tst IS
END metodoant_vhd_vec_tst;
ARCHITECTURE metodoant_arch OF metodoant_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Saida : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Somatorio : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Target : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT metodoant
	PORT (
	CLK : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Saida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Somatorio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Target : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : metodoant
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	reset => reset,
	Saida => Saida,
	Somatorio => Somatorio,
	Target => Target
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- Target[7]
t_prcs_Target_7: PROCESS
BEGIN
	Target(7) <= '0';
WAIT;
END PROCESS t_prcs_Target_7;
-- Target[6]
t_prcs_Target_6: PROCESS
BEGIN
	Target(6) <= '0';
WAIT;
END PROCESS t_prcs_Target_6;
-- Target[5]
t_prcs_Target_5: PROCESS
BEGIN
	Target(5) <= '0';
WAIT;
END PROCESS t_prcs_Target_5;
-- Target[4]
t_prcs_Target_4: PROCESS
BEGIN
	Target(4) <= '0';
WAIT;
END PROCESS t_prcs_Target_4;
-- Target[3]
t_prcs_Target_3: PROCESS
BEGIN
	Target(3) <= '0';
WAIT;
END PROCESS t_prcs_Target_3;
-- Target[2]
t_prcs_Target_2: PROCESS
BEGIN
	Target(2) <= '0';
WAIT;
END PROCESS t_prcs_Target_2;
-- Target[1]
t_prcs_Target_1: PROCESS
BEGIN
	Target(1) <= '0';
WAIT;
END PROCESS t_prcs_Target_1;
-- Target[0]
t_prcs_Target_0: PROCESS
BEGIN
	Target(0) <= '0';
WAIT;
END PROCESS t_prcs_Target_0;
END metodoant_arch;
