--This is a full adder used in state machine.

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.std_logic_unsigned.ALL; 
    
entity FullAdder is  
port (   
    a   :in std_logic_vector(5 downto 0); 
    b   :in std_logic_vector(5 downto 0); 
    sum :out std_logic_vector(5 downto 0)
);  
end FullAdder;  
  
architecture Behavioral of FullAdder is  
  
begin  
 sum <=   a + b;  
end Behavioral;  
