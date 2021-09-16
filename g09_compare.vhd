LIBRARY IEEE;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g09_compare is
	port
	(
		a,b		: in unsigned(std_logic_vector(5 downto 0));
		enable	: in std_logic;
		alb	   : out std_logic);
end g09_compare;

architecture logicfunct of g09_compare is

	begin
					
		process1: process (enable, a, b)
		
		begin 

		alb <= '0';
		
		if (enable ='1') then
			if a < b then
				alb <= '1';
			else
				alb <= '0';
			end if;
		end if;
		
	end process;				
		
end logicfunct;		
				
			