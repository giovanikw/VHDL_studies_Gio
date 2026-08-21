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

-- DATE "08/21/2026 11:00:56"

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
	An : IN std_logic_vector(3 DOWNTO 0);
	Bn : IN std_logic_vector(3 DOWNTO 0);
	Cn : IN std_logic_vector(3 DOWNTO 0);
	Dn : IN std_logic_vector(3 DOWNTO 0);
	Cin0 : IN std_logic;
	Sumout : OUT std_logic_vector(5 DOWNTO 0)
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
SIGNAL ww_An : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin0 : std_logic;
SIGNAL ww_Sumout : std_logic_vector(5 DOWNTO 0);
SIGNAL \Sumout[0]~output_o\ : std_logic;
SIGNAL \Sumout[1]~output_o\ : std_logic;
SIGNAL \Sumout[2]~output_o\ : std_logic;
SIGNAL \Sumout[3]~output_o\ : std_logic;
SIGNAL \Sumout[4]~output_o\ : std_logic;
SIGNAL \Sumout[5]~output_o\ : std_logic;
SIGNAL \Cin0~input_o\ : std_logic;
SIGNAL \An[0]~input_o\ : std_logic;
SIGNAL \Bn[0]~input_o\ : std_logic;
SIGNAL \Cn[0]~input_o\ : std_logic;
SIGNAL \Dn[0]~input_o\ : std_logic;
SIGNAL \compressors|comp:0:comp|Xor3~0_combout\ : std_logic;
SIGNAL \compressors|comp:0:comp|Sum~combout\ : std_logic;
SIGNAL \An[1]~input_o\ : std_logic;
SIGNAL \Bn[1]~input_o\ : std_logic;
SIGNAL \Cn[1]~input_o\ : std_logic;
SIGNAL \Dn[1]~input_o\ : std_logic;
SIGNAL \compressors|comp:1:comp|Xor3~0_combout\ : std_logic;
SIGNAL \compressors|comp:1:comp|Sum~combout\ : std_logic;
SIGNAL \recomb0|Sout~combout\ : std_logic;
SIGNAL \recomb0|Cout~combout\ : std_logic;
SIGNAL \compressors|comp:1:comp|mux1|Q~0_combout\ : std_logic;
SIGNAL \compressors|comp:0:comp|mux1|Q~0_combout\ : std_logic;
SIGNAL \compressors|comp:1:comp|mux2|Q~0_combout\ : std_logic;
SIGNAL \An[2]~input_o\ : std_logic;
SIGNAL \Bn[2]~input_o\ : std_logic;
SIGNAL \Cn[2]~input_o\ : std_logic;
SIGNAL \Dn[2]~input_o\ : std_logic;
SIGNAL \compressors|comp:2:comp|Xor3~0_combout\ : std_logic;
SIGNAL \recomb1|Sout~0_combout\ : std_logic;
SIGNAL \recomb1|Cout~0_combout\ : std_logic;
SIGNAL \compressors|comp:2:comp|mux1|Q~0_combout\ : std_logic;
SIGNAL \compressors|comp:2:comp|mux2|Q~0_combout\ : std_logic;
SIGNAL \An[3]~input_o\ : std_logic;
SIGNAL \Bn[3]~input_o\ : std_logic;
SIGNAL \Cn[3]~input_o\ : std_logic;
SIGNAL \Dn[3]~input_o\ : std_logic;
SIGNAL \compressors|comp:3:comp|Xor3~0_combout\ : std_logic;
SIGNAL \recomb2|Sout~combout\ : std_logic;
SIGNAL \compressors|comp:3:comp|mux2|Q~0_combout\ : std_logic;
SIGNAL \recomb2|Cout~0_combout\ : std_logic;
SIGNAL \compressors|comp:3:comp|mux1|Q~0_combout\ : std_logic;
SIGNAL \recomb3|Sout~combout\ : std_logic;
SIGNAL \recomb3|Cout~0_combout\ : std_logic;

BEGIN

ww_An <= An;
ww_Bn <= Bn;
ww_Cn <= Cn;
ww_Dn <= Dn;
ww_Cin0 <= Cin0;
Sumout <= ww_Sumout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Sumout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \compressors|comp:0:comp|Sum~combout\,
	devoe => ww_devoe,
	o => \Sumout[0]~output_o\);

\Sumout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recomb0|Sout~combout\,
	devoe => ww_devoe,
	o => \Sumout[1]~output_o\);

