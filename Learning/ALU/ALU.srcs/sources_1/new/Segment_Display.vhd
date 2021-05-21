----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/21 09:01:04
-- Design Name: 
-- Module Name: Segment_Display - Behavioral
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

entity Segment_Display is Port
    (
        A, B :in std_logic_vector(7 downto 0);
        F :in std_logic_vector(2 downto 0);
        Y :out std_logic_vector(7 downto 0);
        cout :out std_logic
     );
end Segment_Display;

architecture Behavioral of Segment_Display is
    component eight_bit_adder is port
    (
        adder_in_a, adder_in_b :in std_logic_vector(7 downto 0);  --八位数输入
        cin :in std_logic;  --之前的进位输入
        cout :out std_logic;  --八位加法器的进位输出
        adder_out :out std_logic_vector(7 downto 0)  --八位加法器的输出
     );
    end component;
    component two_to_one_MUX is port
    (
        MUX_in_0, MUX_in_1 :in std_logic_vector(7 downto 0);
        F_2 :in std_logic;
        MUX_out :out std_logic_vector(7 downto 0)
     );
    end component;
    component four_to_one_MUX is port
    (
        MUX2_in_0, MUX2_in_1, MUX2_in_2, MUX2_in_3 :in std_logic_vector(7 downto 0);
        F_1, F_0 :in std_logic;
        Y :out std_logic_vector(7 downto 0)
     );
    end component;
    
    signal MUX1_out: std_logic_vector(7 downto 0);
    signal MUX2_out: std_logic_vector(7 downto 0);
    signal NOT_B: std_logic_vector(7 downto 0);
    signal A_AND_B: std_logic_vector(7 downto 0);
    signal A_OR_B: std_logic_vector(7 downto 0);
    signal ADDER_OUT: std_logic_vector(7 downto 0);
    signal SIGN: std_logic_vector(7 downto 0);
    signal C_OUT: std_logic_vector(7 downto 0);
    signal coutp: std_logic;
begin
    NOT_B <= not B;
    A_AND_B <= A and MUX1_out;
    A_OR_B <= A or MUX1_out;
    C_OUT <= "0000000" & coutp;
    C0:two_to_one_MUX port map
    (
        MUX_in_0 => B,
        MUX_in_1 => NOT_B,
        F_2 => F(2),
        MUX_out => MUX1_out
     );
    C1:eight_bit_adder port map
    (
        adder_in_a => A,
        adder_in_b => MUX1_out,
        cin => F(2),
        cout => coutp,
        adder_out => ADDER_OUT
     );
    C2:four_to_one_MUX port map
    (   
        MUX2_in_0 => A_AND_B,
        MUX2_in_1 => A_OR_B,
        MUX2_in_2 => ADDER_OUT,
        MUX2_in_3 => C_OUT,
        F_1 => F(1),
        F_0 => F(0),
        Y => Y
     );

end Behavioral;
