----------------------------------------
--  加法器，用于 PC+4 和 PC 跳转
----------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_simple is Port
    (
        a,b :in std_logic_vector(31 downto 0);
        y :out std_logic_vector(31 downto 0)
     );
end adder_simple;

architecture Behavioral of adder_simple is
begin
    y <= a + b;
end Behavioral;