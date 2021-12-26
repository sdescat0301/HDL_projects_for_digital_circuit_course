----------------------------------------
-- 带异步复位端的D触发器
----------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flopr is
    generic (width: integer);
    Port
    (
        clk, reset :in std_logic;
        d :in std_logic_vector(width-1 downto 0);
        q :out std_logic_vector(width-1 downto 0)
     );
end flopr;

architecture Behavioral of flopr is
begin
    process(clk,reset)
    begin
        if reset = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end Behavioral;