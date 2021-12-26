library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity aludec is port(
    Funct:      in  STD_LOGIC_VECTOR(5 downto 0);
    ALUop:      in  STD_LOGIC_VECTOR(1 downto 0);
    ALUControl: out STD_LOGIC_VECTOR(2 downto 0)
);
end;

architecture behave of aludec is
begin
    process(Funct, ALUop) begin
        case ALUop is
            when "00" => ALUControl <= "010"; -- add (for lw/sw/addi)
            when "01" => ALUControl <= "110"; -- sub (for beq)
            when others => case Funct is      -- R-type instructions
                when "100000" => ALUControl <= "010"; -- add 
                when "100010" => ALUControl <= "110"; -- sub
                when "100100" => ALUControl <= "000"; -- and
                when "100101" => ALUControl <= "001"; -- or
                when "101010" => ALUControl <= "111"; -- slt
                when others => ALUControl <= "---"; -- ?
            end case;
        end case;
    end process;
end;