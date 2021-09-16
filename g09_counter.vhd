library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
 
entity g09_counter is 
  port(
		aclr, enable : in  std_logic;  
      q            : out std_logic_vector(2 downto 0));  
end g09_counter; 

architecture func of g09_counter is 
 
  signal tmp: std_logic_vector(2 downto 0); 
  
  begin  
  
      process1: process (aclr, enable) 
		
        begin  
          if (aclr = '1') then  
            tmp <= "000";  
          elsif (enable' event and enable = '1') then  
            tmp <= tmp + 1; 
          end if;  
      end process;
		
      q <= tmp;  
		
end func; 