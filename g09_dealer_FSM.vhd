library ieee;
use ieee.std_logic_1164.all;

entity g09_dealer_FSM is
port ( 
	Request_Deal, RAND_LT_NUM, reset, Clock	: in std_logic;
	Stack_Enable, Rand_Enable				      : out std_logic);
	
end g09_dealer_FSM;
	
architecture behavioural of g09_dealer_FSM is

	type state_type is (A,B,C,D);
	signal y_present,y_next	: state_type;
	
begin

	process1: process(y_present,y_next,Request_Deal,RAND_LT_NUM)
	begin  
			case y_present is 
				when A => 
					if Request_Deal = '0' then 
						y_next <= B;
					else 
						y_next <= A;
					end if;
					
				when B => 
					if Request_Deal = '1' then 
						y_next <= C;
					else 
						y_next <= B;
					end if;
				
				when C => 
					if RAND_LT_NUM = '0' then
						y_next <= C;
					else
						y_next <= D;
					end if;
				
				when D => 
						y_next <= A;
						
				when others =>
						y_next <= A;
			end case;
	end process;
		
	process2: process (Clock, reset)
	begin
		if reset = '1' then
			y_present <= A;
		elsif (clock'event and clock = '1') then 
			y_present <= y_next;
		end if;
	end process;
		
	Rand_Enable <= '1' when y_present = C 
		else '0';
	Stack_Enable <= '1' when y_present = D 
		else '0';
				
end behavioural;