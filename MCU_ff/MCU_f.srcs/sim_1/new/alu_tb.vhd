----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/07/09 06:50:01
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
component alu port
(
    A, B: in STD_LOGIC_VECTOR(31 downto 0);
    F: in STD_LOGIC_VECTOR(2 downto 0);
    Y: out STD_LOGIC_VECTOR(31 downto 0);
    cout: out STD_LOGIC);
end component;
	signal srca,srcb: STD_LOGIC_VECTOR(31 downto 0);
	signal alucontrol: std_logic_vector(2 downto 0);
	signal aluoutS :std_logic_vector(31 downto 0);
	signal zero: STD_LOGIC;
begin
    process
    begin
        srca<=X"FFFFFC41";
        srcb<=X"00000000";
        alucontrol<="111";
        wait for 100ns;
    end process;
    mainalu:alu port map(
        A=>srca,
        B=>srcb,
        F=>alucontrol,
        Y=>aluoutS,
        cout=>zero
    );
end Behavioral;
