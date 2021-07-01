--------------------
-- ALU¿ØÖÆµ¥Ôª
--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_decoder is Port
    (
        funct: in STD_LOGIC_VECTOR(5 downto 0);
        aluop: in STD_LOGIC_VECTOR(1 downto 0);
        alucontrol: out STD_LOGIC_VECTOR(2 downto 0)
     );
end alu_decoder;

architecture Behavioral of alu_decoder is
    begin
        process(aluop, funct)
            begin
                case aluop is
                when "00" => alucontrol <= "010"; -- add (for lb/sb/addi)
                when "01" => alucontrol <= "110"; -- sub (for beq)
                when others => 
                case funct is -- R-type instructions
                    when "100000" => alucontrol <= "010"; -- add
                    when "100010" => alucontrol <= "110"; -- sub
                    when "100100" => alucontrol <= "000"; -- and
                    when "100101" => alucontrol <= "001"; -- or
                    when "101010" => alucontrol <= "111"; -- slt
                    when others => alucontrol <= "---"; -- unknown
                    end case;
                end case;
        end process;

end Behavioral;
