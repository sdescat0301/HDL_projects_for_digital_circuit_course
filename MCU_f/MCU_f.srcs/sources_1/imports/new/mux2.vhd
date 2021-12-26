----------------------------------
-- 2:1¶àÂ·¸´ÓÃÆ÷
----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2 is
    generic(width: integer);
    Port 
    (
        d0, d1 :in std_logic_vector(width-1 downto 0);
        s :in std_logic;
        y :out std_logic_vector(width -1 downto 0)
     );
end mux2;

architecture Behavioral of mux2 is
begin
    y <= d1 when s='1'
    else d0;
end Behavioral;
