----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/02 20:38:13
-- Design Name: 
-- Module Name: counter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
    component counter 
    port 
    (
        clk :in std_logic;
        q0, q1, q2 :out std_logic;
        c :out std_logic
     );
    end component;
    signal clk :std_logic := '0';
    signal q0 :std_logic := '0';
    signal q1 :std_logic := '0';
    signal q2 :std_logic := '0';
    signal c :std_logic;
    begin
        dut :counter port map
            (
                clk => clk,
                q0 => q0,
                q1 => q1,
                q2 => q2,
                c => c
             );
        process
            begin
                clk <= '1';
                wait for 10ns;
                clk <= '0';
                wait for 10ns; --0
        end process;
end Behavioral;
