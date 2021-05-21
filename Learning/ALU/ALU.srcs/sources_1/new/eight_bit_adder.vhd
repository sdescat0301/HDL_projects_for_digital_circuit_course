library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eight_bit_adder is Port
    (
        adder_in_a, adder_in_b :in std_logic_vector(7 downto 0);  --��λ������
        cin :in std_logic;  --֮ǰ�Ľ�λ����
        cout :out std_logic;  --��λ�ӷ����Ľ�λ���
        adder_out :out std_logic_vector(7 downto 0)  --��λ�ӷ��������
     );
end eight_bit_adder;

architecture Behavioral of eight_bit_adder is
    signal temp :std_logic_vector(7 downto 0);  --�����λ��Ϣ
    begin
        --��һλ
        adder_out(0) <= adder_in_a(0) xor adder_in_b(0) xor cin;
        temp(0) <= (adder_in_a(0) and adder_in_b(0))or(adder_in_b(0) and cin)or(adder_in_a(0) and cin);
        --�ڶ�λ
        adder_out(1) <= adder_in_a(1) xor adder_in_b(1) xor temp(0);
        temp(1) <= (adder_in_a(1) and adder_in_b(1))or(adder_in_b(1) and temp(0))or(adder_in_a(1) and temp(0));
        --����λ
        adder_out(2) <= adder_in_a(2) xor adder_in_b(2) xor temp(1);
        temp(2) <= (adder_in_a(2) and adder_in_b(2))or(adder_in_b(2) and temp(1))or(adder_in_a(2) and temp(1));
        --����λ
        adder_out(3) <= adder_in_a(3) xor adder_in_b(3) xor temp(2);
        temp(3) <= (adder_in_a(3) and adder_in_b(3))or(adder_in_b(3) and temp(2))or(adder_in_a(3) and temp(2));
        --����λ
        adder_out(4) <= adder_in_a(4) xor adder_in_b(4) xor temp(3);
        temp(4) <= (adder_in_a(4) and adder_in_b(4))or(adder_in_b(4) and temp(3))or(adder_in_a(4) and temp(3));
        --����λ
        adder_out(5) <= adder_in_a(5) xor adder_in_b(5) xor temp(4);
        temp(5) <= (adder_in_a(5) and adder_in_b(5))or(adder_in_b(5) and temp(4))or(adder_in_a(5) and temp(4));
        --����λ
        adder_out(6) <= adder_in_a(6) xor adder_in_b(6) xor temp(5);
        temp(6) <= (adder_in_a(6) and adder_in_b(6))or(adder_in_b(6) and temp(5))or(adder_in_a(6) and temp(5));
        --�ڰ�λ
        adder_out(7) <= adder_in_a(7) xor adder_in_b(7) xor temp(6);
        temp(7) <= (adder_in_a(7) and adder_in_b(7))or(adder_in_b(7) and temp(6))or(adder_in_a(7) and temp(6));
        
        cout <= temp(7);

    end Behavioral;
