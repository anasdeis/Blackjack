LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare21 is
	port
	(
		a		   : in unsigned(std_logic_vector(4 downto 0));
		enable	: in std_logic;
		ag21     : out std_logic;
		ae21	   : out std_logic);
end g09_compare21;

architecture logicfunct of g09_compare21 is

	begin
					
		process1: process (a, enable)
		
		begin 
		
			ae21 <= '0';
			ag21 <= '0';
			
			if (enable ='1') then
			
				if a = 21 then 
					ae21 <= '1';
				else
					ae21 <= '0';
			  end if;
			  
			  if a > 21 then 
					ag21 <= '1';
				else
					ag21 <= '0';
			  end if;
			  
			end if;
			
		end process;		
		
end logicfunct;		
				
			