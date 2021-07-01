---------------------------------
-- 3:1¶àÂ·¸´ÓÃÆ÷
---------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux3 is
    generic(width: integer);
    port
    (
        d0, d1, d2: in STD_LOGIC_VECTOR(width-1 downto 0);
        s: in STD_LOGIC_VECTOR(1 downto 0);
        y: out STD_LOGIC_VECTOR(width-1 downto 0)
     );
end mux3;

architecture Behavioral of mux3 is
begin
    process(s) 
    begin
        case s is
            when "00" => y <= d0;
            when "01" => y <= d1;
            when "10" => y <= d2;
            when others => y <= d0;
        end case;
    end process;
end Behavioral;
