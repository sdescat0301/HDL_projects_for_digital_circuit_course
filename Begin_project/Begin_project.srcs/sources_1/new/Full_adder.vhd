library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
    
entity FullAdder is  
port (   
    a   :in std_logic;  
    b   :in std_logic;  
    cin :in std_logic;  
    sum :out std_logic;  
    cout:out std_logic  
);  
end FullAdder;  
  
architecture Behavioral of FullAdder is  
  
begin  
 sum <=   a xor b xor cin;  
  cout<=   (a and b) or ((a xor b) and cin);  
end Behavioral;  
