-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/23/2025 13:06:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Complex_Adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Complex_Adder_vhd_vec_tst IS
END Complex_Adder_vhd_vec_tst;
ARCHITECTURE Complex_Adder_arch OF Complex_Adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ai : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Ar : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Bi : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Br : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Yi : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Yr : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Complex_Adder
	PORT (
	Ai : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Ar : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Bi : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Br : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Yi : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Yr : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Complex_Adder
	PORT MAP (
-- list connections between master ports and signals
	Ai => Ai,
	Ar => Ar,
	Bi => Bi,
	Br => Br,
	Yi => Yi,
	Yr => Yr
	);
-- Ai[2]
t_prcs_Ai_2: PROCESS
BEGIN
	Ai(2) <= '0';
	WAIT FOR 20000 ps;
	Ai(2) <= '1';
	WAIT FOR 10000 ps;
	Ai(2) <= '0';
WAIT;
END PROCESS t_prcs_Ai_2;
-- Ai[1]
t_prcs_Ai_1: PROCESS
BEGIN
	Ai(1) <= '0';
	WAIT FOR 10000 ps;
	Ai(1) <= '1';
	WAIT FOR 10000 ps;
	Ai(1) <= '0';
WAIT;
END PROCESS t_prcs_Ai_1;
-- Ai[0]
t_prcs_Ai_0: PROCESS
BEGIN
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
	WAIT FOR 20000 ps;
	Ai(0) <= '0';
WAIT;
END PROCESS t_prcs_Ai_0;
-- Ar[2]
t_prcs_Ar_2: PROCESS
BEGIN
	Ar(2) <= '0';
	WAIT FOR 20000 ps;
	Ar(2) <= '1';
	WAIT FOR 10000 ps;
	Ar(2) <= '0';
WAIT;
END PROCESS t_prcs_Ar_2;
-- Ar[1]
t_prcs_Ar_1: PROCESS
BEGIN
	Ar(1) <= '0';
	WAIT FOR 10000 ps;
	Ar(1) <= '1';
	WAIT FOR 10000 ps;
	Ar(1) <= '0';
	WAIT FOR 10000 ps;
	Ar(1) <= '1';
	WAIT FOR 10000 ps;
	Ar(1) <= '0';
WAIT;
END PROCESS t_prcs_Ar_1;
-- Ar[0]
t_prcs_Ar_0: PROCESS
BEGIN
	Ar(0) <= '0';
	WAIT FOR 20000 ps;
	Ar(0) <= '1';
	WAIT FOR 10000 ps;
	Ar(0) <= '0';
WAIT;
END PROCESS t_prcs_Ar_0;
-- Bi[2]
t_prcs_Bi_2: PROCESS
BEGIN
	Bi(2) <= '0';
	WAIT FOR 20000 ps;
	Bi(2) <= '1';
	WAIT FOR 20000 ps;
	Bi(2) <= '0';
WAIT;
END PROCESS t_prcs_Bi_2;
-- Bi[1]
t_prcs_Bi_1: PROCESS
BEGIN
	Bi(1) <= '0';
	WAIT FOR 10000 ps;
	Bi(1) <= '1';
	WAIT FOR 10000 ps;
	Bi(1) <= '0';
WAIT;
END PROCESS t_prcs_Bi_1;
-- Bi[0]
t_prcs_Bi_0: PROCESS
BEGIN
	Bi(0) <= '0';
	WAIT FOR 20000 ps;
	Bi(0) <= '1';
	WAIT FOR 10000 ps;
	Bi(0) <= '0';
WAIT;
END PROCESS t_prcs_Bi_0;
-- Br[2]
t_prcs_Br_2: PROCESS
BEGIN
	Br(2) <= '0';
	WAIT FOR 20000 ps;
	Br(2) <= '1';
	WAIT FOR 10000 ps;
	Br(2) <= '0';
	WAIT FOR 10000 ps;
	Br(2) <= '1';
	WAIT FOR 10000 ps;
	Br(2) <= '0';
WAIT;
END PROCESS t_prcs_Br_2;
-- Br[1]
t_prcs_Br_1: PROCESS
BEGIN
	Br(1) <= '0';
	WAIT FOR 10000 ps;
	Br(1) <= '1';
	WAIT FOR 10000 ps;
	Br(1) <= '0';
	WAIT FOR 20000 ps;
	Br(1) <= '1';
	WAIT FOR 10000 ps;
	Br(1) <= '0';
WAIT;
END PROCESS t_prcs_Br_1;
-- Br[0]
t_prcs_Br_0: PROCESS
BEGIN
	Br(0) <= '0';
	WAIT FOR 20000 ps;
	Br(0) <= '1';
	WAIT FOR 10000 ps;
	Br(0) <= '0';
	WAIT FOR 10000 ps;
	Br(0) <= '1';
	WAIT FOR 10000 ps;
	Br(0) <= '0';
WAIT;
END PROCESS t_prcs_Br_0;
END Complex_Adder_arch;
