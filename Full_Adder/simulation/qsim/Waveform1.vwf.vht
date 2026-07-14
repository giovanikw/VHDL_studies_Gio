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
-- Generated on "07/13/2026 13:52:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          rca_adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rca_adder_vhd_vec_tst IS
END rca_adder_vhd_vec_tst;
ARCHITECTURE rca_adder_arch OF rca_adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL An : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Bn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin0 : STD_LOGIC;
SIGNAL Sn : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT rca_adder
	PORT (
	An : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Bn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin0 : IN STD_LOGIC;
	Sn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : rca_adder
	PORT MAP (
-- list connections between master ports and signals
	An => An,
	Bn => Bn,
	Cin0 => Cin0,
	Sn => Sn
	);
-- An[3]
t_prcs_An_3: PROCESS
BEGIN
	An(3) <= '1';
	WAIT FOR 140000 ps;
	An(3) <= '0';
	WAIT FOR 20000 ps;
	An(3) <= '1';
	WAIT FOR 40000 ps;
	An(3) <= '0';
	WAIT FOR 40000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 40000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 60000 ps;
	An(3) <= '1';
	WAIT FOR 40000 ps;
	An(3) <= '0';
	WAIT FOR 20000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 120000 ps;
	An(3) <= '1';
	WAIT FOR 120000 ps;
	An(3) <= '0';
	WAIT FOR 20000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 20000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 40000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 80000 ps;
	An(3) <= '1';
	WAIT FOR 20000 ps;
	An(3) <= '0';
	WAIT FOR 40000 ps;
	An(3) <= '1';
WAIT;
END PROCESS t_prcs_An_3;
-- An[2]
t_prcs_An_2: PROCESS
BEGIN
	An(2) <= '0';
	WAIT FOR 60000 ps;
	An(2) <= '1';
	WAIT FOR 40000 ps;
	An(2) <= '0';
	WAIT FOR 60000 ps;
	An(2) <= '1';
	WAIT FOR 40000 ps;
	An(2) <= '0';
	WAIT FOR 40000 ps;
	An(2) <= '1';
	WAIT FOR 60000 ps;
	An(2) <= '0';
	WAIT FOR 40000 ps;
	An(2) <= '1';
	WAIT FOR 20000 ps;
	An(2) <= '0';
	WAIT FOR 20000 ps;
	An(2) <= '1';
	WAIT FOR 20000 ps;
	An(2) <= '0';
	WAIT FOR 20000 ps;
	An(2) <= '1';
	WAIT FOR 20000 ps;
	An(2) <= '0';
	WAIT FOR 20000 ps;
	An(2) <= '1';
	WAIT FOR 100000 ps;
	An(2) <= '0';
	WAIT FOR 40000 ps;
	An(2) <= '1';
	WAIT FOR 20000 ps;
	An(2) <= '0';
	WAIT FOR 20000 ps;
	An(2) <= '1';
	WAIT FOR 40000 ps;
	An(2) <= '0';
	WAIT FOR 20000 ps;
	An(2) <= '1';
	WAIT FOR 100000 ps;
	An(2) <= '0';
	WAIT FOR 40000 ps;
	An(2) <= '1';
	WAIT FOR 20000 ps;
	An(2) <= '0';
	WAIT FOR 80000 ps;
	An(2) <= '1';
	WAIT FOR 40000 ps;
	An(2) <= '0';
WAIT;
END PROCESS t_prcs_An_2;
-- An[1]
t_prcs_An_1: PROCESS
BEGIN
	An(1) <= '1';
	WAIT FOR 60000 ps;
	An(1) <= '0';
	WAIT FOR 60000 ps;
	An(1) <= '1';
	WAIT FOR 40000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 40000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 60000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 40000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 80000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 60000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 40000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 40000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 60000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 20000 ps;
	An(1) <= '1';
	WAIT FOR 20000 ps;
	An(1) <= '0';
	WAIT FOR 80000 ps;
	An(1) <= '1';
WAIT;
END PROCESS t_prcs_An_1;
-- An[0]
t_prcs_An_0: PROCESS
BEGIN
	An(0) <= '0';
	WAIT FOR 60000 ps;
	An(0) <= '1';
	WAIT FOR 40000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 40000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 60000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 40000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 80000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 40000 ps;
	An(0) <= '0';
	WAIT FOR 40000 ps;
	An(0) <= '1';
	WAIT FOR 100000 ps;
	An(0) <= '0';
	WAIT FOR 20000 ps;
	An(0) <= '1';
	WAIT FOR 20000 ps;
	An(0) <= '0';
WAIT;
END PROCESS t_prcs_An_0;
-- Bn[3]
t_prcs_Bn_3: PROCESS
BEGIN
	Bn(3) <= '0';
	WAIT FOR 60000 ps;
	Bn(3) <= '1';
	WAIT FOR 120000 ps;
	Bn(3) <= '0';
	WAIT FOR 40000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 20000 ps;
	Bn(3) <= '1';
	WAIT FOR 40000 ps;
	Bn(3) <= '0';
	WAIT FOR 40000 ps;
	Bn(3) <= '1';
	WAIT FOR 80000 ps;
	Bn(3) <= '0';
	WAIT FOR 40000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 80000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 80000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 40000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 20000 ps;
	Bn(3) <= '1';
	WAIT FOR 40000 ps;
	Bn(3) <= '0';
	WAIT FOR 20000 ps;
	Bn(3) <= '1';
	WAIT FOR 20000 ps;
	Bn(3) <= '0';
	WAIT FOR 20000 ps;
	Bn(3) <= '1';
WAIT;
END PROCESS t_prcs_Bn_3;
-- Bn[2]
t_prcs_Bn_2: PROCESS
BEGIN
	Bn(2) <= '0';
	WAIT FOR 60000 ps;
	Bn(2) <= '1';
	WAIT FOR 60000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 40000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 80000 ps;
	Bn(2) <= '0';
	WAIT FOR 40000 ps;
	Bn(2) <= '1';
	WAIT FOR 40000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 20000 ps;
	Bn(2) <= '0';
	WAIT FOR 80000 ps;
	Bn(2) <= '1';
	WAIT FOR 40000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 20000 ps;
	Bn(2) <= '0';
	WAIT FOR 80000 ps;
	Bn(2) <= '1';
	WAIT FOR 60000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 160000 ps;
	Bn(2) <= '0';
	WAIT FOR 40000 ps;
	Bn(2) <= '1';
	WAIT FOR 20000 ps;
	Bn(2) <= '0';
	WAIT FOR 20000 ps;
	Bn(2) <= '1';
	WAIT FOR 20000 ps;
	Bn(2) <= '0';
WAIT;
END PROCESS t_prcs_Bn_2;
-- Bn[1]
t_prcs_Bn_1: PROCESS
BEGIN
	Bn(1) <= '1';
	WAIT FOR 80000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 40000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 40000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 80000 ps;
	Bn(1) <= '0';
	WAIT FOR 40000 ps;
	Bn(1) <= '1';
	WAIT FOR 40000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 40000 ps;
	Bn(1) <= '0';
	WAIT FOR 40000 ps;
	Bn(1) <= '1';
	WAIT FOR 80000 ps;
	Bn(1) <= '0';
	WAIT FOR 60000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 40000 ps;
	Bn(1) <= '1';
	WAIT FOR 40000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 20000 ps;
	Bn(1) <= '0';
	WAIT FOR 20000 ps;
	Bn(1) <= '1';
	WAIT FOR 40000 ps;
	Bn(1) <= '0';
	WAIT FOR 40000 ps;
	Bn(1) <= '1';
WAIT;
END PROCESS t_prcs_Bn_1;
-- Bn[0]
t_prcs_Bn_0: PROCESS
BEGIN
	Bn(0) <= '1';
	WAIT FOR 40000 ps;
	Bn(0) <= '0';
	WAIT FOR 80000 ps;
	Bn(0) <= '1';
	WAIT FOR 40000 ps;
	Bn(0) <= '0';
	WAIT FOR 80000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 100000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 40000 ps;
	Bn(0) <= '0';
	WAIT FOR 40000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 60000 ps;
	Bn(0) <= '0';
	WAIT FOR 60000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 60000 ps;
	Bn(0) <= '0';
	WAIT FOR 40000 ps;
	Bn(0) <= '1';
	WAIT FOR 20000 ps;
	Bn(0) <= '0';
	WAIT FOR 20000 ps;
	Bn(0) <= '1';
	WAIT FOR 40000 ps;
	Bn(0) <= '0';
WAIT;
END PROCESS t_prcs_Bn_0;

-- Cin0
t_prcs_Cin0: PROCESS
BEGIN
	Cin0 <= '0';
WAIT;
END PROCESS t_prcs_Cin0;
END rca_adder_arch;
