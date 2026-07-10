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

-- DATE "07/10/2026 18:33:28"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rca_adder IS
    PORT (
	An : IN std_logic_vector(3 DOWNTO 0);
	Bn : IN std_logic_vector(3 DOWNTO 0);
	Sn : OUT std_logic_vector(3 DOWNTO 0)
	);
END rca_adder;

ARCHITECTURE structure OF rca_adder IS
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
SIGNAL ww_Sn : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sn[0]~output_o\ : std_logic;
SIGNAL \Sn[1]~output_o\ : std_logic;
SIGNAL \Sn[2]~output_o\ : std_logic;
SIGNAL \Sn[3]~output_o\ : std_logic;
SIGNAL \An[0]~input_o\ : std_logic;
SIGNAL \Bn[0]~input_o\ : std_logic;
SIGNAL \rca_addergen:0:rca_addergen|s1~combout\ : std_logic;
SIGNAL \An[1]~input_o\ : std_logic;
SIGNAL \Bn[1]~input_o\ : std_logic;
SIGNAL \rca_addergen:1:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \An[2]~input_o\ : std_logic;
SIGNAL \Bn[2]~input_o\ : std_logic;
SIGNAL \rca_addergen:2:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:1:rca_addergen|Cout~combout\ : std_logic;
SIGNAL \An[3]~input_o\ : std_logic;
SIGNAL \Bn[3]~input_o\ : std_logic;
SIGNAL \rca_addergen:3:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:1:rca_addergen|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ALT_INV_Bn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[0]~input_o\ : std_logic;

BEGIN

ww_An <= An;
ww_Bn <= Bn;
Sn <= ww_Sn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\rca_addergen:1:rca_addergen|ALT_INV_Cout~combout\ <= NOT \rca_addergen:1:rca_addergen|Cout~combout\;
\ALT_INV_Bn[3]~input_o\ <= NOT \Bn[3]~input_o\;
\ALT_INV_An[3]~input_o\ <= NOT \An[3]~input_o\;
\ALT_INV_Bn[2]~input_o\ <= NOT \Bn[2]~input_o\;
\ALT_INV_An[2]~input_o\ <= NOT \An[2]~input_o\;
\ALT_INV_Bn[1]~input_o\ <= NOT \Bn[1]~input_o\;
\ALT_INV_An[1]~input_o\ <= NOT \An[1]~input_o\;
\ALT_INV_Bn[0]~input_o\ <= NOT \Bn[0]~input_o\;
\ALT_INV_An[0]~input_o\ <= NOT \An[0]~input_o\;

\Sn[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rca_addergen:0:rca_addergen|s1~combout\,
	devoe => ww_devoe,
	o => \Sn[0]~output_o\);

\Sn[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rca_addergen:1:rca_addergen|Sout~combout\,
	devoe => ww_devoe,
	o => \Sn[1]~output_o\);

\Sn[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rca_addergen:2:rca_addergen|Sout~combout\,
	devoe => ww_devoe,
	o => \Sn[2]~output_o\);

\Sn[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rca_addergen:3:rca_addergen|Sout~combout\,
	devoe => ww_devoe,
	o => \Sn[3]~output_o\);

\An[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(0),
	o => \An[0]~input_o\);

\Bn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(0),
	o => \Bn[0]~input_o\);

\rca_addergen:0:rca_addergen|s1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:0:rca_addergen|s1~combout\ = !\An[0]~input_o\ $ (!\Bn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_An[0]~input_o\,
	datab => \ALT_INV_Bn[0]~input_o\,
	combout => \rca_addergen:0:rca_addergen|s1~combout\);

\An[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(1),
	o => \An[1]~input_o\);

\Bn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(1),
	o => \Bn[1]~input_o\);