\Sumout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recomb1|Sout~0_combout\,
	devoe => ww_devoe,
	o => \Sumout[2]~output_o\);

\Sumout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recomb2|Sout~combout\,
	devoe => ww_devoe,
	o => \Sumout[3]~output_o\);

\Sumout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recomb3|Sout~combout\,
	devoe => ww_devoe,
	o => \Sumout[4]~output_o\);

\Sumout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recomb3|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Sumout[5]~output_o\);

\Cin0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin0,
	o => \Cin0~input_o\);

\An[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(0),
	o => \An[0]~input_o\);

\Bn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(0),
	o => \Bn[0]~input_o\);

\Cn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cn(0),
	o => \Cn[0]~input_o\);

\Dn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dn(0),
	o => \Dn[0]~input_o\);

\compressors|comp:0:comp|Xor3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:0:comp|Xor3~0_combout\ = \An[0]~input_o\ $ (\Bn[0]~input_o\ $ (\Cn[0]~input_o\ $ (\Dn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[0]~input_o\,
	datab => \Bn[0]~input_o\,
	datac => \Cn[0]~input_o\,
	datad => \Dn[0]~input_o\,
	combout => \compressors|comp:0:comp|Xor3~0_combout\);

\compressors|comp:0:comp|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:0:comp|Sum~combout\ = \Cin0~input_o\ $ (\compressors|comp:0:comp|Xor3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cin0~input_o\,
	datad => \compressors|comp:0:comp|Xor3~0_combout\,
	combout => \compressors|comp:0:comp|Sum~combout\);

\An[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(1),
	o => \An[1]~input_o\);

\Bn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(1),
	o => \Bn[1]~input_o\);

\Cn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cn(1),
	o => \Cn[1]~input_o\);

\Dn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dn(1),
	o => \Dn[1]~input_o\);

