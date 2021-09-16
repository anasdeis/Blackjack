-- this circuit implements the 7-Segment LED display
--
-- entity name: g09_7_segment_decoder
--
-- Copyright (C) 2017 Moetassem Abdelazim, Anas Deis
-- Version 1.0
-- Author: Moetassem Abdelazim, Anas Deis; moetassem.abdelazim@mail.mcgill.ca, anas.deis@mail.mcgill.ca
-- Date : October 18th, 2017

library ieee;
use ieee.std_logic_1164.all;

entity g09_7_segment_decoder is 

	port ( code  :  in std_logic_vector(3 downto 0);
			 mode  :  in std_logic;
			 segments_out  : out std_logic_vector(6 downto 0));

end g09_7_segment_decoder;			

architecture example of g09_7_segment_decoder is 

	signal xcode : std_logic_vector(4 downto 0);

	BEGIN

	xcode(4 downto 1) <= code; 
	xcode(0) <= mode;

	WITH xcode SELECT 

	segments_out <=

		"1000000" WHEN "00000", 
		"1111001" WHEN "00010",
		"0100100" WHEN "00100",
		"0110000" WHEN "00110",
		"0011001" WHEN "01000",
		"0010010" WHEN "01010",
		"0000010" WHEN "01100",
		"1111000" WHEN "01110",
		"0000000" WHEN "10000",
		"0010000" WHEN "10010",
		"0001000" WHEN "10100",
		"0000011" WHEN "10110",
		"1000110" WHEN "11000",
		"0100001" WHEN "11010",
		"0000110" WHEN "11100",
		"0001110" WHEN "11110",
		"0001000" WHEN "00001",
		"0100100" WHEN "00011",
		"0110000" WHEN "00101",
		"0011001" WHEN "00111",
		"0010010" WHEN "01001",
		"0000010" WHEN "01011",
		"1111000" WHEN "01101",
		"0000000" WHEN "01111",
		"0010000" WHEN "10001",
		"1000000" WHEN "10011",
		"1100001" WHEN "10101",
		"0100011" WHEN "10111",
		"0001001" WHEN "11001",
		"0111111" WHEN "11011",
		"0111111" WHEN "11101",
		"0111111" WHEN "11111";

end example;
