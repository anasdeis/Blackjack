LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare_sums is
	port
	(
		sum_player, sum_dealer		: in unsigned(std_logic_vector(4 downto 0));
		enable	                  : in std_logic;
		agb, aeb, alb	            : out std_logic);
end g09_compare_sums;

architecture logicfunct of g09_compare_sums is

	begin
					
		process1: process (enable, sum_dealer, sum_player)
		
		begin 
		
		aeb <= '0';
		agb <= '0';
		alb <= '0';
		
			if (enable ='1') then
			
				if sum_player > sum_dealer then
					agb <= '1';
				else
					agb <= '0';
				end if;
				
				if sum_player = sum_dealer then
					aeb <= '1';
				else
					aeb <= '0';
				end if;
				
				if sum_player < sum_dealer then
					alb <= '1';
				else
					alb <= '0';
				end if;
				
			end if;
		end process;		
			
		
end logicfunct;		
				
			