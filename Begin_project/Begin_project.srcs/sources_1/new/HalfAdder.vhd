library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
entity HalfAdder is  
Port (    
    a   :in std_logic;  
    b   :in std_logic;  
    sum :out std_logic;  
    cout:out std_logic  
    );  
end HalfAdder;  
  
architecture Behavioral of HalfAdder is  

begin  
    sum <=   a xor b;  
    cout<=   a and b;  
  
end Behavioral; 
