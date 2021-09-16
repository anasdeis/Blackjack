library ieee;
use ieee.std_logic_1164.all;


entity g09_human_player_fsm is
port ( 							 
	Reset, clock, Hit, Stop, legal_play, new_round, sel_button, Stack_en					: in std_logic;
	Hit_en, Turn, Done, sel 	                                            			   : out std_logic);
	
end g09_human_player_fsm;
	
architecture behavioural of g09_human_player_fsm is

	type state_type is (A,B,C,D,E,F,G,H,I,J,X,Y,Z);
	signal y_present,y_next	: state_type;
	
begin

	process1: process(Reset, Hit, Stop, legal_play, new_round, Stack_en, y_present, y_next)
	begin 
	
			case y_present is 
				when A => 
					if Reset = '0' then 
						y_next <= B;
					else 
						y_next <= A;
					end if;
					
				when B => 
					if Reset = '1' then 
						y_next <= X;
					else 
						y_next <= B;
					end if;
				
				when X => 
						y_next <= C;
				
				when C => 
					if Stack_en = '1' then 
						y_next <= Y;
					else 
						y_next <= C;
					end if;
					
				when Y =>
					y_next <= D;
							
				when D => 
					if Stack_en = '1' then 
						y_next <= Z;
					else 
						y_next <= D;
					end if;
						
				when Z =>
					y_next <= E;
					
				when E => 
					if Stack_en = '1' then 
						y_next <= F;
					else 
						y_next <= E;
					end if;
						
				when F =>
						if Hit = '1' then
							y_next <= G;
						elsif sel_button = '1' then
							y_next <= H;
						elsif Stop = '1' then
							y_next <= I;
						else
							y_next <= F;
						end if;
						
				when G =>
					if (Stack_en = '1')	then
						if (legal_play = '1') then
							y_next <= F;
						else
							y_next <= J;
						end if;
					else
						y_next <= G;
					end if;
						
				when H =>
						if legal_play = '1' then
							y_next <= F;
						else
							y_next <= J;
						end if;
							
				when I => 
						y_next <= J;
						
				when J => 
						if new_round = '1' then
							y_next <= c;
						else
							y_next <= J;
						end if;
				
				when others =>
						y_next <= A;
						
			end case;
		end process;
		
	process2: process (clock)
	begin
		if (clock'event and clock = '1') then 
			y_present <= y_next;
		end if;
	end process;
	
	Hit_en <= '1' when (y_present = C or y_present = D or y_present = E or y_present = G)
		else '0';
	Turn <= '1' when y_present = I
		else '0';
	Done <= '1' when y_present = C
		else '0';
	sel <= '1' when y_present = H
		else '0';
				
end behavioural;