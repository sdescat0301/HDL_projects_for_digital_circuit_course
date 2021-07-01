-----------------------------
-- 判断两个信号是否相等
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eqcmp is Port 
    (
        a, b: in STD_LOGIC_VECTOR(31 downto 0);
        y: out STD_LOGIC
     );
end eqcmp;

architecture Behavioral of eqcmp is
begin
    process(a, b)
    begin
        if a = b then
            y <= '1';
        else
            y <= '0';
        end if;
    end process;
end Behavioral;
