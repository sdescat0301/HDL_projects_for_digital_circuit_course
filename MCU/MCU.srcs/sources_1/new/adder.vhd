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
        adder_in_a, adder_in_b :in std_logic_vector(31 downto 0);  --32位数输入
        cin :in std_logic;  --之前的进位输入
        cout :out std_logic;  --32位加法器的进位输出
        adder_out :out std_logic_vector(31 downto 0)  --32位加法器的输出
     );
end adder;

architecture Behavioral of adder is
    signal temp :std_logic_vector(31 downto 0);  --储存进位信息
    begin
        --第一位
        adder_out(0) <= adder_in_a(0) xor adder_in_b(0) xor cin;
        temp(0) <= (adder_in_a(0) and adder_in_b(0))or(adder_in_b(0) and cin)or(adder_in_a(0) and cin);
        --第二位
        adder_out(1) <= adder_in_a(1) xor adder_in_b(1) xor temp(0);
        temp(1) <= (adder_in_a(1) and adder_in_b(1))or(adder_in_b(1) and temp(0))or(adder_in_a(1) and temp(0));
        
        adder_out(2) <= adder_in_a(2) xor adder_in_b(2) xor temp(1);
        temp(2) <= (adder_in_a(2) and adder_in_b(2))or(adder_in_b(2) and temp(1))or(adder_in_a(2) and temp(1));
        
        adder_out(3) <= adder_in_a(3) xor adder_in_b(3) xor temp(2);
        temp(3) <= (adder_in_a(3) and adder_in_b(3))or(adder_in_b(3) and temp(2))or(adder_in_a(3) and temp(2));
        
        adder_out(4) <= adder_in_a(4) xor adder_in_b(4) xor temp(3);
        temp(4) <= (adder_in_a(4) and adder_in_b(4))or(adder_in_b(4) and temp(3))or(adder_in_a(4) and temp(3));
        
        adder_out(5) <= adder_in_a(5) xor adder_in_b(5) xor temp(4);
        temp(5) <= (adder_in_a(5) and adder_in_b(5))or(adder_in_b(5) and temp(4))or(adder_in_a(5) and temp(4));
        
        adder_out(6) <= adder_in_a(6) xor adder_in_b(6) xor temp(5);
        temp(6) <= (adder_in_a(6) and adder_in_b(6))or(adder_in_b(6) and temp(5))or(adder_in_a(6) and temp(5));
        
        adder_out(7) <= adder_in_a(7) xor adder_in_b(7) xor temp(6);
        temp(7) <= (adder_in_a(7) and adder_in_b(7))or(adder_in_b(7) and temp(6))or(adder_in_a(7) and temp(6));
        
        adder_out(8) <= adder_in_a(8) xor adder_in_b(8) xor temp(7);
        temp(8) <= (adder_in_a(8) and adder_in_b(8))or(adder_in_b(8) and temp(7))or(adder_in_a(8) and temp(7));
        
        adder_out(9) <= adder_in_a(9) xor adder_in_b(9) xor temp(8);
        temp(9) <= (adder_in_a(9) and adder_in_b(9))or(adder_in_b(9) and temp(8))or(adder_in_a(9) and temp(8));
        
        adder_out(10) <= adder_in_a(10) xor adder_in_b(10) xor temp(9);
        temp(10) <= (adder_in_a(10) and adder_in_b(10))or(adder_in_b(10) and temp(9))or(adder_in_a(10) and temp(9));
        
        adder_out(11) <= adder_in_a(11) xor adder_in_b(11) xor temp(10);
        temp(11) <= (adder_in_a(11) and adder_in_b(11))or(adder_in_b(11) and temp(10))or(adder_in_a(11) and temp(10));
        
        adder_out(12) <= adder_in_a(12) xor adder_in_b(12) xor temp(11);
        temp(12) <= (adder_in_a(12) and adder_in_b(12))or(adder_in_b(12) and temp(11))or(adder_in_a(12) and temp(11));
        
        adder_out(13) <= adder_in_a(13) xor adder_in_b(13) xor temp(12);
        temp(13) <= (adder_in_a(13) and adder_in_b(13))or(adder_in_b(13) and temp(12))or(adder_in_a(13) and temp(12));
        
        adder_out(14) <= adder_in_a(14) xor adder_in_b(14) xor temp(13);
        temp(14) <= (adder_in_a(14) and adder_in_b(14))or(adder_in_b(14) and temp(13))or(adder_in_a(14) and temp(13));
        
        adder_out(15) <= adder_in_a(15) xor adder_in_b(15) xor temp(14);
        temp(15) <= (adder_in_a(15) and adder_in_b(15))or(adder_in_b(15) and temp(14))or(adder_in_a(15) and temp(14));
        
        adder_out(16) <= adder_in_a(16) xor adder_in_b(16) xor temp(15);
        temp(16) <= (adder_in_a(16) and adder_in_b(16))or(adder_in_b(16) and temp(15))or(adder_in_a(16) and temp(15));
        
        adder_out(17) <= adder_in_a(17) xor adder_in_b(17) xor temp(16);
        temp(17) <= (adder_in_a(17) and adder_in_b(17))or(adder_in_b(17) and temp(16))or(adder_in_a(17) and temp(16));
        
        adder_out(18) <= adder_in_a(18) xor adder_in_b(18) xor temp(17);
        temp(18) <= (adder_in_a(18) and adder_in_b(18))or(adder_in_b(18) and temp(17))or(adder_in_a(18) and temp(17));
        
        adder_out(19) <= adder_in_a(19) xor adder_in_b(19) xor temp(18);
        temp(19) <= (adder_in_a(19) and adder_in_b(19))or(adder_in_b(19) and temp(18))or(adder_in_a(19) and temp(18));
        
        adder_out(20) <= adder_in_a(20) xor adder_in_b(20) xor temp(19);
        temp(20) <= (adder_in_a(20) and adder_in_b(20))or(adder_in_b(20) and temp(19))or(adder_in_a(20) and temp(19));
        
        adder_out(21) <= adder_in_a(21) xor adder_in_b(21) xor temp(20);
        temp(21) <= (adder_in_a(21) and adder_in_b(21))or(adder_in_b(21) and temp(20))or(adder_in_a(21) and temp(20));
        
        adder_out(22) <= adder_in_a(22) xor adder_in_b(22) xor temp(21);
        temp(22) <= (adder_in_a(22) and adder_in_b(22))or(adder_in_b(22) and temp(21))or(adder_in_a(22) and temp(21));
        
        adder_out(23) <= adder_in_a(23) xor adder_in_b(23) xor temp(22);
        temp(23) <= (adder_in_a(23) and adder_in_b(23))or(adder_in_b(23) and temp(22))or(adder_in_a(23) and temp(22));
        
        adder_out(24) <= adder_in_a(24) xor adder_in_b(24) xor temp(23);
        temp(24) <= (adder_in_a(24) and adder_in_b(24))or(adder_in_b(24) and temp(23))or(adder_in_a(24) and temp(23));
        
        adder_out(25) <= adder_in_a(25) xor adder_in_b(25) xor temp(24);
        temp(25) <= (adder_in_a(25) and adder_in_b(25))or(adder_in_b(25) and temp(24))or(adder_in_a(25) and temp(24));
        
        adder_out(26) <= adder_in_a(26) xor adder_in_b(26) xor temp(25);
        temp(26) <= (adder_in_a(26) and adder_in_b(26))or(adder_in_b(26) and temp(25))or(adder_in_a(26) and temp(25));
        
        adder_out(27) <= adder_in_a(27) xor adder_in_b(27) xor temp(26);
        temp(27) <= (adder_in_a(27) and adder_in_b(27))or(adder_in_b(27) and temp(26))or(adder_in_a(27) and temp(26));
        
        adder_out(28) <= adder_in_a(28) xor adder_in_b(28) xor temp(27);
        temp(28) <= (adder_in_a(28) and adder_in_b(28))or(adder_in_b(28) and temp(27))or(adder_in_a(28) and temp(27));
        
        adder_out(29) <= adder_in_a(29) xor adder_in_b(29) xor temp(28);
        temp(29) <= (adder_in_a(29) and adder_in_b(29))or(adder_in_b(29) and temp(28))or(adder_in_a(29) and temp(28));
        
        adder_out(30) <= adder_in_a(30) xor adder_in_b(30) xor temp(29);
        temp(30) <= (adder_in_a(30) and adder_in_b(30))or(adder_in_b(30) and temp(29))or(adder_in_a(30) and temp(29));
        
        adder_out(31) <= adder_in_a(31) xor adder_in_b(31) xor temp(30);
        temp(31) <= (adder_in_a(31) and adder_in_b(31))or(adder_in_b(31) and temp(30))or(adder_in_a(31) and temp(30));
                
        cout <= temp(31);

    end Behavioral;
