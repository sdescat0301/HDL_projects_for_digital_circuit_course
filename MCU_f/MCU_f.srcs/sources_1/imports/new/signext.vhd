----------------------------------------
-- 符号扩展，用于将16位立即数拓展为32位
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

entity signext is Port
    (
        a :in std_logic_vector(15 downto 0);
        y :out std_logic_vector(31 downto 0)
     );
end signext;

architecture Behavioral of signext is
begin
    y<=X"ffff" & a when a(15)='1'
    else X"0000" & a;
end Behavioral;
