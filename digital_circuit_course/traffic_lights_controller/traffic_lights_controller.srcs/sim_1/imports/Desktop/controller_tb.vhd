----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/05 12:15:55
-- Design Name: 
-- Module Name: controller_tb - Behavioral
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

entity controller_tb is
--  Port ( );
end controller_tb;

architecture Behavioral of controller_tb is
    component controller is port
    (
        clk :in std_logic; --时钟
        reset :in std_logic; --复位
        t_a, t_b :in std_logic; --时间间隔控制
        l_a, l_b :out std_logic_vector(1 downto 0) --灯状态输出
     );
    end component;
    signal clk :std_logic := '0';
    signal reset :std_logic := '0';
    signal t_a :std_logic := '0';
    signal t_b :std_logic := '0';
    signal l_a :std_logic_vector(1 downto 0);
    signal l_b :std_logic_vector(1 downto 0);
    begin
        dut: controller port map
            (
                clk => clk,
                reset => reset,
                t_a => t_a,
                t_b => t_b,
                l_a => l_a,
                l_b => l_b
             );
        process
            begin
                clk <=  '1';
                    reset <= '1';
                    t_a <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------1
                
                clk <= '1';
                    reset <= '0';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------2
                
                clk <= '1';
                    t_b <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------3
                
                clk <= '1';
                    t_a <= '0';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------4
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------5
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------6
                
                clk <= '1';
                    t_a <= '1';
                    t_b <= '0';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------7
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------8
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------9
                
                clk <= '1';
                    t_a <= '0';
                    t_b <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------10
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------11
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------12
                
                clk <= '1';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------13
                
                clk <= '1';
                    t_a <= '1';
                    t_b <= '0';
                wait for 5ns;
                clk <= '0';
                wait for 5ns;-----------14
        end process;
end Behavioral;
