library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity g09_rules_player is
	port (  
	   play_pile_top_card	      :	in  std_logic_vector(4 downto 0);
		card_to_play		         :	in  std_logic_vector(5 downto 0);
		sum_enable, clock, Reset   :	in  std_logic;
		Sel								:  in  std_logic;
		legal_play			         :	out std_logic;
		sum  		                  :  out std_logic_vector(4 downto 0));
				
end g09_rules_player;

architecture behavioural of g09_rules_player is

	signal face_without_addition 			 : std_logic_vector(3 downto 0);
	signal face_value_sum					 : std_logic_vector(4 downto 0);
	signal card                          : std_logic_vector(3 downto 0);
	signal face_value                    : std_logic_vector(3 downto 0);
	signal suit                          : std_logic_vector(3 downto 0);	
	signal Sel_en								 : std_logic;
	
	component g09_Modulo13
		port (
			CardValue    : in std_logic_vector(5 downto 0);
			floor        : out std_logic_vector(3 downto 0);
			mod13        : out std_logic_vector(3 downto 0));
	end component;
	
	begin
		G1: g09_Modulo13 port map(CardValue => card_to_play, floor => suit, mod13 => face_without_addition);	
		face_value <= face_without_addition + 1;
		
		setFaceCards: process(face_value)
		
		begin
		
			if to_integer(unsigned(face_value)) > 10 then 
				card <= "1010" ;
			elsif to_integer(unsigned(face_value)) = 1 then 
				Sel_en <= '1';
				card <= face_value;
			else
				Sel_en <= '0';
				card <= face_value;
			end if;

		end process;
		
		
		cardSum: process(sum_enable, Sel_en, card, Reset, clock)
		
		begin
		
			if Reset = '1' then
			face_value_sum <= "00000";
			elsif (clock'event and clock = '1') then 
				if (sum_enable = '1') then
				face_value_sum <= play_pile_top_card + ("0" & card);
				elsif (Sel_en = '1' and Sel ='1') then
				face_value_sum <= play_pile_top_card + "1010";
				end if;
			end if;
		
		end process;

		fairplay: process (face_value_sum)
			begin
				if to_integer(unsigned(face_value_sum)) <= 21 then 
					legal_play <= '1';
				else
				legal_play <= '0';
				end if;
		end process;
		
		sum <= face_value_sum;
					
end behavioural;