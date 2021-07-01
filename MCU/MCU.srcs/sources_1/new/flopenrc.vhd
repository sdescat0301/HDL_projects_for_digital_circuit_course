------------------------------------------
-- 带同步复位、清零、使能端的D触发器
------------------------------------------
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

entity flopenrc is
    generic(width: integer);
    Port 
    (   
        clk, reset: in STD_LOGIC;
        en, clear: in STD_LOGIC;
        d: in STD_LOGIC_VECTOR(width-1 downto 0);
        q: out STD_LOGIC_VECTOR(width-1 downto 0)
     );
end flopenrc;

architecture Behavioral of flopenrc is
begin
    process(clk, reset, clear) 
    begin
        if rising_edge(clk) then
            if reset = '1' then
                q <= CONV_STD_LOGIC_VECTOR(0, width);
            elsif clear = '1' then 
                q <= CONV_STD_LOGIC_VECTOR(0, width);
            elsif en = '1' then 
                q <= d;
            end if;
        end if;
    end process;
end Behavioral;
