library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity alu is port(
    A, B: in STD_LOGIC_VECTOR(31 downto 0);
    F: in STD_LOGIC_VECTOR(2 downto 0);
    Y: out STD_LOGIC_VECTOR(31 downto 0);
    cout: out STD_LOGIC);
end;
architecture synth of alu is
signal S, Bout, YY: STD_LOGIC_VECTOR(31 downto 0);
begin
    Bout <= (not B) when (F(2) = '1') else B;
    S <= A + Bout + F(2);
    YY <= A and Bout when F="00"
    else A or Bout when F="01"
    else S when F="10"
    else ("0000000000000000000000000000000" & S(31)) when F="11"
    else X"00000000";
    Y<=YY;
    cout <= '1' when YY=X"00000000" else
    '0';
end;