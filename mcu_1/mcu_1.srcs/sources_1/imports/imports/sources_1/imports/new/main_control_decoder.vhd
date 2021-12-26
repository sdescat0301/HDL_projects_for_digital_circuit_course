library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity maindec is -- main control decoder
  port(Op:                 in  STD_LOGIC_VECTOR(5 downto 0);
       MemtoReg, MemWrite: out STD_LOGIC;
       Branch, ALUSrc:     out STD_LOGIC;
       RegDst, RegWrite:   out STD_LOGIC;
       ALUOp:              out STD_LOGIC_VECTOR(1 downto 0));
end;

architecture behave of maindec is
  signal controls: STD_LOGIC_VECTOR(8 downto 0);
begin
  process(Op) begin
    case Op is
      when "000000" => controls <= "110000010"; -- RTYPE
      when "100011" => controls <= "101001000"; -- LW
      when "101011" => controls <= "001010000"; -- SW
      when "000100" => controls <= "000100001"; -- BEQ
      when "001000" => controls <= "101000000"; -- ADDI
      when others   => controls <= "---------"; -- illegal Op
    end case;
  end process;

   RegWrite <= controls(8);
   RegDst <= controls(7);
   ALUSrc <= controls(6);
   Branch <= controls(5);
   MemWrite <= controls(4);
   MemtoReg <= controls(3);
   ALUOp(1 downto 0) <= controls(1 downto 0);
end;