library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity alu is port(
    SrcA, SrcB: in  STD_LOGIC_VECTOR(31 downto 0);
    ALUControl: in  STD_LOGIC_VECTOR(2 downto 0);
    ALUResult:  out STD_LOGIC_VECTOR(31 downto 0);
    Zero:       out STD_LOGIC
);
end;

architecture behave of alu is
signal condinvb,instant,sum: STD_LOGIC_VECTOR(31 downto 0);
signal slt: STD_LOGIC;
begin
    condinvb <= (not SrcB) when (ALUControl(2)='1') else SrcB;
    sum <= SrcA + condinvb +(X"0000000" & "000" & ALUControl(2));
    slt <= (SrcA(31) and not SrcB(31))or(SrcA(31) and sum(31))or(not SrcB(31) and sum(31));
    process(SrcA,SrcB,ALUControl,sum,slt)
    begin
--        if (ALUControl(1 downto 0)="10") then
--            instant <= sum;
--        elsif(ALUControl(1 downto 0)="00")then
--            instant <= SrcA and SrcB;
--        elsif (ALUControl(1 downto 0)="01") then
--            instant <= SrcA or SrcB;
--        else
--            instant <= ("0000000000000000000000000000000" & slt);
--        end if;
        
        case ALUControl(1 downto 0) is
            when "10"   => instant <= sum;
            when "00"   => instant <= SrcA and SrcB;
            when "01"   => instant <= SrcA or SrcB;
            when "11"   => instant <= ("0000000000000000000000000000000" & slt);
            when others => instant <= X"00000000";
        end case;
    end process;
    ALUResult <= instant;
    Zero <= '1' when instant = X"00000000" else '0';
end;
