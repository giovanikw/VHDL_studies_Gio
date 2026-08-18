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
-- Generated on "08/18/2026 10:14:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toplevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toplevel_vhd_vec_tst IS
END toplevel_vhd_vec_tst;
ARCHITECTURE toplevel_arch OF toplevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL Carry : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Sum : STD_LOGIC;
COMPONENT toplevel
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	Carry : BUFFER STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	D : IN STD_LOGIC;
	Sum : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : toplevel
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	Carry => Carry,
	Cin => Cin,
	Cout => Cout,
	D => D,
	Sum => Sum
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		C <= '0';
		WAIT FOR 40000 ps;
		C <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D <= '0';
		WAIT FOR 80000 ps;
		D <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Cin <= '0';
		WAIT FOR 160000 ps;
		Cin <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
END toplevel_arch;
