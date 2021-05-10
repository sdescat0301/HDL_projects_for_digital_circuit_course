----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/04/30 11:09:31
-- Design Name: 
-- Module Name: two_to_one_Mux_tb - Behavioral
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

entity two_to_one_Mux_tb is
--  Port ( );
end two_to_one_Mux_tb;

architecture Behavioral of two_to_one_Mux_tb is

--component--
component two_to_one_Mux is 
    port(
        d0 :in std_logic;
        d1 :in std_logic;
        s :in std_logic;
        y :out std_logic
    );
end component;

--signal--
signal d0 :std_logic;
signal d1 :std_logic;
signal s :std_logic;
signal y :std_logic;

begin
    process begin
            d0 <='0';
            d1 <='0';
            s <='0';
        wait for 20 ns;
            d0 <='0';
            d1 <='0';
            s <='1';
        wait for 20 ns;
            d0 <='0';
            d1 <='1';
            s <='0';
        wait for 20 ns;
            d0 <='0';
            d1 <='1';
            s <='1';
        wait for 20 ns;
            d0 <='1';
            d1 <='0';
            s <='0';
        wait for 20 ns;
            d0 <='1';
            d1 <='0';
            s <='1';
        wait for 20 ns;
            d0 <='1';
            d1 <='1';
            s <='0';
        wait for 20 ns;
            d0 <='1';
            d1 <='1';
            s <='1';
        wait for 20 ns;
    end process;
    
    dut:two_to_one_Mux port map(
        d0 => d0,
        d1 => d1,
        s => s,
        y => y
    );
        


end Behavioral;
