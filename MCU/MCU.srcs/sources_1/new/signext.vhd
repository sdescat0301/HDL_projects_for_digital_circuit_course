----------------------------------------
-- ������չ�����ڽ�16λ��������չΪ32λ
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
        process(a)
            begin
                if (a(15)='1') then
                    y <= X"ffff" & a;
                else
                    y <= X"0000" & a;
                end if;
        end process;
end Behavioral;
