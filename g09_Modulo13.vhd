library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity g09_Modulo13 is
port(
	CardValue      : in unsigned(std_logic_vector(5 downto 0));
   mod13 		   : out std_logic_vector(3 downto 0);
   floor          : out std_logic_vector(3 downto 0));
    
    end g09_Modulo13;
    
    architecture example of g09_Modulo13 is
    
	 signal mod_13, f  : std_logic_vector(5 downto 0);
	 
    begin
    
    mod_13 <= std_logic_vector(CardValue mod 13);
	 mod13 <= mod_13(3 downto 0);
	 
    f <= std_logic_vector(CardValue/13);
	 floor <= f(3 downto 0);
    
    end example;
    
    