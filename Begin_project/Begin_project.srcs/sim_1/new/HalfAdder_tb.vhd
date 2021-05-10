library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
  
entity HalfAdder_tb is  
--  Port ( );  
end HalfAdder_tb;  
  
architecture Behavioral of HalfAdder_tb is  
------component---  
    component HalfAdder is  
    port (   
        a   :in std_logic;  
        b   :in std_logic;  
        sum :out std_logic;  
        cout:out std_logic  
    );  
    end component;  
----signal----    
    signal a    : std_logic;  
    signal b    : std_logic;  
    signal sum  : std_logic;  
    signal cout : std_logic;  
begin  
    process begin  
            a<='0';  
            b<='0';  
        wait for 20 ns;  
            a<='0';  
            b<='1';  
        wait for 20 ns;  
            a<='1';  
            b<='0';  
        wait for 20 ns;  
            a<='1';  
            b<='1';  
        wait for 20 ns;  
    end process;  
      
    dut:HalfAdder port map(  
        a    =>  a   ,  
        b    =>  b   ,  
        sum  =>  sum ,  
        cout =>  cout  
    );  
      
end Behavioral;  
