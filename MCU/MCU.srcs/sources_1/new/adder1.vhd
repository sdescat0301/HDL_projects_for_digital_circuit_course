----------------------------------------
--  �ӷ��������� PC+4 �� PC ��ת
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

entity adder1 is Port
    (
        a,b :in std_logic_vector(31 downto 0);
        y :out std_logic_vector(31 downto 0)
     );
end adder1;

architecture Behavioral of adder1 is
    begin
        y <= a + b;

end Behavioral;
