LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare16 is
	port
	(
		a		   : in unsigned(std_logic_vector(4 downto 0));
		enable	: in std_logic;
		ale16	   : out std_logic);
end g09_compare16;

architecture logicfunct of g09_compare16 is

	begin
					
		process1: process (a, enable)
		
		begin 
		
			ale16 <= '0';
			
			if (enable ='1') then
			
				if a <= 16 then 
					ale16 <= '1';
				else
					ale16 <= '0';
			  end if;
			  
			end if;
			
		end process;		
		
end logicfunct;		
				
			