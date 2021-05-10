library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
  
entity FullAdder_tb is  
--  Port ( );  
end FullAdder_tb;  
  
architecture Behavioral of FullAdder_tb is  
------component---  
    component FullAdder is  
    port (   
        a   :in std_logic;  
        b   :in std_logic;  
        cin :in std_logic;  
        sum :out std_logic;  
        cout:out std_logic  
    );  
    end component;  
----signal----    
    signal a    : std_logic;  
    signal b    : std_logic;  
    signal cin  : std_logic;  
    signal sum  : std_logic;  
    signal cout : std_logic;  
      
begin  
    process begin  
            a<='0';  
            b<='0';  
            cin<='0';      
        wait for 20 ns;  
            a<='0';  
            b<='0';  
            cin<='1';  
        wait for 20 ns;  
            a<='0';  
            b<='1';  
            cin<='0';          
        wait for 20 ns;  
            a<='0';  
            b<='1';  
            cin<='1';  
        wait for 20 ns;  
            a<='1';  
            b<='0';  
            cin<='0';  
        wait for 20 ns;  
            a<='1';  
            b<='0';  
            cin<='1';  
        wait for 20 ns;  
            a<='1';  
            b<='1';  
            cin<='0';  
        wait for 20 ns;  
            a<='1';  
            b<='1';  
            cin<='1';  
        wait for 20 ns;  
    end process;  
      
    dut:FullAdder port map(  
        a    =>  a   ,  
        b    =>  b   ,  
        cin  =>  cin ,  
        sum  =>  sum ,  
        cout =>  cout  
    );  
      
end Behavioral; 
