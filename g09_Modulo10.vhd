library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity g09_Modulo10 is
port(
	sum    : in unsigned(std_logic_vector(4 downto 0));
   mod10  : out std_logic_vector(3 downto 0);
   floor  : out std_logic_vector(3 downto 0));
    
    end g09_Modulo10;
    
    architecture example of g09_Modulo10 is
    
	 signal mod_10, f  : std_logic_vector(4 downto 0);
	 
    begin
    
    mod_10 <= std_logic_vector(sum mod 10);
	 mod10 <= mod_10(3 downto 0);
	 
    f <= std_logic_vector(sum/10);
	 floor <= f(3 downto 0);
    
    end example;
    
    