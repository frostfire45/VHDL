-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/11/2017 00:25:13"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	mult4x4 IS
    PORT (
	Clk : IN std_logic;
	St : IN std_logic;
	Mplier : IN std_logic_vector(3 DOWNTO 0);
	Mcand : IN std_logic_vector(3 DOWNTO 0);
	Done : OUT STD.STANDARD.bit
	);
END mult4x4;

-- Design Ports Information
-- Done	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- St	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mplier[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mplier[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mplier[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mplier[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mcand[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mcand[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mcand[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mcand[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mult4x4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_St : std_logic;
SIGNAL ww_Mplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mcand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Done~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \State[3]~0_combout\ : std_logic;
SIGNAL \State[2]~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \St~input_o\ : std_logic;
SIGNAL \Mplier[1]~input_o\ : std_logic;
SIGNAL \Mplier[3]~input_o\ : std_logic;
SIGNAL \Mcand[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mcand[3]~input_o\ : std_logic;
SIGNAL \Mcand[2]~input_o\ : std_logic;
SIGNAL \Mcand[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ACC[8]~11_combout\ : std_logic;
SIGNAL \ACC[8]~1_combout\ : std_logic;
SIGNAL \ACC[8]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ACC[4]~9_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ACC[4]~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ACC[1]~7_combout\ : std_logic;
SIGNAL \ACC[1]~8_combout\ : std_logic;
SIGNAL \Mplier[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ACC~4_combout\ : std_logic;
SIGNAL \Mplier[0]~input_o\ : std_logic;
SIGNAL \ACC~5_combout\ : std_logic;
SIGNAL \ACC~6_combout\ : std_logic;
SIGNAL \ACC[0]~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \State[1]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL ACC : std_logic_vector(8 DOWNTO 0);
SIGNAL State : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_St <= St;
ww_Mplier <= Mplier;
ww_Mcand <= Mcand;
Done <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Done);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N16
\Done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Done~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y1_N24
\State[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State[3]~0_combout\ = (State(0) & (State(1) & (!State(3) & State(2)))) # (!State(0) & (((State(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(1),
	datab => State(0),
	datac => State(3),
	datad => State(2),
	combout => \State[3]~0_combout\);

-- Location: FF_X31_Y1_N25
\State[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \State[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(3));

-- Location: LCCOMB_X31_Y1_N8
\State[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \State[2]~2_combout\ = (State(0) & (!State(3) & (State(1) $ (State(2))))) # (!State(0) & (((State(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(1),
	datab => State(0),
	datac => State(2),
	datad => State(3),
	combout => \State[2]~2_combout\);

-- Location: FF_X31_Y1_N9
\State[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \State[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(2));

-- Location: LCCOMB_X31_Y1_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!State(2) & !State(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => State(2),
	datad => State(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y1_N18
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!State(0) & !State(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => State(0),
	datad => State(3),
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X28_Y0_N1
\St~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_St,
	o => \St~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\Mplier[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mplier(1),
	o => \Mplier[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\Mplier[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mplier(3),
	o => \Mplier[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\Mcand[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mcand(0),
	o => \Mcand[0]~input_o\);

-- Location: LCCOMB_X30_Y1_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mcand[0]~input_o\ & (ACC(4) $ (VCC))) # (!\Mcand[0]~input_o\ & (ACC(4) & VCC))
-- \Add0~1\ = CARRY((\Mcand[0]~input_o\ & ACC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mcand[0]~input_o\,
	datab => ACC(4),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X30_Y0_N22
\Mcand[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mcand(3),
	o => \Mcand[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\Mcand[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mcand(2),
	o => \Mcand[2]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\Mcand[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mcand(1),
	o => \Mcand[1]~input_o\);

-- Location: LCCOMB_X30_Y1_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ACC(5) & ((\Mcand[1]~input_o\ & (\Add0~1\ & VCC)) # (!\Mcand[1]~input_o\ & (!\Add0~1\)))) # (!ACC(5) & ((\Mcand[1]~input_o\ & (!\Add0~1\)) # (!\Mcand[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((ACC(5) & (!\Mcand[1]~input_o\ & !\Add0~1\)) # (!ACC(5) & ((!\Add0~1\) # (!\Mcand[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ACC(5),
	datab => \Mcand[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y1_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mcand[2]~input_o\ $ (ACC(6) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mcand[2]~input_o\ & ((ACC(6)) # (!\Add0~3\))) # (!\Mcand[2]~input_o\ & (ACC(6) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mcand[2]~input_o\,
	datab => ACC(6),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y1_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ACC(7) & ((\Mcand[3]~input_o\ & (\Add0~5\ & VCC)) # (!\Mcand[3]~input_o\ & (!\Add0~5\)))) # (!ACC(7) & ((\Mcand[3]~input_o\ & (!\Add0~5\)) # (!\Mcand[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((ACC(7) & (!\Mcand[3]~input_o\ & !\Add0~5\)) # (!ACC(7) & ((!\Add0~5\) # (!\Mcand[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ACC(7),
	datab => \Mcand[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y1_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X30_Y1_N2
\ACC[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[8]~11_combout\ = (!State(2) & (!\St~input_o\ & (!State(1) & ACC(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(2),
	datab => \St~input_o\,
	datac => State(1),
	datad => ACC(8),
	combout => \ACC[8]~11_combout\);

-- Location: LCCOMB_X30_Y1_N18
\ACC[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[8]~1_combout\ = (State(0) & (ACC(0) & (\Add0~8_combout\))) # (!State(0) & (((\ACC[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(0),
	datab => State(0),
	datac => \Add0~8_combout\,
	datad => \ACC[8]~11_combout\,
	combout => \ACC[8]~1_combout\);

-- Location: LCCOMB_X30_Y1_N28
\ACC[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[8]~feeder_combout\ = \ACC[8]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ACC[8]~1_combout\,
	combout => \ACC[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y1_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!State(2) & (State(0) & (!State(1) & ACC(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(2),
	datab => State(0),
	datac => State(1),
	datad => ACC(8),
	combout => \Mux0~0_combout\);

-- Location: FF_X30_Y1_N29
\ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ACC[8]~feeder_combout\,
	asdata => \Mux0~0_combout\,
	sload => State(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(8));

-- Location: LCCOMB_X30_Y1_N16
\ACC[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[4]~9_combout\ = (State(3)) # ((State(0) & (!ACC(0))) # (!State(0) & ((!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(0),
	datab => State(3),
	datac => State(0),
	datad => \Equal0~1_combout\,
	combout => \ACC[4]~9_combout\);

-- Location: LCCOMB_X30_Y1_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ACC[4]~9_combout\ & (((ACC(8))))) # (!\ACC[4]~9_combout\ & (\Add0~6_combout\ & ((State(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => ACC(8),
	datac => State(0),
	datad => \ACC[4]~9_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y1_N30
\ACC[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[4]~10_combout\ = (State(3) & (((!State(0))))) # (!State(3) & ((\St~input_o\) # ((State(0)) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~input_o\,
	datab => State(3),
	datac => State(0),
	datad => \Equal0~1_combout\,
	combout => \ACC[4]~10_combout\);

-- Location: FF_X30_Y1_N27
\ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \ACC[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(7));

-- Location: LCCOMB_X30_Y1_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ACC[4]~9_combout\ & (ACC(7))) # (!\ACC[4]~9_combout\ & (((State(0) & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(7),
	datab => \ACC[4]~9_combout\,
	datac => State(0),
	datad => \Add0~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X30_Y1_N1
\ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \ACC[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(6));

-- Location: LCCOMB_X30_Y1_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ACC[4]~9_combout\ & (ACC(6))) # (!\ACC[4]~9_combout\ & (((State(0) & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(6),
	datab => State(0),
	datac => \Add0~2_combout\,
	datad => \ACC[4]~9_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X30_Y1_N23
\ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \ACC[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(5));

-- Location: LCCOMB_X30_Y1_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ACC[4]~9_combout\ & (((ACC(5))))) # (!\ACC[4]~9_combout\ & (\Add0~0_combout\ & ((State(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => ACC(5),
	datac => State(0),
	datad => \ACC[4]~9_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X30_Y1_N21
\ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \ACC[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(4));

-- Location: LCCOMB_X31_Y1_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Equal0~1_combout\ & ((\Mux12~1_combout\ & (\Mplier[3]~input_o\)) # (!\Mux12~1_combout\ & ((ACC(4)))))) # (!\Equal0~1_combout\ & (((ACC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mplier[3]~input_o\,
	datab => ACC(4),
	datac => \Equal0~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X31_Y1_N26
\ACC[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[1]~7_combout\ = (State(0) & ((State(3)) # (ACC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => State(3),
	datac => State(0),
	datad => ACC(0),
	combout => \ACC[1]~7_combout\);

-- Location: LCCOMB_X31_Y1_N12
\ACC[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[1]~8_combout\ = (!\ACC[1]~7_combout\ & ((\St~input_o\) # ((!\Mux12~1_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~input_o\,
	datab => \Equal0~1_combout\,
	datac => \ACC[1]~7_combout\,
	datad => \Mux12~1_combout\,
	combout => \ACC[1]~8_combout\);

-- Location: FF_X31_Y1_N7
\ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \ACC[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(3));

-- Location: IOIBUF_X32_Y0_N8
\Mplier[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mplier(2),
	o => \Mplier[2]~input_o\);

-- Location: LCCOMB_X31_Y1_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Equal0~1_combout\ & ((\Mux12~1_combout\ & ((\Mplier[2]~input_o\))) # (!\Mux12~1_combout\ & (ACC(3))))) # (!\Equal0~1_combout\ & (ACC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(3),
	datab => \Mplier[2]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X31_Y1_N1
\ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \ACC[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(2));

-- Location: LCCOMB_X31_Y1_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Equal0~1_combout\ & ((\Mux12~1_combout\ & (\Mplier[1]~input_o\)) # (!\Mux12~1_combout\ & ((ACC(2)))))) # (!\Equal0~1_combout\ & (((ACC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mplier[1]~input_o\,
	datab => ACC(2),
	datac => \Equal0~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X31_Y1_N5
\ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \ACC[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(1));

-- Location: LCCOMB_X31_Y1_N22
\ACC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC~4_combout\ = (ACC(1)) # ((ACC(0) & State(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ACC(0),
	datac => State(0),
	datad => ACC(1),
	combout => \ACC~4_combout\);

-- Location: IOIBUF_X34_Y2_N22
\Mplier[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mplier(0),
	o => \Mplier[0]~input_o\);

-- Location: LCCOMB_X31_Y1_N20
\ACC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC~5_combout\ = (\St~input_o\ & ((State(0) & ((ACC(0)))) # (!State(0) & (\Mplier[0]~input_o\)))) # (!\St~input_o\ & (((ACC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mplier[0]~input_o\,
	datab => \St~input_o\,
	datac => State(0),
	datad => ACC(0),
	combout => \ACC~5_combout\);

-- Location: LCCOMB_X32_Y1_N24
\ACC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC~6_combout\ = (\ACC~5_combout\) # ((State(0) & ACC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(0),
	datac => ACC(1),
	datad => \ACC~5_combout\,
	combout => \ACC~6_combout\);

-- Location: LCCOMB_X31_Y1_N16
\ACC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACC[0]~0_combout\ = (\Equal0~1_combout\ & ((\ACC~6_combout\))) # (!\Equal0~1_combout\ & (\ACC~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACC~4_combout\,
	datab => \Equal0~1_combout\,
	datad => \ACC~6_combout\,
	combout => \ACC[0]~0_combout\);

-- Location: LCCOMB_X31_Y1_N30
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Equal0~1_combout\ & ((State(0) & ((ACC(0)))) # (!State(0) & (ACC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(1),
	datab => ACC(0),
	datac => State(0),
	datad => \Equal0~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X31_Y1_N17
\ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ACC[0]~0_combout\,
	asdata => \Mux8~0_combout\,
	sload => State(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ACC(0));

-- Location: LCCOMB_X30_Y1_N24
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (State(3) & (((!State(0) & \Equal0~1_combout\)))) # (!State(3) & (!ACC(0) & (State(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ACC(0),
	datab => State(3),
	datac => State(0),
	datad => \Equal0~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X31_Y1_N14
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~0_combout\) # ((\Mux12~1_combout\ & ((\St~input_o\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \St~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: FF_X31_Y1_N15
\State[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(0));

-- Location: LCCOMB_X31_Y1_N10
\State[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State[1]~1_combout\ = (State(0) & (!State(1) & !State(3))) # (!State(0) & (State(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => State(0),
	datac => State(1),
	datad => State(3),
	combout => \State[1]~1_combout\);

-- Location: FF_X31_Y1_N11
\State[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \State[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(1));

-- Location: LCCOMB_X31_Y1_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!State(1) & (!State(2) & (State(0) & State(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => State(1),
	datab => State(2),
	datac => State(0),
	datad => State(3),
	combout => \Equal0~0_combout\);

ww_Done <= \Done~output_o\;
END structure;


