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

-- DATE "10/08/2026 13:31:56"

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

ENTITY 	metodoant IS
    PORT (
	Target : IN std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	reset : IN std_logic;
	Saida : OUT std_logic_vector(3 DOWNTO 0);
	Somatorio : OUT std_logic_vector(7 DOWNTO 0)
	);
END metodoant;

ARCHITECTURE structure OF metodoant IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Target : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Saida : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Somatorio : std_logic_vector(7 DOWNTO 0);
SIGNAL \Saida[0]~output_o\ : std_logic;
SIGNAL \Saida[1]~output_o\ : std_logic;
SIGNAL \Saida[2]~output_o\ : std_logic;
SIGNAL \Saida[3]~output_o\ : std_logic;
SIGNAL \Somatorio[0]~output_o\ : std_logic;
SIGNAL \Somatorio[1]~output_o\ : std_logic;
SIGNAL \Somatorio[2]~output_o\ : std_logic;
SIGNAL \Somatorio[3]~output_o\ : std_logic;
SIGNAL \Somatorio[4]~output_o\ : std_logic;
SIGNAL \Somatorio[5]~output_o\ : std_logic;
SIGNAL \Somatorio[6]~output_o\ : std_logic;
SIGNAL \Somatorio[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \test_root:r[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \test_root:r[1]~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Target[4]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \test_root:S[0]~0_combout\ : std_logic;
SIGNAL \test_root:S[0]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \test_root:S[1]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \test_root:S[2]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \test_root:S[5]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \test_root:S[6]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \test_root:S[7]~q\ : std_logic;
SIGNAL \Target[7]~input_o\ : std_logic;
SIGNAL \Target[6]~input_o\ : std_logic;
SIGNAL \Target[5]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \test_root:r[3]~0_combout\ : std_logic;
SIGNAL \test_root:r[3]~q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \test_root:S[4]~q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \test_root:r[2]~0_combout\ : std_logic;
SIGNAL \test_root:r[2]~q\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \test_root:S[3]~q\ : std_logic;
SIGNAL \Target[3]~input_o\ : std_logic;
SIGNAL \Target[2]~input_o\ : std_logic;
SIGNAL \Target[1]~input_o\ : std_logic;
SIGNAL \Target[0]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \test_root:r[0]~q\ : std_logic;
SIGNAL \Saida[0]~1_combout\ : std_logic;
SIGNAL \Saida[3]~0_combout\ : std_logic;
SIGNAL \Saida[0]~reg0_q\ : std_logic;
SIGNAL \Saida[1]~reg0_q\ : std_logic;
SIGNAL \Saida[2]~reg0_q\ : std_logic;
SIGNAL \Saida[3]~reg0_q\ : std_logic;
SIGNAL \Somatorio[0]~0_combout\ : std_logic;
SIGNAL \Somatorio[0]~reg0_q\ : std_logic;
SIGNAL \Somatorio[1]~reg0_q\ : std_logic;
SIGNAL \Somatorio[2]~reg0_q\ : std_logic;
SIGNAL \Somatorio[3]~reg0_q\ : std_logic;
SIGNAL \Somatorio[4]~reg0_q\ : std_logic;
SIGNAL \Somatorio[5]~reg0_q\ : std_logic;
SIGNAL \Somatorio[6]~reg0_q\ : std_logic;
SIGNAL \Somatorio[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Target[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Target[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_test_root:r[3]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:r[2]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:r[1]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_test_root:S[5]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[6]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[7]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[4]~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_test_root:S[0]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[1]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[2]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:S[3]~q\ : std_logic;
SIGNAL \ALT_INV_test_root:r[0]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

ww_Target <= Target;
ww_CLK <= CLK;
ww_reset <= reset;
Saida <= ww_Saida;
Somatorio <= ww_Somatorio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Target[5]~input_o\ <= NOT \Target[5]~input_o\;
\ALT_INV_Target[6]~input_o\ <= NOT \Target[6]~input_o\;
\ALT_INV_Target[7]~input_o\ <= NOT \Target[7]~input_o\;
\ALT_INV_Target[4]~input_o\ <= NOT \Target[4]~input_o\;
\ALT_INV_Target[0]~input_o\ <= NOT \Target[0]~input_o\;
\ALT_INV_Target[1]~input_o\ <= NOT \Target[1]~input_o\;
\ALT_INV_Target[2]~input_o\ <= NOT \Target[2]~input_o\;
\ALT_INV_Target[3]~input_o\ <= NOT \Target[3]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_test_root:r[3]~q\ <= NOT \test_root:r[3]~q\;
\ALT_INV_test_root:r[2]~q\ <= NOT \test_root:r[2]~q\;
\ALT_INV_test_root:r[1]~q\ <= NOT \test_root:r[1]~q\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_test_root:S[5]~q\ <= NOT \test_root:S[5]~q\;
\ALT_INV_test_root:S[6]~q\ <= NOT \test_root:S[6]~q\;
\ALT_INV_test_root:S[7]~q\ <= NOT \test_root:S[7]~q\;
\ALT_INV_test_root:S[4]~q\ <= NOT \test_root:S[4]~q\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_test_root:S[0]~q\ <= NOT \test_root:S[0]~q\;
\ALT_INV_test_root:S[1]~q\ <= NOT \test_root:S[1]~q\;
\ALT_INV_test_root:S[2]~q\ <= NOT \test_root:S[2]~q\;
\ALT_INV_test_root:S[3]~q\ <= NOT \test_root:S[3]~q\;
\ALT_INV_test_root:r[0]~q\ <= NOT \test_root:r[0]~q\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;

\Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Saida[0]~output_o\);

\Saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Saida[1]~output_o\);

\Saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Saida[2]~output_o\);

\Saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Saida[3]~output_o\);

\Somatorio[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[0]~output_o\);

\Somatorio[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[1]~output_o\);

\Somatorio[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[2]~output_o\);

\Somatorio[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[3]~output_o\);

\Somatorio[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[4]~output_o\);

\Somatorio[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[5]~output_o\);

\Somatorio[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[6]~output_o\);

\Somatorio[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Somatorio[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Somatorio[7]~output_o\);

\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\test_root:r[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test_root:r[0]~0_combout\ = !\test_root:r[0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:r[0]~q\,
	combout => \test_root:r[0]~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !\test_root:r[0]~q\ $ (\test_root:r[1]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:r[0]~q\,
	datab => \ALT_INV_test_root:r[1]~q\,
	combout => \Add0~0_combout\);

\test_root:r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:r[1]~q\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (!\test_root:r[0]~q\ & \test_root:r[1]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:r[0]~q\,
	datab => \ALT_INV_test_root:r[1]~q\,
	combout => \Add0~1_combout\);

\Target[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(4),
	o => \Target[4]~input_o\);

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \test_root:S[0]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \test_root:S[0]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Add2~3\ = SHARE(!\test_root:S[0]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_test_root:S[0]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\,
	shareout => \Add2~3\);

\test_root:S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test_root:S[0]~0_combout\ = !\Add2~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	combout => \test_root:S[0]~0_combout\);

\test_root:S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:S[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[0]~q\);

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\test_root:r[0]~q\ $ (\test_root:S[1]~q\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\test_root:r[0]~q\ $ (\test_root:S[1]~q\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~7\ = SHARE((!\test_root:r[0]~q\ & (\test_root:S[1]~q\)) # (\test_root:r[0]~q\ & ((\test_root:r[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100101111100000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:r[0]~q\,
	datac => \ALT_INV_test_root:S[1]~q\,
	datad => \ALT_INV_test_root:r[1]~q\,
	cin => \Add2~2\,
	sharein => \Add2~3\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\,
	shareout => \Add2~7\);

\test_root:S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[1]~q\);

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\Add0~1_combout\ $ (!\test_root:S[2]~q\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\Add0~1_combout\ $ (!\test_root:S[2]~q\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~11\ = SHARE((!\Add0~1_combout\ & (\test_root:r[2]~q\)) # (\Add0~1_combout\ & ((\test_root:S[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110010011100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_combout\,
	datab => \ALT_INV_test_root:r[2]~q\,
	datac => \ALT_INV_test_root:S[2]~q\,
	cin => \Add2~6\,
	sharein => \Add2~7\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\,
	shareout => \Add2~11\);

\test_root:S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[2]~q\);

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\test_root:S[3]~q\ $ (((!\Add0~1_combout\) # (!\test_root:r[2]~q\))) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\test_root:S[3]~q\ $ (((!\Add0~1_combout\) # (!\test_root:r[2]~q\))) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~15\ = SHARE((!\Add0~1_combout\ & (((\test_root:r[3]~q\)))) # (\Add0~1_combout\ & ((!\test_root:r[2]~q\ & ((\test_root:r[3]~q\))) # (\test_root:r[2]~q\ & (\test_root:S[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011110111100000000000000000001111000011110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_combout\,
	datab => \ALT_INV_test_root:r[2]~q\,
	datac => \ALT_INV_test_root:S[3]~q\,
	datad => \ALT_INV_test_root:r[3]~q\,
	cin => \Add2~10\,
	sharein => \Add2~11\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\,
	shareout => \Add2~15\);

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \test_root:S[4]~q\ ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \test_root:S[4]~q\ ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_test_root:S[4]~q\,
	cin => \Add2~14\,
	sharein => \Add2~15\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\,
	shareout => \Add2~19\);

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \test_root:S[5]~q\ ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \test_root:S[5]~q\ ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_test_root:S[5]~q\,
	cin => \Add2~18\,
	sharein => \Add2~19\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\,
	shareout => \Add2~23\);

\test_root:S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[5]~q\);

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \test_root:S[6]~q\ ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \test_root:S[6]~q\ ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_test_root:S[6]~q\,
	cin => \Add2~22\,
	sharein => \Add2~23\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\,
	shareout => \Add2~27\);

\test_root:S[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[6]~q\);

\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \test_root:S[7]~q\ ) + ( \Add2~27\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_test_root:S[7]~q\,
	cin => \Add2~26\,
	sharein => \Add2~27\,
	sumout => \Add2~29_sumout\);

\test_root:S[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[7]~q\);

\Target[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(7),
	o => \Target[7]~input_o\);

\Target[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(6),
	o => \Target[6]~input_o\);

\Target[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(5),
	o => \Target[5]~input_o\);

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \test_root:S[5]~q\ & ( \Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (!\Target[7]~input_o\ & (!\test_root:S[6]~q\ $ (\Target[6]~input_o\)))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & (!\test_root:S[6]~q\ $ 
-- (\Target[6]~input_o\)))) ) ) ) # ( !\test_root:S[5]~q\ & ( !\Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (!\Target[7]~input_o\ & (!\test_root:S[6]~q\ $ (\Target[6]~input_o\)))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & (!\test_root:S[6]~q\ $ 
-- (\Target[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[7]~q\,
	datab => \ALT_INV_Target[7]~input_o\,
	datac => \ALT_INV_test_root:S[6]~q\,
	datad => \ALT_INV_Target[6]~input_o\,
	datae => \ALT_INV_test_root:S[5]~q\,
	dataf => \ALT_INV_Target[5]~input_o\,
	combout => \LessThan0~2_combout\);

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \test_root:S[5]~q\ & ( \Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (((!\test_root:S[6]~q\ & \Target[6]~input_o\)) # (\Target[7]~input_o\))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & (!\test_root:S[6]~q\ & 
-- \Target[6]~input_o\))) ) ) ) # ( !\test_root:S[5]~q\ & ( \Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (((!\test_root:S[6]~q\) # (\Target[6]~input_o\)) # (\Target[7]~input_o\))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & ((!\test_root:S[6]~q\) # 
-- (\Target[6]~input_o\)))) ) ) ) # ( \test_root:S[5]~q\ & ( !\Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (((!\test_root:S[6]~q\ & \Target[6]~input_o\)) # (\Target[7]~input_o\))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & (!\test_root:S[6]~q\ & 
-- \Target[6]~input_o\))) ) ) ) # ( !\test_root:S[5]~q\ & ( !\Target[5]~input_o\ & ( (!\test_root:S[7]~q\ & (((!\test_root:S[6]~q\ & \Target[6]~input_o\)) # (\Target[7]~input_o\))) # (\test_root:S[7]~q\ & (\Target[7]~input_o\ & (!\test_root:S[6]~q\ & 
-- \Target[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110110010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[7]~q\,
	datab => \ALT_INV_Target[7]~input_o\,
	datac => \ALT_INV_test_root:S[6]~q\,
	datad => \ALT_INV_Target[6]~input_o\,
	datae => \ALT_INV_test_root:S[5]~q\,
	dataf => \ALT_INV_Target[5]~input_o\,
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\LessThan0~4_combout\ & (((!\Target[4]~input_o\) # (!\LessThan0~2_combout\)) # (\test_root:S[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000111111010000000011111101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[4]~q\,
	datab => \ALT_INV_Target[4]~input_o\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

\test_root:r[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test_root:r[3]~0_combout\ = ( \test_root:r[3]~q\ & ( \Add0~1_combout\ & ( (!\test_root:r[2]~q\) # ((\LessThan0~5_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~3_combout\)))) ) ) ) # ( !\test_root:r[3]~q\ & ( \Add0~1_combout\ & ( (\test_root:r[2]~q\ 
-- & ((!\LessThan0~5_combout\) # ((\LessThan0~1_combout\ & \LessThan0~3_combout\)))) ) ) ) # ( \test_root:r[3]~q\ & ( !\Add0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111100011111111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_test_root:r[2]~q\,
	datae => \ALT_INV_test_root:r[3]~q\,
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \test_root:r[3]~0_combout\);

\test_root:r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[3]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:r[3]~q\);

\test_root:S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[4]~q\);

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\ & (!\test_root:S[4]~q\ $ (\Target[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[4]~q\,
	datab => \ALT_INV_Target[4]~input_o\,
	datac => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

\test_root:r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test_root:r[2]~0_combout\ = ( \Add0~1_combout\ & ( !\test_root:r[2]~q\ $ (((\LessThan0~5_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~3_combout\))))) ) ) # ( !\Add0~1_combout\ & ( \test_root:r[2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111100010000111000000000111111111111000100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_test_root:r[2]~q\,
	datae => \ALT_INV_Add0~1_combout\,
	combout => \test_root:r[2]~0_combout\);

\test_root:r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:r[2]~q\);

\test_root:S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:S[3]~q\);

\Target[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(3),
	o => \Target[3]~input_o\);

\Target[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(2),
	o => \Target[2]~input_o\);

\Target[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(1),
	o => \Target[1]~input_o\);

\Target[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Target(0),
	o => \Target[0]~input_o\);

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\test_root:S[1]~q\ & (((\test_root:S[0]~q\ & \Target[0]~input_o\)) # (\Target[1]~input_o\))) # (\test_root:S[1]~q\ & (\Target[1]~input_o\ & (\test_root:S[0]~q\ & \Target[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101011001000100010101100100010001010110010001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[1]~q\,
	datab => \ALT_INV_Target[1]~input_o\,
	datac => \ALT_INV_test_root:S[0]~q\,
	datad => \ALT_INV_Target[0]~input_o\,
	combout => \LessThan0~0_combout\);

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!\test_root:S[3]~q\ & (((!\test_root:S[2]~q\) # (\Target[2]~input_o\)) # (\Target[3]~input_o\))) # (\test_root:S[3]~q\ & (\Target[3]~input_o\ & ((!\test_root:S[2]~q\) # (\Target[2]~input_o\)))) ) ) # ( 
-- !\LessThan0~0_combout\ & ( (!\test_root:S[3]~q\ & (((!\test_root:S[2]~q\ & \Target[2]~input_o\)) # (\Target[3]~input_o\))) # (\test_root:S[3]~q\ & (\Target[3]~input_o\ & (!\test_root:S[2]~q\ & \Target[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:S[3]~q\,
	datab => \ALT_INV_Target[3]~input_o\,
	datac => \ALT_INV_test_root:S[2]~q\,
	datad => \ALT_INV_Target[2]~input_o\,
	datae => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\LessThan0~5_combout\) # ((\LessThan0~1_combout\ & \LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\test_root:r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test_root:r[0]~q\);

\Saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida[0]~1_combout\ = !\test_root:r[0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test_root:r[0]~q\,
	combout => \Saida[0]~1_combout\);

\Saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Saida[3]~0_combout\ = (!\reset~input_o\ & (\LessThan0~5_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~5_combout\,
	combout => \Saida[3]~0_combout\);

\Saida[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Saida[0]~1_combout\,
	ena => \Saida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Saida[0]~reg0_q\);

\Saida[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[1]~q\,
	ena => \Saida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Saida[1]~reg0_q\);

\Saida[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[2]~q\,
	ena => \Saida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Saida[2]~reg0_q\);

\Saida[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \test_root:r[3]~q\,
	ena => \Saida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Saida[3]~reg0_q\);

\Somatorio[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somatorio[0]~0_combout\ = (!\reset~input_o\ & ((!\LessThan0~5_combout\) # ((\LessThan0~1_combout\ & \LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000010101010100000001010101010000000101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~5_combout\,
	combout => \Somatorio[0]~0_combout\);

\Somatorio[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~1_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[0]~reg0_q\);

\Somatorio[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~5_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[1]~reg0_q\);

\Somatorio[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~9_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[2]~reg0_q\);

\Somatorio[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~13_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[3]~reg0_q\);

\Somatorio[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~17_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[4]~reg0_q\);

\Somatorio[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~21_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[5]~reg0_q\);

\Somatorio[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~25_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[6]~reg0_q\);

\Somatorio[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add2~29_sumout\,
	ena => \Somatorio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Somatorio[7]~reg0_q\);

ww_Saida(0) <= \Saida[0]~output_o\;

ww_Saida(1) <= \Saida[1]~output_o\;

ww_Saida(2) <= \Saida[2]~output_o\;

ww_Saida(3) <= \Saida[3]~output_o\;

ww_Somatorio(0) <= \Somatorio[0]~output_o\;

ww_Somatorio(1) <= \Somatorio[1]~output_o\;

ww_Somatorio(2) <= \Somatorio[2]~output_o\;

ww_Somatorio(3) <= \Somatorio[3]~output_o\;

ww_Somatorio(4) <= \Somatorio[4]~output_o\;

ww_Somatorio(5) <= \Somatorio[5]~output_o\;

ww_Somatorio(6) <= \Somatorio[6]~output_o\;

ww_Somatorio(7) <= \Somatorio[7]~output_o\;
END structure;


