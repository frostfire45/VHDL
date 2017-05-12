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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/11/2017 00:25:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mult4x4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult4x4_vhd_vec_tst IS
END mult4x4_vhd_vec_tst;
ARCHITECTURE mult4x4_arch OF mult4x4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Done : STD_LOGIC;
SIGNAL Mcand : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Mplier : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL St : STD_LOGIC;
COMPONENT mult4x4
	PORT (
	Clk : IN STD_LOGIC;
	Done : OUT STD_LOGIC;
	Mcand : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Mplier : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	St : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mult4x4
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Done => Done,
	Mcand => Mcand,
	Mplier => Mplier,
	St => St
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- Mcand[3]
t_prcs_Mcand_3: PROCESS
BEGIN
	Mcand(3) <= '1';
WAIT;
END PROCESS t_prcs_Mcand_3;
-- Mcand[2]
t_prcs_Mcand_2: PROCESS
BEGIN
	Mcand(2) <= '0';
WAIT;
END PROCESS t_prcs_Mcand_2;
-- Mcand[1]
t_prcs_Mcand_1: PROCESS
BEGIN
	Mcand(1) <= '1';
WAIT;
END PROCESS t_prcs_Mcand_1;
-- Mcand[0]
t_prcs_Mcand_0: PROCESS
BEGIN
	Mcand(0) <= '0';
WAIT;
END PROCESS t_prcs_Mcand_0;
-- Mplier[3]
t_prcs_Mplier_3: PROCESS
BEGIN
	Mplier(3) <= '0';
WAIT;
END PROCESS t_prcs_Mplier_3;
-- Mplier[2]
t_prcs_Mplier_2: PROCESS
BEGIN
	Mplier(2) <= '0';
WAIT;
END PROCESS t_prcs_Mplier_2;
-- Mplier[1]
t_prcs_Mplier_1: PROCESS
BEGIN
	Mplier(1) <= '1';
WAIT;
END PROCESS t_prcs_Mplier_1;
-- Mplier[0]
t_prcs_Mplier_0: PROCESS
BEGIN
	Mplier(0) <= '1';
WAIT;
END PROCESS t_prcs_Mplier_0;
END mult4x4_arch;
