LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare5 is
	port
	(
		a		   : in unsigned(std_logic_vector(2 downto 0));
		enable	: in std_logic;
		ae5	   : out std_logic);
end g09_compare5;

architecture logicfunct of g09_compare5 is

	begin
					
		process1: process (a, enable)
		
		begin 
		
			ae5 <= '0';
			
			if (enable ='1') then
			
				if a = 5 then 
					ae5 <= '1';
				else
					ae5 <= '0';
			  end if;
			  
			end if;
			
		end process;		
		
end logicfunct;		
				
			