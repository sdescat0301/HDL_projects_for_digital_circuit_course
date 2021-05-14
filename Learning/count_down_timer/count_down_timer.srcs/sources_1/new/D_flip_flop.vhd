library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
ENTITY d_flip_flop is
    port(clk :in std_logic;
         reset :in std_logic;
         d :in std_logic_vector(5 downto 0);
         q :out std_logic_vector(5 downto 0)
         );
end d_flip_flop;

architecture rtl of d_flip_flop is
    begin
        process(clk, reset)
            begin
                if rising_edge(clk) then
                    if reset = '1' then
                        q <= (others => '0');
                    else
                        q <= d;
                    end if;
                end if;
        end process;
end rtl; 