---------------------------------------
-- 带异步复位、使能端的D触发器
---------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flopenr is
    generic(width: integer);
    Port 
    (
        clk, reset: in STD_LOGIC;
        en: in STD_LOGIC;
        d: in STD_LOGIC_VECTOR(width-1 downto 0);
        q: out STD_LOGIC_VECTOR(width-1 downto 0)
     );
end flopenr;

architecture Behavioral of flopenr is
    begin
        process(clk, reset) 
        begin
            if reset = '1' then
                 q <= CONV_STD_LOGIC_VECTOR(0, width);
            elsif rising_edge(clk) and en = '1' then
                q <= d;
            end if;
        end process;
end Behavioral;
