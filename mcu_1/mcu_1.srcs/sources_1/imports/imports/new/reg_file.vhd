library IEEE; use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity regfile is -- three-port register file
  port(CLK:           in  STD_LOGIC;
       we3:           in  STD_LOGIC;
       a1, a2, a3: in  STD_LOGIC_VECTOR(4 downto 0);
       wd3:           in  STD_LOGIC_VECTOR(31 downto 0);
       rd1, rd2:      out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of regfile is
  type ramtype is array (31 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
  signal mem: ramtype;
begin
  -- three-ported register file
  -- read two ports combinationally
  -- write third port on rising edge of clock
  -- register 0 hardwired to 0
  -- note: for pipelined processor, write third port
  -- on falling edge of CLK
  process(CLK) begin
    if rising_edge(CLK) then
       if we3 = '1' then mem(to_integer(unsigned(a3))) <= wd3;
       end if;
    end if;
  end process;
  process(CLK, we3, a1, a2, a3, wd3) begin
    if (to_integer(unsigned(a1)) = 0) then rd1 <= X"00000000"; -- register 0 holds 0
    else rd1 <= mem(to_integer(unsigned(a1)));
    end if;
    if (to_integer(unsigned(a2)) = 0) then rd2 <= X"00000000"; 
    else rd2 <= mem(to_integer(unsigned(a2)));
    end if;
  end process;
end;