--------------------
-- �����Ƶ�Ԫ
--------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity main_decoder is port  -- main control decoder
    (
        op: in STD_LOGIC_VECTOR(5 downto 0);
        memtoreg, memwrite: out STD_LOGIC;
        branch, alusrc: out STD_LOGIC;
        regdst, regwrite: out STD_LOGIC;
        jump: out STD_LOGIC;
        aluop: out STD_LOGIC_VECTOR(1 downto 0)
     );
end;

architecture Behavioral of main_decoder is
    signal controls: STD_LOGIC_VECTOR(8 downto 0);
    begin
        process(op)
            begin
                case op is
                    when "000000" => controls <= "110000010"; -- Rtype
                    when "100011" => controls <= "101001000"; -- LW
                    when "101011" => controls <= "001010000"; -- SW
                    when "000100" => controls <= "000100001"; -- BEQ
                    when "001000" => controls <= "101000000"; -- ADDI
                    when "000010" => controls <= "000000100"; -- J
                    when others => controls <= "---------"; -- illegal op
                end case;
            end process;
        regwrite <= controls(8);
        regdst <= controls(7);
        alusrc <= controls(6);
        branch <= controls(5);
        memwrite <= controls(4);
        memtoreg <= controls(3);
        jump <= controls(2);
        aluop <= controls(1 downto 0);
end Behavioral;