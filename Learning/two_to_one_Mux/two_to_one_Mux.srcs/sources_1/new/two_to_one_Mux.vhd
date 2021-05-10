----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/04/30 11:06:27
-- Design Name: 
-- Module Name: two_to_one_Mux - Behavioral
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

entity two_to_one_Mux is
Port ( 
    d0 :in std_logic;
    d1 :in std_logic;
    s :in std_logic;
    y :out std_logic
);
end two_to_one_Mux;

architecture Behavioral of two_to_one_Mux is

begin
y <= (d0 and (not s)) or (d1 and s);

end Behavioral;