\compressors|comp:1:comp|Xor3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:1:comp|Xor3~0_combout\ = \An[1]~input_o\ $ (\Bn[1]~input_o\ $ (\Cn[1]~input_o\ $ (\Dn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[1]~input_o\,
	datab => \Bn[1]~input_o\,
	datac => \Cn[1]~input_o\,
	datad => \Dn[1]~input_o\,
	combout => \compressors|comp:1:comp|Xor3~0_combout\);

\compressors|comp:1:comp|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:1:comp|Sum~combout\ = \compressors|comp:1:comp|Xor3~0_combout\ $ (((\An[0]~input_o\ & ((\Bn[0]~input_o\) # (\Cn[0]~input_o\))) # (!\An[0]~input_o\ & (\Bn[0]~input_o\ & \Cn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[0]~input_o\,
	datab => \Bn[0]~input_o\,
	datac => \Cn[0]~input_o\,
	datad => \compressors|comp:1:comp|Xor3~0_combout\,
	combout => \compressors|comp:1:comp|Sum~combout\);

\recomb0|Sout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb0|Sout~combout\ = \compressors|comp:1:comp|Sum~combout\ $ (((\compressors|comp:0:comp|Xor3~0_combout\ & ((\Cin0~input_o\))) # (!\compressors|comp:0:comp|Xor3~0_combout\ & (\Dn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:0:comp|Xor3~0_combout\,
	datab => \Dn[0]~input_o\,
	datac => \Cin0~input_o\,
	datad => \compressors|comp:1:comp|Sum~combout\,
	combout => \recomb0|Sout~combout\);

\recomb0|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb0|Cout~combout\ = (\compressors|comp:1:comp|Sum~combout\ & ((\compressors|comp:0:comp|Xor3~0_combout\ & (\Cin0~input_o\)) # (!\compressors|comp:0:comp|Xor3~0_combout\ & ((\Dn[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:1:comp|Sum~combout\,
	datab => \Cin0~input_o\,
	datac => \Dn[0]~input_o\,
	datad => \compressors|comp:0:comp|Xor3~0_combout\,
	combout => \recomb0|Cout~combout\);

\compressors|comp:1:comp|mux1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:1:comp|mux1|Q~0_combout\ = (\An[1]~input_o\ & ((\Bn[1]~input_o\) # (\Cn[1]~input_o\))) # (!\An[1]~input_o\ & (\Bn[1]~input_o\ & \Cn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[1]~input_o\,
	datab => \Bn[1]~input_o\,
	datac => \Cn[1]~input_o\,
	combout => \compressors|comp:1:comp|mux1|Q~0_combout\);

\compressors|comp:0:comp|mux1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:0:comp|mux1|Q~0_combout\ = (\An[0]~input_o\ & ((\Bn[0]~input_o\) # (\Cn[0]~input_o\))) # (!\An[0]~input_o\ & (\Bn[0]~input_o\ & \Cn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[0]~input_o\,
	datab => \Bn[0]~input_o\,
	datac => \Cn[0]~input_o\,
	combout => \compressors|comp:0:comp|mux1|Q~0_combout\);

\compressors|comp:1:comp|mux2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:1:comp|mux2|Q~0_combout\ = (\compressors|comp:1:comp|Xor3~0_combout\ & (\compressors|comp:0:comp|mux1|Q~0_combout\)) # (!\compressors|comp:1:comp|Xor3~0_combout\ & ((\Dn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:0:comp|mux1|Q~0_combout\,
	datab => \Dn[1]~input_o\,
	datad => \compressors|comp:1:comp|Xor3~0_combout\,
	combout => \compressors|comp:1:comp|mux2|Q~0_combout\);

\An[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(2),
	o => \An[2]~input_o\);

\Bn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(2),
	o => \Bn[2]~input_o\);

\Cn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cn(2),
	o => \Cn[2]~input_o\);

\Dn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dn(2),
	o => \Dn[2]~input_o\);

\compressors|comp:2:comp|Xor3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:2:comp|Xor3~0_combout\ = \An[2]~input_o\ $ (\Bn[2]~input_o\ $ (\Cn[2]~input_o\ $ (\Dn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[2]~input_o\,
	datab => \Bn[2]~input_o\,
	datac => \Cn[2]~input_o\,
	datad => \Dn[2]~input_o\,
	combout => \compressors|comp:2:comp|Xor3~0_combout\);

\recomb1|Sout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb1|Sout~0_combout\ = \recomb0|Cout~combout\ $ (\compressors|comp:1:comp|mux1|Q~0_combout\ $ (\compressors|comp:1:comp|mux2|Q~0_combout\ $ (\compressors|comp:2:comp|Xor3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recomb0|Cout~combout\,
	datab => \compressors|comp:1:comp|mux1|Q~0_combout\,
	datac => \compressors|comp:1:comp|mux2|Q~0_combout\,
	datad => \compressors|comp:2:comp|Xor3~0_combout\,
	combout => \recomb1|Sout~0_combout\);

\recomb1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb1|Cout~0_combout\ = (\recomb0|Cout~combout\ & ((\compressors|comp:1:comp|mux2|Q~0_combout\) # (\compressors|comp:2:comp|Xor3~0_combout\ $ (\compressors|comp:1:comp|mux1|Q~0_combout\)))) # (!\recomb0|Cout~combout\ & 
-- (\compressors|comp:1:comp|mux2|Q~0_combout\ & (\compressors|comp:2:comp|Xor3~0_combout\ $ (\compressors|comp:1:comp|mux1|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:2:comp|Xor3~0_combout\,
	datab => \compressors|comp:1:comp|mux1|Q~0_combout\,
	datac => \recomb0|Cout~combout\,
	datad => \compressors|comp:1:comp|mux2|Q~0_combout\,
	combout => \recomb1|Cout~0_combout\);

\compressors|comp:2:comp|mux1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:2:comp|mux1|Q~0_combout\ = (\An[2]~input_o\ & ((\Bn[2]~input_o\) # (\Cn[2]~input_o\))) # (!\An[2]~input_o\ & (\Bn[2]~input_o\ & \Cn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[2]~input_o\,
	datab => \Bn[2]~input_o\,
	datac => \Cn[2]~input_o\,
	combout => \compressors|comp:2:comp|mux1|Q~0_combout\);

\compressors|comp:2:comp|mux2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:2:comp|mux2|Q~0_combout\ = (\compressors|comp:2:comp|Xor3~0_combout\ & (\compressors|comp:1:comp|mux1|Q~0_combout\)) # (!\compressors|comp:2:comp|Xor3~0_combout\ & ((\Dn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:1:comp|mux1|Q~0_combout\,
	datab => \Dn[2]~input_o\,
	datad => \compressors|comp:2:comp|Xor3~0_combout\,
	combout => \compressors|comp:2:comp|mux2|Q~0_combout\);

\An[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(3),
	o => \An[3]~input_o\);

\Bn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(3),
	o => \Bn[3]~input_o\);

\Cn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cn(3),
	o => \Cn[3]~input_o\);

\Dn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dn(3),
	o => \Dn[3]~input_o\);

\compressors|comp:3:comp|Xor3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:3:comp|Xor3~0_combout\ = \An[3]~input_o\ $ (\Bn[3]~input_o\ $ (\Cn[3]~input_o\ $ (\Dn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[3]~input_o\,
	datab => \Bn[3]~input_o\,
	datac => \Cn[3]~input_o\,
	datad => \Dn[3]~input_o\,
	combout => \compressors|comp:3:comp|Xor3~0_combout\);

\recomb2|Sout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb2|Sout~combout\ = \recomb1|Cout~0_combout\ $ (\compressors|comp:2:comp|mux1|Q~0_combout\ $ (\compressors|comp:2:comp|mux2|Q~0_combout\ $ (\compressors|comp:3:comp|Xor3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recomb1|Cout~0_combout\,
	datab => \compressors|comp:2:comp|mux1|Q~0_combout\,
	datac => \compressors|comp:2:comp|mux2|Q~0_combout\,
	datad => \compressors|comp:3:comp|Xor3~0_combout\,
	combout => \recomb2|Sout~combout\);

\compressors|comp:3:comp|mux2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:3:comp|mux2|Q~0_combout\ = (\compressors|comp:3:comp|Xor3~0_combout\ & (\compressors|comp:2:comp|mux1|Q~0_combout\)) # (!\compressors|comp:3:comp|Xor3~0_combout\ & ((\Dn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:2:comp|mux1|Q~0_combout\,
	datab => \Dn[3]~input_o\,
	datad => \compressors|comp:3:comp|Xor3~0_combout\,
	combout => \compressors|comp:3:comp|mux2|Q~0_combout\);

\recomb2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb2|Cout~0_combout\ = (\recomb1|Cout~0_combout\ & ((\compressors|comp:2:comp|mux2|Q~0_combout\) # (\compressors|comp:3:comp|Xor3~0_combout\ $ (\compressors|comp:2:comp|mux1|Q~0_combout\)))) # (!\recomb1|Cout~0_combout\ & 
-- (\compressors|comp:2:comp|mux2|Q~0_combout\ & (\compressors|comp:3:comp|Xor3~0_combout\ $ (\compressors|comp:2:comp|mux1|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:3:comp|Xor3~0_combout\,
	datab => \compressors|comp:2:comp|mux1|Q~0_combout\,
	datac => \recomb1|Cout~0_combout\,
	datad => \compressors|comp:2:comp|mux2|Q~0_combout\,
	combout => \recomb2|Cout~0_combout\);

\compressors|comp:3:comp|mux1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compressors|comp:3:comp|mux1|Q~0_combout\ = (\An[3]~input_o\ & ((\Bn[3]~input_o\) # (\Cn[3]~input_o\))) # (!\An[3]~input_o\ & (\Bn[3]~input_o\ & \Cn[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \An[3]~input_o\,
	datab => \Bn[3]~input_o\,
	datac => \Cn[3]~input_o\,
	combout => \compressors|comp:3:comp|mux1|Q~0_combout\);

\recomb3|Sout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb3|Sout~combout\ = \compressors|comp:3:comp|mux2|Q~0_combout\ $ (\recomb2|Cout~0_combout\ $ (\compressors|comp:3:comp|mux1|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:3:comp|mux2|Q~0_combout\,
	datab => \recomb2|Cout~0_combout\,
	datac => \compressors|comp:3:comp|mux1|Q~0_combout\,
	combout => \recomb3|Sout~combout\);

\recomb3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recomb3|Cout~0_combout\ = (\compressors|comp:3:comp|mux2|Q~0_combout\ & ((\recomb2|Cout~0_combout\) # (\compressors|comp:3:comp|mux1|Q~0_combout\))) # (!\compressors|comp:3:comp|mux2|Q~0_combout\ & (\recomb2|Cout~0_combout\ & 
-- \compressors|comp:3:comp|mux1|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compressors|comp:3:comp|mux2|Q~0_combout\,
	datab => \recomb2|Cout~0_combout\,
	datac => \compressors|comp:3:comp|mux1|Q~0_combout\,
	combout => \recomb3|Cout~0_combout\);

ww_Sumout(0) <= \Sumout[0]~output_o\;

ww_Sumout(1) <= \Sumout[1]~output_o\;

ww_Sumout(2) <= \Sumout[2]~output_o\;

ww_Sumout(3) <= \Sumout[3]~output_o\;

ww_Sumout(4) <= \Sumout[4]~output_o\;

ww_Sumout(5) <= \Sumout[5]~output_o\;
END structure;


