----------------------------------------
-- 左移2位， 用于将30位数拓展至32位
----------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sl2 is Port
    (
        a :in std_logic_vector(31 downto 0);
        y :out std_logic_vector(31 downto 0)
     );
end sl2;

architecture Behavioral of sl2 is
    begin
        y <= a(29 downto 0) & "00";

end Behavioral;