\rca_addergen:1:rca_addergen|Sout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:1:rca_addergen|Sout~combout\ = !\An[1]~input_o\ $ (!\Bn[1]~input_o\ $ (((\An[0]~input_o\ & \Bn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_An[0]~input_o\,
	datab => \ALT_INV_Bn[0]~input_o\,
	datac => \ALT_INV_An[1]~input_o\,
	datad => \ALT_INV_Bn[1]~input_o\,
	combout => \rca_addergen:1:rca_addergen|Sout~combout\);

\An[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(2),
	o => \An[2]~input_o\);

\Bn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(2),
	o => \Bn[2]~input_o\);

\rca_addergen:2:rca_addergen|Sout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:2:rca_addergen|Sout~combout\ = ( \An[2]~input_o\ & ( \Bn[2]~input_o\ & ( (!\An[1]~input_o\ & (\An[0]~input_o\ & (\Bn[0]~input_o\ & \Bn[1]~input_o\))) # (\An[1]~input_o\ & (((\An[0]~input_o\ & \Bn[0]~input_o\)) # (\Bn[1]~input_o\))) ) ) ) # ( 
-- !\An[2]~input_o\ & ( \Bn[2]~input_o\ & ( (!\An[1]~input_o\ & ((!\An[0]~input_o\) # ((!\Bn[0]~input_o\) # (!\Bn[1]~input_o\)))) # (\An[1]~input_o\ & (!\Bn[1]~input_o\ & ((!\An[0]~input_o\) # (!\Bn[0]~input_o\)))) ) ) ) # ( \An[2]~input_o\ & ( 
-- !\Bn[2]~input_o\ & ( (!\An[1]~input_o\ & ((!\An[0]~input_o\) # ((!\Bn[0]~input_o\) # (!\Bn[1]~input_o\)))) # (\An[1]~input_o\ & (!\Bn[1]~input_o\ & ((!\An[0]~input_o\) # (!\Bn[0]~input_o\)))) ) ) ) # ( !\An[2]~input_o\ & ( !\Bn[2]~input_o\ & ( 
-- (!\An[1]~input_o\ & (\An[0]~input_o\ & (\Bn[0]~input_o\ & \Bn[1]~input_o\))) # (\An[1]~input_o\ & (((\An[0]~input_o\ & \Bn[0]~input_o\)) # (\Bn[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111111111101110000011111110111000000000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_An[0]~input_o\,
	datab => \ALT_INV_Bn[0]~input_o\,
	datac => \ALT_INV_An[1]~input_o\,
	datad => \ALT_INV_Bn[1]~input_o\,
	datae => \ALT_INV_An[2]~input_o\,
	dataf => \ALT_INV_Bn[2]~input_o\,
	combout => \rca_addergen:2:rca_addergen|Sout~combout\);

\rca_addergen:1:rca_addergen|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:1:rca_addergen|Cout~combout\ = (!\An[1]~input_o\ & (\An[0]~input_o\ & (\Bn[0]~input_o\ & \Bn[1]~input_o\))) # (\An[1]~input_o\ & (((\An[0]~input_o\ & \Bn[0]~input_o\)) # (\Bn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_An[0]~input_o\,
	datab => \ALT_INV_Bn[0]~input_o\,
	datac => \ALT_INV_An[1]~input_o\,
	datad => \ALT_INV_Bn[1]~input_o\,
	combout => \rca_addergen:1:rca_addergen|Cout~combout\);

\An[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_An(3),
	o => \An[3]~input_o\);

\Bn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bn(3),
	o => \Bn[3]~input_o\);

\rca_addergen:3:rca_addergen|Sout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:3:rca_addergen|Sout~combout\ = ( \Bn[3]~input_o\ & ( !\An[3]~input_o\ $ (((!\rca_addergen:1:rca_addergen|Cout~combout\ & (\An[2]~input_o\ & \Bn[2]~input_o\)) # (\rca_addergen:1:rca_addergen|Cout~combout\ & ((\Bn[2]~input_o\) # 
-- (\An[2]~input_o\))))) ) ) # ( !\Bn[3]~input_o\ & ( !\An[3]~input_o\ $ (((!\rca_addergen:1:rca_addergen|Cout~combout\ & ((!\An[2]~input_o\) # (!\Bn[2]~input_o\))) # (\rca_addergen:1:rca_addergen|Cout~combout\ & (!\An[2]~input_o\ & !\Bn[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rca_addergen:1:rca_addergen|ALT_INV_Cout~combout\,
	datab => \ALT_INV_An[2]~input_o\,
	datac => \ALT_INV_Bn[2]~input_o\,
	datad => \ALT_INV_An[3]~input_o\,
	datae => \ALT_INV_Bn[3]~input_o\,
	combout => \rca_addergen:3:rca_addergen|Sout~combout\);

ww_Sn(0) <= \Sn[0]~output_o\;

ww_Sn(1) <= \Sn[1]~output_o\;

ww_Sn(2) <= \Sn[2]~output_o\;

ww_Sn(3) <= \Sn[3]~output_o\;
END structure;


