----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/02 15:20:11
-- Design Name: 
-- Module Name: d_flip_flop - Behavioral
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

entity d_flip_flop is Port 
    (
        clk :in std_logic;
        d :in std_logic;
        q :out std_logic := '0'
     );
end d_flip_flop;

architecture Behavioral of d_flip_flop is

    begin
        process(clk) begin
            if clk'event and clk = '1' then
                q <= d;
            end if;
        end process;
end Behavioral;
