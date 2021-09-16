LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare_wins is
	port
	(
		player,dealer	   : in unsigned(std_logic_vector(2 downto 0));
		enable	         : in std_logic;
		playergdealer	   : out std_logic);
end g09_compare_wins;

architecture logicfunct of g09_compare_wins is

	begin
					
		process1: process (player, dealer, enable)
		
		begin 
		
			playergdealer <= '0';
			
			if (enable ='1') then
			
				if player > dealer then 
					playergdealer <= '1';
				else
					playergdealer <= '0';
			  end if;
			  
			end if;
			
		end process;		
		
end logicfunct;		
				
			