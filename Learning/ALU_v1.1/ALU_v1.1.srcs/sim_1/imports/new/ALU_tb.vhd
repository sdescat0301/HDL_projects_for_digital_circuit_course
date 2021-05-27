
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_tb is 
-- Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is

component ALU_v1_1
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
    dut:ALU_v1_1 port map
        (
            A=>A,
            B=>B,
            F=>F,
            cout=>cout,
            Y=>Y
         );
    process
        begin
            -- A and B --------------------------------------
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
            
            -- A or B --------------------------------------
            A<="00000000";
            B<="11111111";
            F<= "001";
            wait for 10 ns;
            A<="11111111";
            B<="11111111";
            F<= "001";
            wait for 10 ns;
            A<="11111111";
            B<="00000000";
            F<= "001";
            wait for 10 ns;
            A<="00000000";
            B<="00000000";
            F<= "001";
            wait for 10ns;
            
            -- A + B --------------------------------------
            A<="00011100";
            B<="11111111";
            F<="010";
            wait for 10ns;
            A<="11111111";
            B<="11100001";
            F<="010";
            wait for 10ns;
            A<="11001111";
            B<="00100100";
            F<="010";
            wait for 10ns;
            A<="10110000";
            B<="00110101";
            F<="010";
            wait for 10ns;
            A<="01101010";
            B<="01011011";
            F<="010";
            wait for 10ns;
            A<="01011101";
            B<="11011011";
            F<="010";
            wait for 10ns;
            A<="11010111";
            B<="11110101";
            F<="010";
            wait for 10ns;
            A<="01010011";
            B<="01010101";
            F<="010";
            wait for 10ns;
            A<="10101010";
            B<="01010101";
            F<="010";
            wait for 10ns;
            A<="11111111";
            B<="00000000";
            F<="010";
            wait for 10ns;
            
            -- A and ~B --------------------------------------
            A<="00000000";
            B<="11111111";
            F<= "100";
            wait for 10 ns;
            A<="11111111";
            B<="11111111";
            F<= "100";
            wait for 10 ns;
            A<="11111111";
            B<="00000000";
            F<= "100";
            wait for 10 ns;
            A<="00000000";
            B<="00000000";
            F<= "100";
            wait for 10ns;
            
            -- A or ~B --------------------------------------
            A<="00000000";
            B<="11111111";
            F<= "101";
            wait for 10 ns;
            A<="11111111";
            B<="11111111";
            F<= "101";
            wait for 10 ns;
            A<="11111111";
            B<="00000000";
            F<= "101";
            wait for 10 ns;
            A<="00000000";
            B<="00000000";
            F<= "101";
            wait for 10ns;
            
            -- A - B --------------------------------------
            A<="00011100";
            B<="11111111";
            F<="110";
            wait for 10ns;
            A<="11111111";
            B<="11100001";
            F<="110";
            wait for 10ns;
            A<="11001111";
            B<="00100100";
            F<="110";
            wait for 10ns;
            A<="10110000";
            B<="00110101";
            F<="110";
            wait for 10ns;
            A<="01101010";
            B<="01011011";
            F<="110";
            wait for 10ns;
            A<="01011101";
            B<="11011011";
            F<="110";
            wait for 10ns;
            A<="11010111";
            B<="11110101";
            F<="110";
            wait for 10ns;
            A<="01010011";
            B<="01010101";
            F<="110";
            wait for 10ns;
            A<="10101010";
            B<="01010101";
            F<="110";
            wait for 10ns;
            A<="11111111";
            B<="00000000";
            F<="110";
            wait for 10ns;
            
            --ÅÐ¶Ï´óÐ¡ --------------------------------------
            A<="00011100";
            B<="11111111";
            F<="111";
            wait for 10ns;
            A<="11111111";
            B<="11100001";
            F<="111";
            wait for 10ns;
            A<="11001111";
            B<="00100100";
            F<="111";
            wait for 10ns;
            A<="10110000";
            B<="00110101";
            F<="111";
            wait for 10ns;
            A<="01101010";
            B<="01011011";
            F<="111";
            wait for 10ns;
            A<="01011101";
            B<="11011011";
            F<="111";
            wait for 10ns;
            A<="11010111";
            B<="11110101";
            F<="111";
            wait for 10ns;
            A<="01010011";
            B<="01010101";
            F<="111";
            wait for 10ns;
            A<="10101010";
            B<="01010101";
            F<="111";
            wait for 10ns;
            A<="11111111";
            B<="00000000";
            F<="111";
            wait for 10ns;
    end process;
end Behavioral;
