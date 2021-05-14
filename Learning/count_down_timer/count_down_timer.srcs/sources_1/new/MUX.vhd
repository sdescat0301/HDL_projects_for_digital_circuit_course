----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/14 00:50:11
-- Design Name: 
-- Module Name: MUX - Behavioral
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
entity MUX is
    port(
        mux_in :in std_logic_vector(5 downto 0);
        en :in std_logic;
        mux_out :out std_logic_vector(5 downto 0)
    );
end MUX;

architecture Behavioral of MUX is
begin
    process(en)
    begin
        if en = '1' then
            mux_out<="011110";
        else
            mux_out<=mux_in;
        end if;
    end process;
end Behavioral;
