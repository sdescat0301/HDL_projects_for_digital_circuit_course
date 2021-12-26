library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity top_tp is
end top_tp;

architecture test of top_tp is
component top is port(
    CLK,reset:  in  std_logic;
    Light:      out std_logic:='1'
);
end component;
signal CLK,reset:   STD_LOGIC:='0';
begin
    dut: top port map(
        CLK => CLK, 
        reset => reset
    );
    --Generate clock with 10 ns period
    process
    begin
        CLK<='1';
        wait for 5 ns;
        CLK<='0'; 
        wait for 5ns;
    end process;
    --Generate reset for first two clock cycles
    process
    begin
        reset<='1';
        wait for 22 ns;
        reset<='0';
        wait;
    end process;
end test;
