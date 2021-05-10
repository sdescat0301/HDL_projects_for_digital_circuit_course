----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/04/30 10:43:46
-- Design Name: 
-- Module Name: 2_to_1_Mux - Behavioral
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

entity 2_to_1_Mux is
Port ( 
    a :in std_logic;
    b :in std_logic;
    s :in std_logic;
    y :out std_logic
);
end 2_to_1_Mux;

architecture Behavioral of 2_to_1_Mux is
begin
    y <= (s and a) or (b and (not s));
end Behavioral;
