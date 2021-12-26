----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/07/09 03:59:28
-- Design Name: 
-- Module Name: sim_tb - Behavioral
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

entity sim_tb is
--  Port ( );
end sim_tb;

architecture Behavioral of sim_tb is
component mips port
(
    clk_0, rst:		in   STD_LOGIC;
    light :out std_logic
);
end component;
signal clk: std_logic;
signal rst: std_logic;
signal light: std_logic;
begin
    process
    begin
        rst<='1';
        wait for 70ns;
        rst<='0';
        wait for 100000000ns;
    end process;
    process
    begin
        clk<='0';
        wait for 5ns;
        clk<='1';
        wait for 5ns;
    end process;
    c1: mips port map
    (
        clk_0 => clk,
        rst => rst,
        light => light
    );
end Behavioral;
