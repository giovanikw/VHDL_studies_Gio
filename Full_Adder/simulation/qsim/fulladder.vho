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

-- DATE "08/06/2026 13:36:33"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rca_adder IS
    PORT (
	An : IN std_logic_vector(3 DOWNTO 0);
	Bn : IN std_logic_vector(3 DOWNTO 0);
	Sn : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	FFinp : IN std_logic;
	FFoutp : OUT std_logic
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_FFinp : std_logic;
SIGNAL ww_FFoutp : std_logic;
SIGNAL \Sn[0]~output_o\ : std_logic;
SIGNAL \Sn[1]~output_o\ : std_logic;
SIGNAL \Sn[2]~output_o\ : std_logic;
SIGNAL \Sn[3]~output_o\ : std_logic;
SIGNAL \FFoutp~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \FFinp~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \flip_addergen:0:rca_addergen|Q~q\ : std_logic;
SIGNAL \An[0]~input_o\ : std_logic;
SIGNAL \Bn[0]~input_o\ : std_logic;
SIGNAL \rca_addergen:0:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:0:rca_addergen|Cout~combout\ : std_logic;
SIGNAL \flip_addergen:1:rca_addergen|Q~q\ : std_logic;
SIGNAL \An[1]~input_o\ : std_logic;
SIGNAL \Bn[1]~input_o\ : std_logic;
SIGNAL \rca_addergen:1:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:1:rca_addergen|Cout~combout\ : std_logic;
SIGNAL \flip_addergen:2:rca_addergen|Q~q\ : std_logic;
SIGNAL \An[2]~input_o\ : std_logic;
SIGNAL \Bn[2]~input_o\ : std_logic;
SIGNAL \rca_addergen:2:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:2:rca_addergen|Cout~combout\ : std_logic;
SIGNAL \flip_addergen:3:rca_addergen|Q~q\ : std_logic;
SIGNAL \An[3]~input_o\ : std_logic;
SIGNAL \Bn[3]~input_o\ : std_logic;
SIGNAL \rca_addergen:3:rca_addergen|Sout~combout\ : std_logic;
SIGNAL \rca_addergen:3:rca_addergen|Cout~combout\ : std_logic;
SIGNAL \flip_addergen:4:rca_addergen|Q~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \flip_addergen:1:rca_addergen|ALT_INV_Q~q\ : std_logic;
SIGNAL \flip_addergen:0:rca_addergen|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_Bn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[3]~input_o\ : std_logic;
SIGNAL \flip_addergen:2:rca_addergen|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_An[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_An[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bn[2]~input_o\ : std_logic;
SIGNAL \flip_addergen:3:rca_addergen|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_An <= An;
ww_Bn <= Bn;
Sn <= ww_Sn;
ww_clk <= clk;
ww_rst <= rst;
ww_FFinp <= FFinp;
FFoutp <= ww_FFoutp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\flip_addergen:1:rca_addergen|ALT_INV_Q~q\ <= NOT \flip_addergen:1:rca_addergen|Q~q\;
\flip_addergen:0:rca_addergen|ALT_INV_Q~q\ <= NOT \flip_addergen:0:rca_addergen|Q~q\;
\ALT_INV_Bn[3]~input_o\ <= NOT \Bn[3]~input_o\;
\ALT_INV_An[3]~input_o\ <= NOT \An[3]~input_o\;
\flip_addergen:2:rca_addergen|ALT_INV_Q~q\ <= NOT \flip_addergen:2:rca_addergen|Q~q\;
\ALT_INV_An[2]~input_o\ <= NOT \An[2]~input_o\;
\ALT_INV_Bn[1]~input_o\ <= NOT \Bn[1]~input_o\;
\ALT_INV_An[1]~input_o\ <= NOT \An[1]~input_o\;
\ALT_INV_Bn[0]~input_o\ <= NOT \Bn[0]~input_o\;
\ALT_INV_An[0]~input_o\ <= NOT \An[0]~input_o\;
\ALT_INV_Bn[2]~input_o\ <= NOT \Bn[2]~input_o\;
\flip_addergen:3:rca_addergen|ALT_INV_Q~q\ <= NOT \flip_addergen:3:rca_addergen|Q~q\;

\Sn[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rca_addergen:0:rca_addergen|Sout~combout\,
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

\FFoutp~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flip_addergen:4:rca_addergen|Q~q\,
	devoe => ww_devoe,
	o => \FFoutp~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\FFinp~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FFinp,
	o => \FFinp~input_o\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\flip_addergen:0:rca_addergen|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FFinp~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flip_addergen:0:rca_addergen|Q~q\);

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

\rca_addergen:0:rca_addergen|Sout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:0:rca_addergen|Sout~combout\ = !\flip_addergen:0:rca_addergen|Q~q\ $ (!\An[0]~input_o\ $ (\Bn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:0:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[0]~input_o\,
	datac => \ALT_INV_Bn[0]~input_o\,
	combout => \rca_addergen:0:rca_addergen|Sout~combout\);

\rca_addergen:0:rca_addergen|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:0:rca_addergen|Cout~combout\ = (!\flip_addergen:0:rca_addergen|Q~q\ & (\An[0]~input_o\ & \Bn[0]~input_o\)) # (\flip_addergen:0:rca_addergen|Q~q\ & ((\Bn[0]~input_o\) # (\An[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:0:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[0]~input_o\,
	datac => \ALT_INV_Bn[0]~input_o\,
	combout => \rca_addergen:0:rca_addergen|Cout~combout\);

\flip_addergen:1:rca_addergen|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rca_addergen:0:rca_addergen|Cout~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flip_addergen:1:rca_addergen|Q~q\);

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
-- \rca_addergen:1:rca_addergen|Sout~combout\ = !\flip_addergen:1:rca_addergen|Q~q\ $ (!\An[1]~input_o\ $ (\Bn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:1:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[1]~input_o\,
	datac => \ALT_INV_Bn[1]~input_o\,
	combout => \rca_addergen:1:rca_addergen|Sout~combout\);

\rca_addergen:1:rca_addergen|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:1:rca_addergen|Cout~combout\ = (!\flip_addergen:1:rca_addergen|Q~q\ & (\An[1]~input_o\ & \Bn[1]~input_o\)) # (\flip_addergen:1:rca_addergen|Q~q\ & ((\Bn[1]~input_o\) # (\An[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:1:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[1]~input_o\,
	datac => \ALT_INV_Bn[1]~input_o\,
	combout => \rca_addergen:1:rca_addergen|Cout~combout\);

\flip_addergen:2:rca_addergen|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rca_addergen:1:rca_addergen|Cout~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flip_addergen:2:rca_addergen|Q~q\);

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
-- \rca_addergen:2:rca_addergen|Sout~combout\ = !\flip_addergen:2:rca_addergen|Q~q\ $ (!\An[2]~input_o\ $ (\Bn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:2:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[2]~input_o\,
	datac => \ALT_INV_Bn[2]~input_o\,
	combout => \rca_addergen:2:rca_addergen|Sout~combout\);

\rca_addergen:2:rca_addergen|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:2:rca_addergen|Cout~combout\ = (!\flip_addergen:2:rca_addergen|Q~q\ & (\An[2]~input_o\ & \Bn[2]~input_o\)) # (\flip_addergen:2:rca_addergen|Q~q\ & ((\Bn[2]~input_o\) # (\An[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:2:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[2]~input_o\,
	datac => \ALT_INV_Bn[2]~input_o\,
	combout => \rca_addergen:2:rca_addergen|Cout~combout\);

\flip_addergen:3:rca_addergen|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rca_addergen:2:rca_addergen|Cout~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flip_addergen:3:rca_addergen|Q~q\);

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
-- \rca_addergen:3:rca_addergen|Sout~combout\ = !\flip_addergen:3:rca_addergen|Q~q\ $ (!\An[3]~input_o\ $ (\Bn[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:3:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[3]~input_o\,
	datac => \ALT_INV_Bn[3]~input_o\,
	combout => \rca_addergen:3:rca_addergen|Sout~combout\);

\rca_addergen:3:rca_addergen|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \rca_addergen:3:rca_addergen|Cout~combout\ = (!\flip_addergen:3:rca_addergen|Q~q\ & (\An[3]~input_o\ & \Bn[3]~input_o\)) # (\flip_addergen:3:rca_addergen|Q~q\ & ((\Bn[3]~input_o\) # (\An[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flip_addergen:3:rca_addergen|ALT_INV_Q~q\,
	datab => \ALT_INV_An[3]~input_o\,
	datac => \ALT_INV_Bn[3]~input_o\,
	combout => \rca_addergen:3:rca_addergen|Cout~combout\);

\flip_addergen:4:rca_addergen|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rca_addergen:3:rca_addergen|Cout~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flip_addergen:4:rca_addergen|Q~q\);

ww_Sn(0) <= \Sn[0]~output_o\;

ww_Sn(1) <= \Sn[1]~output_o\;

ww_Sn(2) <= \Sn[2]~output_o\;

ww_Sn(3) <= \Sn[3]~output_o\;

ww_FFoutp <= \FFoutp~output_o\;
END structure;


