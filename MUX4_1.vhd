-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: MUX4_1.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.0 Build 156 04/24/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY MUX4_1 IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		sel		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END MUX4_1;


ARCHITECTURE SYN OF mux4_1 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_2D (3 DOWNTO 0, 63 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (63 DOWNTO 0);

BEGIN
	sub_wire5    <= data0x(63 DOWNTO 0);
	sub_wire4    <= data1x(63 DOWNTO 0);
	sub_wire3    <= data2x(63 DOWNTO 0);
	result    <= sub_wire0(63 DOWNTO 0);
	sub_wire1    <= data3x(63 DOWNTO 0);
	sub_wire2(3, 0)    <= sub_wire1(0);
	sub_wire2(3, 1)    <= sub_wire1(1);
	sub_wire2(3, 2)    <= sub_wire1(2);
	sub_wire2(3, 3)    <= sub_wire1(3);
	sub_wire2(3, 4)    <= sub_wire1(4);
	sub_wire2(3, 5)    <= sub_wire1(5);
	sub_wire2(3, 6)    <= sub_wire1(6);
	sub_wire2(3, 7)    <= sub_wire1(7);
	sub_wire2(3, 8)    <= sub_wire1(8);
	sub_wire2(3, 9)    <= sub_wire1(9);
	sub_wire2(3, 10)    <= sub_wire1(10);
	sub_wire2(3, 11)    <= sub_wire1(11);
	sub_wire2(3, 12)    <= sub_wire1(12);
	sub_wire2(3, 13)    <= sub_wire1(13);
	sub_wire2(3, 14)    <= sub_wire1(14);
	sub_wire2(3, 15)    <= sub_wire1(15);
	sub_wire2(3, 16)    <= sub_wire1(16);
	sub_wire2(3, 17)    <= sub_wire1(17);
	sub_wire2(3, 18)    <= sub_wire1(18);
	sub_wire2(3, 19)    <= sub_wire1(19);
	sub_wire2(3, 20)    <= sub_wire1(20);
	sub_wire2(3, 21)    <= sub_wire1(21);
	sub_wire2(3, 22)    <= sub_wire1(22);
	sub_wire2(3, 23)    <= sub_wire1(23);
	sub_wire2(3, 24)    <= sub_wire1(24);
	sub_wire2(3, 25)    <= sub_wire1(25);
	sub_wire2(3, 26)    <= sub_wire1(26);
	sub_wire2(3, 27)    <= sub_wire1(27);
	sub_wire2(3, 28)    <= sub_wire1(28);
	sub_wire2(3, 29)    <= sub_wire1(29);
	sub_wire2(3, 30)    <= sub_wire1(30);
	sub_wire2(3, 31)    <= sub_wire1(31);
	sub_wire2(3, 32)    <= sub_wire1(32);
	sub_wire2(3, 33)    <= sub_wire1(33);
	sub_wire2(3, 34)    <= sub_wire1(34);
	sub_wire2(3, 35)    <= sub_wire1(35);
	sub_wire2(3, 36)    <= sub_wire1(36);
	sub_wire2(3, 37)    <= sub_wire1(37);
	sub_wire2(3, 38)    <= sub_wire1(38);
	sub_wire2(3, 39)    <= sub_wire1(39);
	sub_wire2(3, 40)    <= sub_wire1(40);
	sub_wire2(3, 41)    <= sub_wire1(41);
	sub_wire2(3, 42)    <= sub_wire1(42);
	sub_wire2(3, 43)    <= sub_wire1(43);
	sub_wire2(3, 44)    <= sub_wire1(44);
	sub_wire2(3, 45)    <= sub_wire1(45);
	sub_wire2(3, 46)    <= sub_wire1(46);
	sub_wire2(3, 47)    <= sub_wire1(47);
	sub_wire2(3, 48)    <= sub_wire1(48);
	sub_wire2(3, 49)    <= sub_wire1(49);
	sub_wire2(3, 50)    <= sub_wire1(50);
	sub_wire2(3, 51)    <= sub_wire1(51);
	sub_wire2(3, 52)    <= sub_wire1(52);
	sub_wire2(3, 53)    <= sub_wire1(53);
	sub_wire2(3, 54)    <= sub_wire1(54);
	sub_wire2(3, 55)    <= sub_wire1(55);
	sub_wire2(3, 56)    <= sub_wire1(56);
	sub_wire2(3, 57)    <= sub_wire1(57);
	sub_wire2(3, 58)    <= sub_wire1(58);
	sub_wire2(3, 59)    <= sub_wire1(59);
	sub_wire2(3, 60)    <= sub_wire1(60);
	sub_wire2(3, 61)    <= sub_wire1(61);
	sub_wire2(3, 62)    <= sub_wire1(62);
	sub_wire2(3, 63)    <= sub_wire1(63);
	sub_wire2(2, 0)    <= sub_wire3(0);
	sub_wire2(2, 1)    <= sub_wire3(1);
	sub_wire2(2, 2)    <= sub_wire3(2);
	sub_wire2(2, 3)    <= sub_wire3(3);
	sub_wire2(2, 4)    <= sub_wire3(4);
	sub_wire2(2, 5)    <= sub_wire3(5);
	sub_wire2(2, 6)    <= sub_wire3(6);
	sub_wire2(2, 7)    <= sub_wire3(7);
	sub_wire2(2, 8)    <= sub_wire3(8);
	sub_wire2(2, 9)    <= sub_wire3(9);
	sub_wire2(2, 10)    <= sub_wire3(10);
	sub_wire2(2, 11)    <= sub_wire3(11);
	sub_wire2(2, 12)    <= sub_wire3(12);
	sub_wire2(2, 13)    <= sub_wire3(13);
	sub_wire2(2, 14)    <= sub_wire3(14);
	sub_wire2(2, 15)    <= sub_wire3(15);
	sub_wire2(2, 16)    <= sub_wire3(16);
	sub_wire2(2, 17)    <= sub_wire3(17);
	sub_wire2(2, 18)    <= sub_wire3(18);
	sub_wire2(2, 19)    <= sub_wire3(19);
	sub_wire2(2, 20)    <= sub_wire3(20);
	sub_wire2(2, 21)    <= sub_wire3(21);
	sub_wire2(2, 22)    <= sub_wire3(22);
	sub_wire2(2, 23)    <= sub_wire3(23);
	sub_wire2(2, 24)    <= sub_wire3(24);
	sub_wire2(2, 25)    <= sub_wire3(25);
	sub_wire2(2, 26)    <= sub_wire3(26);
	sub_wire2(2, 27)    <= sub_wire3(27);
	sub_wire2(2, 28)    <= sub_wire3(28);
	sub_wire2(2, 29)    <= sub_wire3(29);
	sub_wire2(2, 30)    <= sub_wire3(30);
	sub_wire2(2, 31)    <= sub_wire3(31);
	sub_wire2(2, 32)    <= sub_wire3(32);
	sub_wire2(2, 33)    <= sub_wire3(33);
	sub_wire2(2, 34)    <= sub_wire3(34);
	sub_wire2(2, 35)    <= sub_wire3(35);
	sub_wire2(2, 36)    <= sub_wire3(36);
	sub_wire2(2, 37)    <= sub_wire3(37);
	sub_wire2(2, 38)    <= sub_wire3(38);
	sub_wire2(2, 39)    <= sub_wire3(39);
	sub_wire2(2, 40)    <= sub_wire3(40);
	sub_wire2(2, 41)    <= sub_wire3(41);
	sub_wire2(2, 42)    <= sub_wire3(42);
	sub_wire2(2, 43)    <= sub_wire3(43);
	sub_wire2(2, 44)    <= sub_wire3(44);
	sub_wire2(2, 45)    <= sub_wire3(45);
	sub_wire2(2, 46)    <= sub_wire3(46);
	sub_wire2(2, 47)    <= sub_wire3(47);
	sub_wire2(2, 48)    <= sub_wire3(48);
	sub_wire2(2, 49)    <= sub_wire3(49);
	sub_wire2(2, 50)    <= sub_wire3(50);
	sub_wire2(2, 51)    <= sub_wire3(51);
	sub_wire2(2, 52)    <= sub_wire3(52);
	sub_wire2(2, 53)    <= sub_wire3(53);
	sub_wire2(2, 54)    <= sub_wire3(54);
	sub_wire2(2, 55)    <= sub_wire3(55);
	sub_wire2(2, 56)    <= sub_wire3(56);
	sub_wire2(2, 57)    <= sub_wire3(57);
	sub_wire2(2, 58)    <= sub_wire3(58);
	sub_wire2(2, 59)    <= sub_wire3(59);
	sub_wire2(2, 60)    <= sub_wire3(60);
	sub_wire2(2, 61)    <= sub_wire3(61);
	sub_wire2(2, 62)    <= sub_wire3(62);
	sub_wire2(2, 63)    <= sub_wire3(63);
	sub_wire2(1, 0)    <= sub_wire4(0);
	sub_wire2(1, 1)    <= sub_wire4(1);
	sub_wire2(1, 2)    <= sub_wire4(2);
	sub_wire2(1, 3)    <= sub_wire4(3);
	sub_wire2(1, 4)    <= sub_wire4(4);
	sub_wire2(1, 5)    <= sub_wire4(5);
	sub_wire2(1, 6)    <= sub_wire4(6);
	sub_wire2(1, 7)    <= sub_wire4(7);
	sub_wire2(1, 8)    <= sub_wire4(8);
	sub_wire2(1, 9)    <= sub_wire4(9);
	sub_wire2(1, 10)    <= sub_wire4(10);
	sub_wire2(1, 11)    <= sub_wire4(11);
	sub_wire2(1, 12)    <= sub_wire4(12);
	sub_wire2(1, 13)    <= sub_wire4(13);
	sub_wire2(1, 14)    <= sub_wire4(14);
	sub_wire2(1, 15)    <= sub_wire4(15);
	sub_wire2(1, 16)    <= sub_wire4(16);
	sub_wire2(1, 17)    <= sub_wire4(17);
	sub_wire2(1, 18)    <= sub_wire4(18);
	sub_wire2(1, 19)    <= sub_wire4(19);
	sub_wire2(1, 20)    <= sub_wire4(20);
	sub_wire2(1, 21)    <= sub_wire4(21);
	sub_wire2(1, 22)    <= sub_wire4(22);
	sub_wire2(1, 23)    <= sub_wire4(23);
	sub_wire2(1, 24)    <= sub_wire4(24);
	sub_wire2(1, 25)    <= sub_wire4(25);
	sub_wire2(1, 26)    <= sub_wire4(26);
	sub_wire2(1, 27)    <= sub_wire4(27);
	sub_wire2(1, 28)    <= sub_wire4(28);
	sub_wire2(1, 29)    <= sub_wire4(29);
	sub_wire2(1, 30)    <= sub_wire4(30);
	sub_wire2(1, 31)    <= sub_wire4(31);
	sub_wire2(1, 32)    <= sub_wire4(32);
	sub_wire2(1, 33)    <= sub_wire4(33);
	sub_wire2(1, 34)    <= sub_wire4(34);
	sub_wire2(1, 35)    <= sub_wire4(35);
	sub_wire2(1, 36)    <= sub_wire4(36);
	sub_wire2(1, 37)    <= sub_wire4(37);
	sub_wire2(1, 38)    <= sub_wire4(38);
	sub_wire2(1, 39)    <= sub_wire4(39);
	sub_wire2(1, 40)    <= sub_wire4(40);
	sub_wire2(1, 41)    <= sub_wire4(41);
	sub_wire2(1, 42)    <= sub_wire4(42);
	sub_wire2(1, 43)    <= sub_wire4(43);
	sub_wire2(1, 44)    <= sub_wire4(44);
	sub_wire2(1, 45)    <= sub_wire4(45);
	sub_wire2(1, 46)    <= sub_wire4(46);
	sub_wire2(1, 47)    <= sub_wire4(47);
	sub_wire2(1, 48)    <= sub_wire4(48);
	sub_wire2(1, 49)    <= sub_wire4(49);
	sub_wire2(1, 50)    <= sub_wire4(50);
	sub_wire2(1, 51)    <= sub_wire4(51);
	sub_wire2(1, 52)    <= sub_wire4(52);
	sub_wire2(1, 53)    <= sub_wire4(53);
	sub_wire2(1, 54)    <= sub_wire4(54);
	sub_wire2(1, 55)    <= sub_wire4(55);
	sub_wire2(1, 56)    <= sub_wire4(56);
	sub_wire2(1, 57)    <= sub_wire4(57);
	sub_wire2(1, 58)    <= sub_wire4(58);
	sub_wire2(1, 59)    <= sub_wire4(59);
	sub_wire2(1, 60)    <= sub_wire4(60);
	sub_wire2(1, 61)    <= sub_wire4(61);
	sub_wire2(1, 62)    <= sub_wire4(62);
	sub_wire2(1, 63)    <= sub_wire4(63);
	sub_wire2(0, 0)    <= sub_wire5(0);
	sub_wire2(0, 1)    <= sub_wire5(1);
	sub_wire2(0, 2)    <= sub_wire5(2);
	sub_wire2(0, 3)    <= sub_wire5(3);
	sub_wire2(0, 4)    <= sub_wire5(4);
	sub_wire2(0, 5)    <= sub_wire5(5);
	sub_wire2(0, 6)    <= sub_wire5(6);
	sub_wire2(0, 7)    <= sub_wire5(7);
	sub_wire2(0, 8)    <= sub_wire5(8);
	sub_wire2(0, 9)    <= sub_wire5(9);
	sub_wire2(0, 10)    <= sub_wire5(10);
	sub_wire2(0, 11)    <= sub_wire5(11);
	sub_wire2(0, 12)    <= sub_wire5(12);
	sub_wire2(0, 13)    <= sub_wire5(13);
	sub_wire2(0, 14)    <= sub_wire5(14);
	sub_wire2(0, 15)    <= sub_wire5(15);
	sub_wire2(0, 16)    <= sub_wire5(16);
	sub_wire2(0, 17)    <= sub_wire5(17);
	sub_wire2(0, 18)    <= sub_wire5(18);
	sub_wire2(0, 19)    <= sub_wire5(19);
	sub_wire2(0, 20)    <= sub_wire5(20);
	sub_wire2(0, 21)    <= sub_wire5(21);
	sub_wire2(0, 22)    <= sub_wire5(22);
	sub_wire2(0, 23)    <= sub_wire5(23);
	sub_wire2(0, 24)    <= sub_wire5(24);
	sub_wire2(0, 25)    <= sub_wire5(25);
	sub_wire2(0, 26)    <= sub_wire5(26);
	sub_wire2(0, 27)    <= sub_wire5(27);
	sub_wire2(0, 28)    <= sub_wire5(28);
	sub_wire2(0, 29)    <= sub_wire5(29);
	sub_wire2(0, 30)    <= sub_wire5(30);
	sub_wire2(0, 31)    <= sub_wire5(31);
	sub_wire2(0, 32)    <= sub_wire5(32);
	sub_wire2(0, 33)    <= sub_wire5(33);
	sub_wire2(0, 34)    <= sub_wire5(34);
	sub_wire2(0, 35)    <= sub_wire5(35);
	sub_wire2(0, 36)    <= sub_wire5(36);
	sub_wire2(0, 37)    <= sub_wire5(37);
	sub_wire2(0, 38)    <= sub_wire5(38);
	sub_wire2(0, 39)    <= sub_wire5(39);
	sub_wire2(0, 40)    <= sub_wire5(40);
	sub_wire2(0, 41)    <= sub_wire5(41);
	sub_wire2(0, 42)    <= sub_wire5(42);
	sub_wire2(0, 43)    <= sub_wire5(43);
	sub_wire2(0, 44)    <= sub_wire5(44);
	sub_wire2(0, 45)    <= sub_wire5(45);
	sub_wire2(0, 46)    <= sub_wire5(46);
	sub_wire2(0, 47)    <= sub_wire5(47);
	sub_wire2(0, 48)    <= sub_wire5(48);
	sub_wire2(0, 49)    <= sub_wire5(49);
	sub_wire2(0, 50)    <= sub_wire5(50);
	sub_wire2(0, 51)    <= sub_wire5(51);
	sub_wire2(0, 52)    <= sub_wire5(52);
	sub_wire2(0, 53)    <= sub_wire5(53);
	sub_wire2(0, 54)    <= sub_wire5(54);
	sub_wire2(0, 55)    <= sub_wire5(55);
	sub_wire2(0, 56)    <= sub_wire5(56);
	sub_wire2(0, 57)    <= sub_wire5(57);
	sub_wire2(0, 58)    <= sub_wire5(58);
	sub_wire2(0, 59)    <= sub_wire5(59);
	sub_wire2(0, 60)    <= sub_wire5(60);
	sub_wire2(0, 61)    <= sub_wire5(61);
	sub_wire2(0, 62)    <= sub_wire5(62);
	sub_wire2(0, 63)    <= sub_wire5(63);

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 4,
		lpm_type => "LPM_MUX",
		lpm_width => 64,
		lpm_widths => 2
	)
	PORT MAP (
		data => sub_wire2,
		sel => sel,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "64"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
-- Retrieval info: USED_PORT: data0x 0 0 64 0 INPUT NODEFVAL "data0x[63..0]"
-- Retrieval info: USED_PORT: data1x 0 0 64 0 INPUT NODEFVAL "data1x[63..0]"
-- Retrieval info: USED_PORT: data2x 0 0 64 0 INPUT NODEFVAL "data2x[63..0]"
-- Retrieval info: USED_PORT: data3x 0 0 64 0 INPUT NODEFVAL "data3x[63..0]"
-- Retrieval info: USED_PORT: result 0 0 64 0 OUTPUT NODEFVAL "result[63..0]"
-- Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL "sel[1..0]"
-- Retrieval info: CONNECT: @data 1 0 64 0 data0x 0 0 64 0
-- Retrieval info: CONNECT: @data 1 1 64 0 data1x 0 0 64 0
-- Retrieval info: CONNECT: @data 1 2 64 0 data2x 0 0 64 0
-- Retrieval info: CONNECT: @data 1 3 64 0 data3x 0 0 64 0
-- Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
-- Retrieval info: CONNECT: result 0 0 64 0 @result 0 0 64 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX4_1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX4_1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX4_1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX4_1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MUX4_1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
