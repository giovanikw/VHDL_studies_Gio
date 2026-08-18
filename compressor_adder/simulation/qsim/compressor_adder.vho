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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "08/18/2026 10:14:56"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	Carry : BUFFER std_logic;
	Sum : BUFFER std_logic
	);
END toplevel;

ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \Sum~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \mux1|Q~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Xor1~combout\ : std_logic;
SIGNAL \mux2|Q~0_combout\ : std_logic;
SIGNAL \Xor4~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_Cin <= Cin;
Cout <= ww_Cout;
Carry <= ww_Carry;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux1|Q~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\Carry~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2|Q~0_combout\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

\Sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Xor4~0_combout\,
	devoe => ww_devoe,
	o => \Sum~output_o\);

\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

\mux1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1|Q~0_combout\ = (\A~input_o\ & ((\B~input_o\) # (\C~input_o\))) # (!\A~input_o\ & (\B~input_o\ & \C~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	combout => \mux1|Q~0_combout\);

\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

Xor1 : cycloneive_lcell_comb
-- Equation(s):
-- \Xor1~combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \Xor1~combout\);

\mux2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2|Q~0_combout\ = (\Cin~input_o\ & ((\D~input_o\) # (\Xor1~combout\ $ (\C~input_o\)))) # (!\Cin~input_o\ & (\D~input_o\ & (\Xor1~combout\ $ (\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \D~input_o\,
	datac => \Xor1~combout\,
	datad => \C~input_o\,
	combout => \mux2|Q~0_combout\);

\Xor4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Xor4~0_combout\ = \Xor1~combout\ $ (\C~input_o\ $ (\Cin~input_o\ $ (\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xor1~combout\,
	datab => \C~input_o\,
	datac => \Cin~input_o\,
	datad => \D~input_o\,
	combout => \Xor4~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_Carry <= \Carry~output_o\;

ww_Sum <= \Sum~output_o\;
END structure;


