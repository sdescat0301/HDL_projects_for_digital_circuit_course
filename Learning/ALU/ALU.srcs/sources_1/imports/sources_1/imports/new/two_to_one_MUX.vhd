----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/21 09:08:32
-- Design Name: 
-- Module Name: two_to_one_MUX - Behavioral
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

entity two_to_one_MUX is Port
    (
        MUX_in_0, MUX_in_1 :in std_logic_vector(7 downto 0);
        F_2 :in std_logic;
        MUX_out :out std_logic_vector(7 downto 0)
     );
end two_to_one_MUX;

architecture Behavioral of two_to_one_MUX is

signal F_in: std_logic_vector(7 downto 0);

begin
    F_in <= F_2 & F_2 & F_2 & F_2 & F_2 & F_2 & F_2 & F_2;
    MUX_out <= (MUX_in_0 and (not F_in)) or (MUX_in_1 and F_in);
end Behavioral;
