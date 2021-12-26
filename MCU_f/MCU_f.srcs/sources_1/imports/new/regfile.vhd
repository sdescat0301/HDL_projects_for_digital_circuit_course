----------------------------------
--  寄存器文件(Register file)
----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regfile is Port
    (
        clk :in std_logic;
        we3 :in std_logic; --写使能
        ra1, ra2, wa3 :in std_logic_vector(4 downto 0); 
        wd3 :in std_logic_vector(31 downto 0);
        rd1, rd2 :out std_logic_vector(31 downto 0)
     );
end regfile;

architecture Behavioral of regfile is
    type ramtype is array (31 downto 0) of std_logic_vector(31 downto 0);
    signal mem :ramtype;
    begin
        process(clk)
            begin
                if rising_edge(clk) then
                    if we3='1' then  --写寄存器
                        mem(conv_integer(wa3)) <= wd3;
                    end if;
                end if;
        end process;
        process(ra1, ra2)
            begin
                if(conv_integer(ra1)=0) then  --读A1对应的寄存器
                    rd1 <= X"00000000";
                else
                    rd1 <= mem(conv_integer(ra1));
                end if;
                
                if(conv_integer(ra2)=0) then  --读A2对应的寄存器
                    rd2 <= X"00000000";
                else
                    rd2 <= mem(conv_integer(ra2));
                end if;
        end process;

end Behavioral;
