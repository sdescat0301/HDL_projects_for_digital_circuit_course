library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
ENTITY t_flip_flop is
    port(
         t :in std_logic;
         q :out std_logic
         );
end t_flip_flop;

architecture rtl of t_flip_flop is
    signal temp :std_logic := '0';
    begin
        process(t)
            begin
                if rising_edge(t) then
                    temp <= not temp;
                end if; 
            q <= temp;              
        end process;
end rtl; 