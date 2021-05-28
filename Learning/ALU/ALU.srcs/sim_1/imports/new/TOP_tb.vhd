----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/24 20:49:15
-- Design Name: 
-- Module Name: TOP_tb - Behavioral
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

entity TOP_tb is
--  Port ( );
end TOP_tb;

architecture Behavioral of TOP_tb is
signal clk:std_logic:='0';
signal rst:std_logic:='1';
constant clk_period :time :=10 ns; 

--component---
component TOP is 
port(
	clk:	in std_logic;
	rst:    in std_logic
);
end component;


begin

	clk_gen:process  
			begin      
				wait for clk_period/2;  
				clk<='1';    
				wait for clk_period/2;  
				clk<='0';  
			end process;  

	test:	process
			begin
				wait for 20 ns;
				rst<='0';
				wait;
			end process;
	

	
	dut: TOP port map(
		clk	=>	clk,
		rst	=>	rst

	);

end Behavioral;
