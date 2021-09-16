library ieee;
use ieee.std_logic_1164.all;


entity g09_computer_player_fsm is
port ( 
	Turn, reset, Clock, less_eq_16, eq_21, gr_21, Stack_en, 
	agb, alb, aeb, rounds_eq_5, playergdealer_wins, legal_play, new_round 			 : in std_logic;
	
	Done, play, compare_16_en, compare_21_en,	compare_sums_en, 
	player_wins_en, dealer_wins_en, invalid_play, compare_5_en, 
	compare_wins_en, games_played_en, games_won_en, game_over, init 	             : out std_logic);
	
end g09_computer_player_fsm;
	
architecture behavioural of g09_computer_player_fsm is

	type state_type is (A,B,C,D,F,G,H,I,J,K,L,M);
	signal y_present,y_next	: state_type;
	
begin

	process1: process(y_present, y_next, Turn, less_eq_16, eq_21, gr_21, 
	agb, alb, aeb, rounds_eq_5, playergdealer_wins, legal_play, new_round)
	begin  
	
	if legal_play = '0' then
		y_next <= J;
	end if;
	
			case y_present is 
				when A => 
					if Turn = '0' then 
						y_next <= B;
					else 
						y_next <= A;
					end if;
					
				when B => 
					if Turn = '1' then 
						y_next <= C;
					else 
						y_next <= B;
					end if;
				
				when C => 
					if Stack_en = '1' then 
						y_next <= D;
					else 
						y_next <= C;
					end if;
				
				when D => 
					if less_eq_16 = '0' then
						if eq_21 = '1' then
							y_next <= H;
						elsif gr_21 = '1' then
							y_next <= G;
						else
							y_next <= F;
						end if;
						
					else
						y_next <= C;
					end if;
							
				when F => 
						if agb = '1' then
							y_next <= G;
						elsif aeb = '1' then
							y_next <= I;
						elsif alb = '1' then
							y_next <= H;
						else
							y_next <= A;
						end if;
						
				when G => 
							y_next <= J;		
						
				when H => 
							y_next <= J;		
				
				when I => 
					if new_round = '1' then
							y_next <= A;
					else 
						y_next <= I;
					end if;
							
				when J => 
						if rounds_eq_5 = '1' then
							y_next <= K;
						else 
							y_next <= A;
						end if;
				
				when K => 
						if playergdealer_wins = '1' then
							y_next <= L;
						else
							y_next <= M;
						end if;
						
				when L => 
							y_next <= A;
							
				when M =>
					if new_round = '1' then
							y_next <= A;
					else 
						y_next <= M;
					end if;
								
				when others =>
						y_next <= A;
			end case;
	end process;
		
	process2: process (Clock, reset)
	begin
		if reset = '1' then
			y_present <= A;
		elsif (Clock'event and Clock = '1') then 
			y_present <= y_next;
		end if;
	end process;
	
	Done <= '0' when (y_present = A or y_present = B)
		else '1';
	play <= '1' when y_present = C 
		else '0';
	compare_16_en <= '1' when y_present = D
		else '0';
	compare_21_en <= '1' when y_present = D
		else '0';
	compare_sums_en <= '1' when y_present = F
		else '0';
	player_wins_en <= '1' when y_present = G
		else '0';
	dealer_wins_en <= '1' when y_present = H
		else '0';
	invalid_play <= '1' when y_present = I
		else '0';
	compare_5_en <= '1' when y_present = J
		else '0';
	init <= '1' when y_present = K
		else '0';
	compare_wins_en <= '1' when y_present = K
		else '0';
	games_played_en <= '1' when y_present = K
		else '0';
	games_won_en <= '1' when y_present = L
		else '0';
	game_over <= '1' when y_present = M
		else '0';

				
end behavioural;