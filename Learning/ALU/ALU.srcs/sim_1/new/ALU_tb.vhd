
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_tb is 
-- Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is

component ALU
port(
    A:in std_logic_vector(7 downto 0);
    B: in std_logic_vector(7 downto 0);
    F:in std_logic_vector(2 downto 0);
    cout:out std_logic;
    Y:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
  
end component;

signal A: std_logic_vector(7 downto 0):="00000000";
signal B:  std_logic_vector(7 downto 0):="00000000";
signal F: std_logic_vector(2 downto 0):="000";
signal cout: std_logic;
signal Y: STD_LOGIC_VECTOR(7 DOWNTO 0);



begin
dut:alu port map
    (
        A=>A,
        B=>B,
        F=>F,
        cout=>cout,
        Y=>Y
     );
process
    begin
        --测试与门、或门
        A<="00000000";
        B<="11111111";
        F<= "000";
        wait for 10 ns;
        
        A<="11111111";
        B<="11111111";
        F<= "000";
        wait for 10 ns;

        A<="11111111";
        B<="00000000";
        F<= "000";
        wait for 10 ns;
        
        A<="00000000";
        B<="00000000";
        F<= "000";
        wait for 10ns;
end process;
end Behavioral;
