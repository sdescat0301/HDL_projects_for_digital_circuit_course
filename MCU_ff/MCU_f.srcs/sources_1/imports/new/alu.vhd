library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is 
port(
    A,B:in  STD_LOGIC_VECTOR(31 downto 0);
    F: in  STD_LOGIC_VECTOR(2 downto 0);
    Y: out STD_LOGIC_VECTOR(31 downto 0);
    cout: out STD_LOGIC
    );
end;

architecture behave of alu is
    signal condinvb, instant,sum: STD_LOGIC_VECTOR(31 downto 0);
begin
    condinvb <= (not B) when (F(2)='1') else B;
    sum <= A + condinvb + ("0000000000000000000000000000000" & F(2));
    process(F,A,B,sum) begin
        case F(1 downto 0) is
            when "00"   => instant <= A and B; 
            when "01"   => instant <= A or B; 
            when "10"   => instant <= sum; 
            when "11"   => instant <= ("0000000000000000000000000000000"& ((A(31) and not B(31))or(A(31) and sum(31))or(not B(31) and sum(31)))); 
            when others => instant <= X"00000000"; 
        end case;
    end process;
    Y <= instant;
    cout <= '1' when instant = X"00000000" else '0';
end;
