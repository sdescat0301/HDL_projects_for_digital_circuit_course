----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/24 12:49:40
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is

signal cmd:std_logic_vector(18 downto 0);
signal clk:std_logic:='0';
constant clk_period :time :=10 ns; 
signal A:std_logic_vector(7 downto 0);
signal B:std_logic_vector(7 downto 0);
signal F:std_logic_vector(2 downto 0);
signal Y: std_logic_vector(7 downto 0);
signal Cout:std_logic;
--component---
component ALU is 
port(
	A		:in std_logic_vector(7 downto 0);
	B		:in std_logic_vector(7 downto 0);
	F		:in std_logic_vector(2 downto 0);
	Y		:out std_logic_vector(7 downto 0);
	Cout	:out std_logic
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
			--test A AND B
				cmd<="000"&x"ff"&x"00";
				wait for clk_period;
				cmd<="000"&x"00"&x"ff";
				wait for clk_period;
				cmd<="000"&x"00"&x"00";
				wait for clk_period;
				cmd<="000"&x"ff"&x"ff";
				wait for clk_period;
			--test A or B
				cmd<="001"&x"ff"&x"00";
				wait for clk_period;
				cmd<="001"&x"00"&x"ff";
				wait for clk_period;
				cmd<="001"&x"00"&x"00";
				wait for clk_period;
				cmd<="001"&x"ff"&x"ff";
				wait for clk_period;
			--test A + B
				cmd<="010"&x"0b"&x"0c";--11 + 12
				wait for clk_period;
				cmd<="010"&x"0c"&x"0d";--12 + 13
				wait for clk_period;
				cmd<="010"&x"1f"&x"01";--31 + 1
				wait for clk_period;
				cmd<="010"&x"11"&x"2f";--17 + 47
				
				wait for clk_period;
				cmd<="010"&x"fb"&x"fa";-- -5 + -6
				wait for clk_period;
				cmd<="010"&x"f6"&x"f7";-- -10 + -9
				wait for clk_period;
				cmd<="010"&x"ef"&x"d1";-- -17 + 47
				
				wait for clk_period;
				cmd<="010"&x"78"&x"92";-- 120-110
				wait for clk_period;
				cmd<="010"&x"78"&x"78";-- 120+120 溢出
				wait for clk_period;
				cmd<="010"&x"92"&x"DA";-- -110-38 
				wait for clk_period;
			--test A and ~B
				cmd<="100"&x"ff"&x"00";
				wait for clk_period;
				cmd<="100"&x"00"&x"ff";
				wait for clk_period;
				cmd<="100"&x"00"&x"00";
				wait for clk_period;
				cmd<="100"&x"ff"&x"ff";
				wait for clk_period;
			--test A or ~B
				cmd<="101"&x"ff"&x"00";
				wait for clk_period;
				cmd<="101"&x"00"&x"ff";
				wait for clk_period;
				cmd<="101"&x"00"&x"00";
				wait for clk_period;
				cmd<="101"&x"ff"&x"ff";
				wait for clk_period;
				
			--test A-B
				cmd<="110"&x"0b"&x"0c";--11 - 12
				wait for clk_period;
				cmd<="110"&x"0c"&x"0d";--12 - 13
				wait for clk_period;
				cmd<="110"&x"1f"&x"01";--31 - 1
				wait for clk_period;
				cmd<="110"&x"11"&x"2f";--17 - 47
				
				wait for clk_period;
				cmd<="110"&x"fb"&x"fa";-- -5 - -6
				wait for clk_period;
				cmd<="110"&x"f6"&x"f7";-- -10 - -9
				wait for clk_period;
				cmd<="110"&x"ef"&x"d1";-- -17 - 47
				
				wait for clk_period;
				cmd<="110"&x"78"&x"92";-- 120-(-110) 溢出
				wait for clk_period;
				cmd<="110"&x"78"&x"78";-- 120-120
				wait for clk_period;
				cmd<="110"&x"92"&x"DA";-- -110-(-38)
				wait for clk_period;
				
			--test slt
				cmd<="111"&x"0b"&x"0c";--11 - 12
				wait for clk_period;
				cmd<="111"&x"0c"&x"0d";--12 - 13
				wait for clk_period;
				cmd<="111"&x"1f"&x"01";--31 - 1
				wait for clk_period;
				cmd<="111"&x"11"&x"2f";--17 - 47
				
				wait for clk_period;
				cmd<="111"&x"fb"&x"fa";-- -5 - -6
				wait for clk_period;
				cmd<="111"&x"f6"&x"f7";-- -10 - -9
				wait for clk_period;
				cmd<="111"&x"ef"&x"d1";-- -17 - 47
				
				wait for clk_period;
				cmd<="111"&x"11"&x"92";-- 17-(-110)
				wait for clk_period;
				cmd<="111"&x"78"&x"78";-- 120-120
				wait for clk_period;
				cmd<="111"&x"92"&x"DA";-- -110-(-38)
				wait for clk_period;
				
			end process;
	
	F<=cmd(18 downto 16);
	A<=cmd(15 downto 8);
	B<=cmd(7 downto 0);
	
	
	dut: ALU port map(
		A	=>	A,
		B	=>	B,
		F	=>	F,
		Cout=>  Cout,
		Y	=> 	Y
	);

end Behavioral;
