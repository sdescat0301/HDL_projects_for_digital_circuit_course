----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/14 08:58:34
-- Design Name: 8 bit adder
-- Module Name: adder - Behavioral
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

entity adder is Port
    (
        a, b :in std_logic_vector(7 downto 0);  --八位数输入
        cin :in std_logic;  --之前的进位输入
        cout :out std_logic;  --八位加法器的进位输出
        s :out std_logic_vector(7 downto 0)  --八位加法器的输出
     );
end adder;

architecture Behavioral of adder is
    signal temp :std_logic_vector(7 downto 0);  --储存进位信息
    begin
        --第一位
        s(0) <= a(0) xor b(0) xor cin;
        temp(0) <= (a(0) and b(0))or(b(0) and cin)or(a(0) and cin);
        --第二位
        s(1) <= a(1) xor b(1) xor temp(0);
        temp(1) <= (a(1) and b(1))or(b(1) and temp(0))or(a(1) and temp(0));
        --第三位
        s(2) <= a(2) xor b(2) xor temp(1);
        temp(2) <= (a(2) and b(2))or(b(2) and temp(1))or(a(2) and temp(1));
        --第四位
        s(3) <= a(3) xor b(3) xor temp(2);
        temp(3) <= (a(3) and b(3))or(b(3) and temp(2))or(a(3) and temp(2));
        --第五位
        s(4) <= a(4) xor b(4) xor temp(3);
        temp(4) <= (a(4) and b(4))or(b(4) and temp(3))or(a(4) and temp(3));
        --第六位
        s(5) <= a(5) xor b(5) xor temp(4);
        temp(5) <= (a(5) and b(5))or(b(5) and temp(4))or(a(5) and temp(4));
        --第七位
        s(6) <= a(6) xor b(6) xor temp(5);
        temp(6) <= (a(6) and b(6))or(b(6) and temp(5))or(a(6) and temp(5));
        --第八位
        s(7) <= a(7) xor b(7) xor temp(6);
        temp(7) <= (a(7) and b(7))or(b(7) and temp(6))or(a(7) and temp(6));
        
        cout <= temp(7);

    end Behavioral;
