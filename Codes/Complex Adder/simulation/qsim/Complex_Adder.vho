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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "11/23/2025 13:06:07"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Complex_Adder IS
    PORT (
	Ar : IN std_logic_vector(2 DOWNTO 0);
	Ai : IN std_logic_vector(2 DOWNTO 0);
	Br : IN std_logic_vector(2 DOWNTO 0);
	Bi : IN std_logic_vector(2 DOWNTO 0);
	Yr : OUT std_logic_vector(6 DOWNTO 0);
	Yi : OUT std_logic_vector(6 DOWNTO 0)
	);
END Complex_Adder;

-- Design Ports Information
-- Yr[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yr[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi[6]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Br[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Br[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ar[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ar[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Br[2]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ar[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Complex_Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ar : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Ai : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Br : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Yr : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Yi : std_logic_vector(6 DOWNTO 0);
SIGNAL \Yr[0]~output_o\ : std_logic;
SIGNAL \Yr[1]~output_o\ : std_logic;
SIGNAL \Yr[2]~output_o\ : std_logic;
SIGNAL \Yr[3]~output_o\ : std_logic;
SIGNAL \Yr[4]~output_o\ : std_logic;
SIGNAL \Yr[5]~output_o\ : std_logic;
SIGNAL \Yr[6]~output_o\ : std_logic;
SIGNAL \Yi[0]~output_o\ : std_logic;
SIGNAL \Yi[1]~output_o\ : std_logic;
SIGNAL \Yi[2]~output_o\ : std_logic;
SIGNAL \Yi[3]~output_o\ : std_logic;
SIGNAL \Yi[4]~output_o\ : std_logic;
SIGNAL \Yi[5]~output_o\ : std_logic;
SIGNAL \Yi[6]~output_o\ : std_logic;
SIGNAL \Ar[0]~input_o\ : std_logic;
SIGNAL \Br[1]~input_o\ : std_logic;
SIGNAL \Br[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Ar[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Br[2]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Ar[2]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|_~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|_~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|_~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mult3|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|$00031|out_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|_~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult2|mult_core|$00035|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|_~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|_~1_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|_~2_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|_~1_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|_~2_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|_~3_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|_~3_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Ar <= Ar;
ww_Ai <= Ai;
ww_Br <= Br;
ww_Bi <= Bi;
Yr <= ww_Yr;
Yi <= ww_Yi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y7_N9
\Yr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \Yr[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Yr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \Yr[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\Yr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~4_combout\,
	devoe => ww_devoe,
	o => \Yr[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Yr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~6_combout\,
	devoe => ww_devoe,
	o => \Yr[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Yr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~8_combout\,
	devoe => ww_devoe,
	o => \Yr[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Yr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~10_combout\,
	devoe => ww_devoe,
	o => \Yr[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Yr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~12_combout\,
	devoe => ww_devoe,
	o => \Yr[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\Yi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \Yi[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\Yi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \Yi[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Yi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \Yi[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\Yi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \Yi[3]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\Yi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \Yi[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\Yi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \Yi[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\Yi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \Yi[6]~output_o\);

-- Location: IOIBUF_X23_Y24_N1
\Ar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ar(0),
	o => \Ar[0]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\Br[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Br(1),
	o => \Br[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\Br[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Br(0),
	o => \Br[0]~input_o\);

-- Location: LCCOMB_X28_Y20_N8
\Mult0|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00031|out_bit[0]~0_combout\ = \Br[1]~input_o\ $ (((\Ar[0]~input_o\ & \Br[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Br[0]~input_o\,
	combout => \Mult0|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|$00031|out_bit[0]~0_combout\ & (\Br[1]~input_o\ $ (VCC))) # (!\Mult0|mult_core|$00031|out_bit[0]~0_combout\ & (\Br[1]~input_o\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|$00031|out_bit[0]~0_combout\ & \Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|$00031|out_bit[0]~0_combout\,
	datab => \Br[1]~input_o\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: IOIBUF_X34_Y17_N15
\Bi[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Ai[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\Bi[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

-- Location: LCCOMB_X28_Y17_N0
\Mult1|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|$00031|out_bit[0]~0_combout\ = \Bi[1]~input_o\ $ (((\Ai[0]~input_o\ & \Bi[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult1|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N2
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Bi[1]~input_o\ & (\Mult1|mult_core|$00031|out_bit[0]~0_combout\ $ (VCC))) # (!\Bi[1]~input_o\ & (\Mult1|mult_core|$00031|out_bit[0]~0_combout\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Bi[1]~input_o\ & \Mult1|mult_core|$00031|out_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Mult1|mult_core|$00031|out_bit[0]~0_combout\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X28_Y17_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((GND) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (GND)))
-- \Add0~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X28_Y24_N8
\Ar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ar(1),
	o => \Ar[1]~input_o\);

-- Location: LCCOMB_X28_Y20_N28
\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ = (\Br[0]~input_o\ & (\Ar[1]~input_o\ $ (\Br[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[1]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Br[0]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (!\Ar[0]~input_o\ & (\Br[1]~input_o\ & !\Br[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Br[0]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & (((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ 
-- & ((\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & !\Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\,
	datab => \Mult0|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: IOIBUF_X28_Y24_N1
\Ai[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

-- Location: LCCOMB_X28_Y18_N8
\Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ = (\Bi[0]~input_o\ & (\Bi[1]~input_o\ $ (\Ai[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Bi[0]~input_o\,
	datac => \Ai[1]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N14
\Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (!\Ai[0]~input_o\ & (\Bi[1]~input_o\ & !\Bi[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & (((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ 
-- & ((\Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & !\Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\,
	datab => \Mult1|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X28_Y17_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add0~1\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Add0~1\ & 
-- VCC)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add0~1\) # (GND))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\Add0~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X34_Y18_N1
\Ai[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

-- Location: LCCOMB_X28_Y18_N10
\Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ = (\Bi[0]~input_o\ & (\Bi[1]~input_o\ $ (((\Ai[2]~input_o\))))) # (!\Bi[0]~input_o\ & (\Bi[1]~input_o\ & (!\Ai[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Bi[0]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\Bi[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

-- Location: LCCOMB_X28_Y18_N4
\Mult1|mult_core|padder|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~0_combout\ = \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ $ (((\Bi[2]~input_o\ & !\Bi[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datab => \Bi[2]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \Mult1|mult_core|padder|_~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\Mult1|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|$00035|left_bit[0]~0_combout\ = (\Ai[0]~input_o\ & (!\Bi[2]~input_o\ & \Bi[1]~input_o\)) # (!\Ai[0]~input_o\ & (\Bi[2]~input_o\ & !\Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Bi[2]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \Mult1|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult1|mult_core|padder|_~0_combout\ $ (\Mult1|mult_core|$00035|left_bit[0]~0_combout\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|padder|_~0_combout\ & ((\Mult1|mult_core|$00035|left_bit[0]~0_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult1|mult_core|padder|_~0_combout\ & (\Mult1|mult_core|$00035|left_bit[0]~0_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~0_combout\,
	datab => \Mult1|mult_core|$00035|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: IOIBUF_X34_Y12_N22
\Br[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Br(2),
	o => \Br[2]~input_o\);

-- Location: LCCOMB_X28_Y20_N30
\Mult0|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|$00035|left_bit[0]~0_combout\ = (\Ar[0]~input_o\ & (\Br[1]~input_o\ & !\Br[2]~input_o\)) # (!\Ar[0]~input_o\ & (!\Br[1]~input_o\ & \Br[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datac => \Br[1]~input_o\,
	datad => \Br[2]~input_o\,
	combout => \Mult0|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\Ar[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ar(2),
	o => \Ar[2]~input_o\);

-- Location: LCCOMB_X28_Y20_N24
\Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ = (\Br[0]~input_o\ & ((\Br[1]~input_o\ $ (\Ar[2]~input_o\)))) # (!\Br[0]~input_o\ & (!\Ar[1]~input_o\ & (\Br[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[1]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Br[0]~input_o\,
	datad => \Ar[2]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\Mult0|mult_core|padder|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|_~0_combout\ = \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ $ (((!\Br[1]~input_o\ & \Br[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Br[1]~input_o\,
	datad => \Br[2]~input_o\,
	combout => \Mult0|mult_core|padder|_~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|$00035|left_bit[0]~0_combout\ $ (\Mult0|mult_core|padder|_~0_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|$00035|left_bit[0]~0_combout\ & ((\Mult0|mult_core|padder|_~0_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|$00035|left_bit[0]~0_combout\ & (\Mult0|mult_core|padder|_~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|$00035|left_bit[0]~0_combout\,
	datab => \Mult0|mult_core|padder|_~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X28_Y17_N22
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add0~3\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y20_N0
\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = (\Ar[1]~input_o\ & (!\Br[2]~input_o\ & \Br[1]~input_o\)) # (!\Ar[1]~input_o\ & (\Br[2]~input_o\ & !\Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[1]~input_o\,
	datac => \Br[2]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\Mult0|mult_core|padder|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|_~1_combout\ = (\Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ & (!\Br[1]~input_o\ & \Br[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Br[1]~input_o\,
	datad => \Br[2]~input_o\,
	combout => \Mult0|mult_core|padder|_~1_combout\);

-- Location: LCCOMB_X28_Y20_N10
\Mult0|mult_core|padder|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|_~2_combout\ = \Mult0|mult_core|padder|_~1_combout\ $ (((\Br[1]~input_o\ & ((!\Ar[2]~input_o\))) # (!\Br[1]~input_o\ & (\Br[0]~input_o\ & \Ar[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|_~1_combout\,
	datab => \Br[0]~input_o\,
	datac => \Br[1]~input_o\,
	datad => \Ar[2]~input_o\,
	combout => \Mult0|mult_core|padder|_~2_combout\);

-- Location: LCCOMB_X28_Y20_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult0|mult_core|padder|_~2_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|padder|_~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult0|mult_core|padder|_~2_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|padder|_~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult0|mult_core|padder|_~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|padder|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datab => \Mult0|mult_core|padder|_~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y18_N6
\Mult1|mult_core|padder|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~1_combout\ = (\Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ & (\Bi[2]~input_o\ & !\Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datab => \Bi[2]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \Mult1|mult_core|padder|_~1_combout\);

-- Location: LCCOMB_X28_Y18_N16
\Mult1|mult_core|padder|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~2_combout\ = \Mult1|mult_core|padder|_~1_combout\ $ (((\Bi[1]~input_o\ & ((!\Ai[2]~input_o\))) # (!\Bi[1]~input_o\ & (\Bi[0]~input_o\ & \Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~1_combout\,
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult1|mult_core|padder|_~2_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = (\Bi[1]~input_o\ & (!\Bi[2]~input_o\ & \Ai[1]~input_o\)) # (!\Bi[1]~input_o\ & (\Bi[2]~input_o\ & !\Ai[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Bi[2]~input_o\,
	datac => \Ai[1]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N8
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|padder|_~2_combout\ & ((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult1|mult_core|padder|_~2_combout\ & ((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult1|mult_core|padder|_~2_combout\ & (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult1|mult_core|padder|_~2_combout\ & ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~2_combout\,
	datab => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y17_N24
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add0~5\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Add0~5\ & 
-- VCC)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add0~5\) # (GND))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Add0~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X28_Y20_N6
\Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ = (\Ar[2]~input_o\ & (\Br[1]~input_o\ & !\Br[2]~input_o\)) # (!\Ar[2]~input_o\ & (!\Br[1]~input_o\ & \Br[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ar[2]~input_o\,
	datac => \Br[1]~input_o\,
	datad => \Br[2]~input_o\,
	combout => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Mult0|mult_core|padder|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|_~3_combout\ = (!\Mult0|mult_core|padder|_~1_combout\ & ((\Br[1]~input_o\ & ((!\Ar[2]~input_o\))) # (!\Br[1]~input_o\ & (\Br[0]~input_o\ & \Ar[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|_~1_combout\,
	datab => \Br[0]~input_o\,
	datac => \Br[1]~input_o\,
	datad => \Ar[2]~input_o\,
	combout => \Mult0|mult_core|padder|_~3_combout\);

-- Location: LCCOMB_X28_Y20_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult0|mult_core|padder|_~3_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((\Mult0|mult_core|padder|_~3_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & (\Mult0|mult_core|padder|_~3_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult0|mult_core|padder|_~3_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X28_Y18_N20
\Mult1|mult_core|padder|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|_~3_combout\ = (!\Mult1|mult_core|padder|_~1_combout\ & ((\Bi[1]~input_o\ & ((!\Ai[2]~input_o\))) # (!\Bi[1]~input_o\ & (\Bi[0]~input_o\ & \Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~1_combout\,
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult1|mult_core|padder|_~3_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ = (\Bi[2]~input_o\ & (!\Bi[1]~input_o\ & !\Ai[2]~input_o\)) # (!\Bi[2]~input_o\ & (\Bi[1]~input_o\ & \Ai[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bi[2]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\);

-- Location: LCCOMB_X28_Y17_N10
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult1|mult_core|padder|_~3_combout\ $ (\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult1|mult_core|padder|_~3_combout\ & ((\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult1|mult_core|padder|_~3_combout\ & (\Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|_~3_combout\,
	datab => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X28_Y17_N26
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\Add0~7\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y17_N12
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ $ (\Mult1|mult_core|padder|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datad => \Mult1|mult_core|padder|_~3_combout\,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult0|mult_core|padder|_~3_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult0|mult_core|padder|_~3_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X28_Y17_N28
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add0~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add0~9\) # 
-- (GND))))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Add0~9\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Add0~9\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X28_Y17_N30
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\Add0~11\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X29_Y19_N0
\Mult3|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|$00031|out_bit[0]~0_combout\ = \Br[1]~input_o\ $ (((\Ai[0]~input_o\ & \Br[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datac => \Br[0]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y19_N2
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Br[1]~input_o\ & (\Mult3|mult_core|$00031|out_bit[0]~0_combout\ $ (VCC))) # (!\Br[1]~input_o\ & (\Mult3|mult_core|$00031|out_bit[0]~0_combout\ & VCC))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Br[1]~input_o\ & \Mult3|mult_core|$00031|out_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Br[1]~input_o\,
	datab => \Mult3|mult_core|$00031|out_bit[0]~0_combout\,
	datad => VCC,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X29_Y20_N0
\Mult2|mult_core|$00031|out_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|$00031|out_bit[0]~0_combout\ = \Bi[1]~input_o\ $ (((\Ar[0]~input_o\ & \Bi[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult2|mult_core|$00031|out_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Bi[1]~input_o\ & (\Mult2|mult_core|$00031|out_bit[0]~0_combout\ $ (VCC))) # (!\Bi[1]~input_o\ & (\Mult2|mult_core|$00031|out_bit[0]~0_combout\ & VCC))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Bi[1]~input_o\ & \Mult2|mult_core|$00031|out_bit[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Mult2|mult_core|$00031|out_bit[0]~0_combout\,
	datad => VCC,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X29_Y19_N18
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X29_Y20_N26
\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (!\Ar[0]~input_o\ & (\Bi[1]~input_o\ & !\Bi[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ = (\Bi[0]~input_o\ & (\Ar[1]~input_o\ $ (\Bi[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[1]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & (((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & ((\Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & 
-- ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & !\Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datab => \Mult2|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X28_Y18_N24
\Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ = (\Br[0]~input_o\ & (\Ai[1]~input_o\ $ (\Br[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Br[0]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y19_N14
\Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ = (!\Ai[0]~input_o\ & (!\Br[0]~input_o\ & \Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datac => \Br[0]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y19_N4
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & (((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ 
-- & ((\Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY(((!\Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\ & !\Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|mul_lfrg_first_mod|left_bit[0]~0_combout\,
	datab => \Mult3|mult_core|mul_lfrg_first_mod|right_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y19_N20
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Add1~1\ & VCC)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- (!\Add1~1\)))) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add1~1\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add1~1\) # 
-- (GND)))))
-- \Add1~3\ = CARRY((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\Add1~1\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\Add1~1\) # 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X28_Y18_N26
\Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ = (\Br[0]~input_o\ & (\Br[1]~input_o\ $ (((\Ai[2]~input_o\))))) # (!\Br[0]~input_o\ & (\Br[1]~input_o\ & (!\Ai[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Br[0]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Mult3|mult_core|padder|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|_~0_combout\ = \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ $ (((\Br[2]~input_o\ & !\Br[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Br[2]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|padder|_~0_combout\);

-- Location: LCCOMB_X29_Y19_N16
\Mult3|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|$00035|left_bit[0]~0_combout\ = (\Ai[0]~input_o\ & (!\Br[2]~input_o\ & \Br[1]~input_o\)) # (!\Ai[0]~input_o\ & (\Br[2]~input_o\ & !\Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datac => \Br[2]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y19_N6
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult3|mult_core|padder|_~0_combout\ $ (\Mult3|mult_core|$00035|left_bit[0]~0_combout\ $ (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult3|mult_core|padder|_~0_combout\ & ((\Mult3|mult_core|$00035|left_bit[0]~0_combout\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult3|mult_core|padder|_~0_combout\ & (\Mult3|mult_core|$00035|left_bit[0]~0_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|_~0_combout\,
	datab => \Mult3|mult_core|$00035|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y20_N30
\Mult2|mult_core|$00035|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|$00035|left_bit[0]~0_combout\ = (\Ar[0]~input_o\ & (\Bi[1]~input_o\ & !\Bi[2]~input_o\)) # (!\Ar[0]~input_o\ & (!\Bi[1]~input_o\ & \Bi[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[2]~input_o\,
	combout => \Mult2|mult_core|$00035|left_bit[0]~0_combout\);

-- Location: LCCOMB_X30_Y20_N18
\Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ = (\Bi[0]~input_o\ & (\Bi[1]~input_o\ $ ((\Ar[2]~input_o\)))) # (!\Bi[0]~input_o\ & (\Bi[1]~input_o\ & ((!\Ar[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[1]~input_o\,
	datab => \Ar[2]~input_o\,
	datac => \Bi[0]~input_o\,
	datad => \Ar[1]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\);

-- Location: LCCOMB_X29_Y20_N8
\Mult2|mult_core|padder|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|_~0_combout\ = \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ $ (((\Bi[2]~input_o\ & !\Bi[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Bi[1]~input_o\,
	combout => \Mult2|mult_core|padder|_~0_combout\);

-- Location: LCCOMB_X29_Y20_N18
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult2|mult_core|$00035|left_bit[0]~0_combout\ $ (\Mult2|mult_core|padder|_~0_combout\ $ (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult2|mult_core|$00035|left_bit[0]~0_combout\ & ((\Mult2|mult_core|padder|_~0_combout\) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult2|mult_core|$00035|left_bit[0]~0_combout\ & (\Mult2|mult_core|padder|_~0_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|$00035|left_bit[0]~0_combout\,
	datab => \Mult2|mult_core|padder|_~0_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y19_N22
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\Add1~3\))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X28_Y18_N2
\Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = (\Ai[1]~input_o\ & (!\Br[2]~input_o\ & \Br[1]~input_o\)) # (!\Ai[1]~input_o\ & (\Br[2]~input_o\ & !\Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ai[1]~input_o\,
	datac => \Br[2]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X28_Y18_N14
\Mult3|mult_core|padder|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|_~1_combout\ = (\Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ & (\Br[2]~input_o\ & !\Br[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Br[2]~input_o\,
	datad => \Br[1]~input_o\,
	combout => \Mult3|mult_core|padder|_~1_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Mult3|mult_core|padder|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|_~2_combout\ = \Mult3|mult_core|padder|_~1_combout\ $ (((\Br[1]~input_o\ & ((!\Ai[2]~input_o\))) # (!\Br[1]~input_o\ & (\Br[0]~input_o\ & \Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Br[0]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Mult3|mult_core|padder|_~1_combout\,
	datad => \Ai[2]~input_o\,
	combout => \Mult3|mult_core|padder|_~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult3|mult_core|padder|_~2_combout\ & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult3|mult_core|padder|_~2_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult3|mult_core|padder|_~2_combout\ & 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult3|mult_core|padder|_~2_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult3|mult_core|padder|_~2_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult3|mult_core|padder|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datab => \Mult3|mult_core|padder|_~2_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X29_Y20_N10
\Mult2|mult_core|padder|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|_~1_combout\ = (\Bi[2]~input_o\ & (\Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\ & !\Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Mult2|mult_core|mul_lfrg_first_mod|out_bit[1]~0_combout\,
	datac => \Bi[1]~input_o\,
	combout => \Mult2|mult_core|padder|_~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\Mult2|mult_core|padder|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|_~2_combout\ = \Mult2|mult_core|padder|_~1_combout\ $ (((\Ar[2]~input_o\ & (!\Bi[1]~input_o\ & \Bi[0]~input_o\)) # (!\Ar[2]~input_o\ & (\Bi[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|_~1_combout\,
	datab => \Ar[2]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult2|mult_core|padder|_~2_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ = (\Ar[1]~input_o\ & (\Bi[1]~input_o\ & !\Bi[2]~input_o\)) # (!\Ar[1]~input_o\ & (!\Bi[1]~input_o\ & \Bi[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ar[1]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[2]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N20
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult2|mult_core|padder|_~2_combout\ & ((\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult2|mult_core|padder|_~2_combout\ & ((\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult2|mult_core|padder|_~2_combout\ & (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult2|mult_core|padder|_~2_combout\ & ((!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|_~2_combout\,
	datab => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[0]~0_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X29_Y19_N24
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Add1~5\ & VCC)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\Add1~5\)))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Add1~5\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add1~5\) # 
-- (GND)))))
-- \Add1~7\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Add1~5\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\Add1~5\) # 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X28_Y18_N22
\Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ = (\Br[1]~input_o\ & (!\Br[2]~input_o\ & \Ai[2]~input_o\)) # (!\Br[1]~input_o\ & (\Br[2]~input_o\ & !\Ai[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Br[1]~input_o\,
	datac => \Br[2]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\);

-- Location: LCCOMB_X28_Y18_N12
\Mult3|mult_core|padder|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|_~3_combout\ = (!\Mult3|mult_core|padder|_~1_combout\ & ((\Br[1]~input_o\ & ((!\Ai[2]~input_o\))) # (!\Br[1]~input_o\ & (\Br[0]~input_o\ & \Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Br[0]~input_o\,
	datab => \Br[1]~input_o\,
	datac => \Mult3|mult_core|padder|_~1_combout\,
	datad => \Ai[2]~input_o\,
	combout => \Mult3|mult_core|padder|_~3_combout\);

-- Location: LCCOMB_X29_Y19_N10
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult3|mult_core|padder|_~3_combout\ $ (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((\Mult3|mult_core|padder|_~3_combout\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & (\Mult3|mult_core|padder|_~3_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult3|mult_core|padder|_~3_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X29_Y20_N6
\Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ = (\Bi[2]~input_o\ & (!\Ar[2]~input_o\ & !\Bi[1]~input_o\)) # (!\Bi[2]~input_o\ & (\Ar[2]~input_o\ & \Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Ar[2]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\);

-- Location: LCCOMB_X29_Y20_N4
\Mult2|mult_core|padder|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|_~3_combout\ = (!\Mult2|mult_core|padder|_~1_combout\ & ((\Ar[2]~input_o\ & (!\Bi[1]~input_o\ & \Bi[0]~input_o\)) # (!\Ar[2]~input_o\ & (\Bi[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|padder|_~1_combout\,
	datab => \Ar[2]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \Mult2|mult_core|padder|_~3_combout\);

-- Location: LCCOMB_X29_Y20_N22
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult2|mult_core|padder|_~3_combout\ $ (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & ((\Mult2|mult_core|padder|_~3_combout\) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ & (\Mult2|mult_core|padder|_~3_combout\ & !\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult2|mult_core|padder|_~3_combout\,
	datad => VCC,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X29_Y19_N26
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\Add1~7\))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X29_Y19_N12
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult3|mult_core|padder|_~3_combout\ $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ $ (\Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|padder|_~3_combout\,
	datad => \Mult3|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X29_Y20_N24
\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\ $ (\Mult2|mult_core|padder|_~3_combout\ $ (\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|mul_lfrg_last_mod|left_bit[1]~1_combout\,
	datab => \Mult2|mult_core|padder|_~3_combout\,
	cin => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X29_Y19_N28
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Add1~9\ & VCC)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\Add1~9\)))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add1~9\)) # (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add1~9\) # 
-- (GND)))))
-- \Add1~11\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add1~9\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Add1~9\) # 
-- (!\Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X29_Y19_N30
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\Add1~11\ $ (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

ww_Yr(0) <= \Yr[0]~output_o\;

ww_Yr(1) <= \Yr[1]~output_o\;

ww_Yr(2) <= \Yr[2]~output_o\;

ww_Yr(3) <= \Yr[3]~output_o\;

ww_Yr(4) <= \Yr[4]~output_o\;

ww_Yr(5) <= \Yr[5]~output_o\;

ww_Yr(6) <= \Yr[6]~output_o\;

ww_Yi(0) <= \Yi[0]~output_o\;

ww_Yi(1) <= \Yi[1]~output_o\;

ww_Yi(2) <= \Yi[2]~output_o\;

ww_Yi(3) <= \Yi[3]~output_o\;

ww_Yi(4) <= \Yi[4]~output_o\;

ww_Yi(5) <= \Yi[5]~output_o\;

ww_Yi(6) <= \Yi[6]~output_o\;
END structure;


