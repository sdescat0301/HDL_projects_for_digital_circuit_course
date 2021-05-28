----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/24 10:48:57
-- Design Name: 
-- Module Name: ALU - Behavioral
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


entity ALU is
Port ( 
	A		:in std_logic_vector(7 downto 0);
	B		:in std_logic_vector(7 downto 0);
	F		:in std_logic_vector(2 downto 0);
	Y		:out std_logic_vector(7 downto 0);
	Cout	:out std_logic
 );
end ALU;

architecture Behavioral of ALU is
	signal Ctemp: std_logic;
	signal Ytemp: std_logic_vector(8 downto 0);
	signal u1_out: std_logic_vector(7 downto 0);
	signal u2_out: std_logic_vector(7 downto 0);
	signal mux1_out: std_logic_vector(7 downto 0);
	signal adder_out: std_logic_vector(7 downto 0);
	
begin
	
	process(F,B)begin
		case F(2) is 
			when '0' 	=> 	mux1_out<=B;
			when '1'	=>  mux1_out<=not B;
			when others => null;
		end case;
	end process;
	
	u1_out<=mux1_out or A;
	u2_out<=mux1_out and A;
	
	Ytemp<=('0'&A) + ('0'&mux1_out)+ (x"00"&F(2));
	Cout<=Ytemp(8);
	adder_out<=Ytemp(7 downto 0);
	
	process(F,u2_out,u1_out,adder_out)begin
		case F(1 downto 0) is 
			when "00" 	=> 	Y<=u2_out;
			when "01"	=>  Y<=u1_out;
			when "10"	=>  Y<=adder_out;
			when "11"	=>  Y<="0000000"&adder_out(7);
			when others => null;
		end case;
	end process;


end Behavioral;