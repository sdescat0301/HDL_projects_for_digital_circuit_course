----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/21 09:44:56
-- Design Name: 
-- Module Name: four_to_one_MUX - Behavioral
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

entity four_to_one_MUX is Port
    (
        MUX2_in_0, MUX2_in_1, MUX2_in_2, MUX2_in_3 :in std_logic_vector(7 downto 0);
        F_1, F_0 :in std_logic;
        Y :out std_logic_vector(7 downto 0)
     );
end four_to_one_MUX;

architecture Behavioral of four_to_one_MUX is
begin
    process(MUX2_in_0, MUX2_in_1, MUX2_in_2, MUX2_in_3, F_1, F_0)
    begin
        for i in 0 to 7 loop
            Y(i) <= (MUX2_in_0(i) and ((not F_1) and (not F_0)))or(MUX2_in_1(i) and ((not F_1) and (F_0)))or(MUX2_in_2(i) and ((F_1) and (not F_0)))or(MUX2_in_3(i) and ((F_1) and (F_0)));
        end loop;
    end process;

end Behavioral;
