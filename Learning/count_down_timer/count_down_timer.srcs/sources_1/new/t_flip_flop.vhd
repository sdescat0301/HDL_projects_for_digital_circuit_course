library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
ENTITY t_flip_flop is
    port(
         t :in std_logic;
         clk_t :in std_logic;
         q :out std_logic
         );
end t_flip_flop;

architecture rtl of t_flip_flop is
    signal sig,temp :std_logic;
    signal times :std_logic_vector(12 downto 0):=(others=>'0');
    begin
        process(clk_t)
        begin
                if rising_edge(clk_t) then
                    if(sig='0' and t='1')then
                        temp<=not temp;
                    end if;
                end if;
        end process;
        process(clk_t)
        begin
            if rising_edge(clk_t) then
                sig<=t;
            end if;
        end process;
        q <= temp;
end rtl; 