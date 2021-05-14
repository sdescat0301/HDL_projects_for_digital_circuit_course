----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/14 01:04:30
-- Design Name: 
-- Module Name: k_in - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity k_in is
    Port
    (
         Dt :in std_logic_vector(5 downto 0);
         dec_in :in std_logic;
         inc_in :in std_logic;
         add_in :out std_logic_vector(5 downto 0)
    );
end k_in;

architecture Behavioral of k_in is
    signal ctup :std_logic;
    signal ctdn :std_logic;
    signal k_out :std_logic_vector(5 downto 0);
begin
    process(Dt)
    begin
        if Dt>"111011" then
            ctup<='1';
        else
            ctup<='0';
        end if;
        if Dt="000000" then
            ctdn<='1';
        else
            ctdn<='0';
        end if;
    end process;
    process(ctup,ctdn,dec_in,inc_in)
    begin
        if dec_in='1' then
            if ctup='0' then
                k_out<="111111";
            else k_out<="000000";
            end if;
        else
        if inc_in='1'then
            if ctup='0' then
                k_out<="000001";
            else k_out<="000000";
            end if;
        else
        if ctdn='0' then
            k_out<="111111";
        else k_out<="000000";
        end if;
        end if;
        end if;
    end process;
    add_in<=k_out;
end Behavioral;