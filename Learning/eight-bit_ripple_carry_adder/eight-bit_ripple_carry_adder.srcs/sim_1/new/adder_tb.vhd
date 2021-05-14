----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/14 09:16:33
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
--  Port ( );
end adder_tb;

architecture Behavioral of adder_tb is
    --component
    component adder is
    port
    (
        a, b :in std_logic_vector(7 downto 0);  --八位数输入
        cin :in std_logic;  --之前的进位输入
        cout :out std_logic;  --八位加法器的进位输出
        s :out std_logic_vector(7 downto 0)  --八位加法器的输出
     );
     end component;
     --signal
     signal a :std_logic_vector(7 downto 0);
     signal b :std_logic_vector(7 downto 0);
     signal cin :std_logic;
     signal cout :std_logic;
     signal s :std_logic_vector(7 downto 0);
     
begin
    process begin
        cin <= '0';
        a <= "00000000";
        b <= "00000000";
        wait for 20ns;
        cin <= '1';
        wait for 20ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        cin <= '0';
        a <= a + "00000001";
        wait for 20ns;
        b <= b + "00000001";
        wait for 20 ns;
        cin <= '1';
        wait for 20 ns;
        
    end process;
    
    dut: adder port map
    (
        a => a,
        b => b,
        cin => cin,
        cout => cout,
        s => s
    );

end Behavioral;
