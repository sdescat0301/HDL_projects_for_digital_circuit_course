----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/05 21:14:38
-- Design Name: 
-- Module Name: detector_tb - Behavioral
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

entity detector_tb is
--  Port ( );
end detector_tb;

architecture Behavioral of detector_tb is
    component detector is port
    (
        clk :in std_logic;
        a :in std_logic;
        z :out std_logic
     );
    end component;
    signal clk :std_logic := '0';
    signal a :std_logic := '0';
    signal z :std_logic := '0';
    begin
        dut: detector port map
            (
                clk => clk,
                a => a,
                z => z
             );
        process 
            begin  --╡БйтпРапн╙01110010110
                a <= '0';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                 clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '0';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '0';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '0';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '1';
                wait for 10ns;
                
                clk <= '1';
                wait for 10ns;
                
                clk <= '0';
                a <= '0';
           end process;
end Behavioral;
