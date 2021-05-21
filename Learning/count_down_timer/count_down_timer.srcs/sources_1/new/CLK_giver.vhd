library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity CLK_giver is
    port(
        clk : in std_logic;
        dec,inc,rst,T_signal : in std_logic;
        clk_out : out std_logic
    );
end CLK_giver;

architecture Behavioral of CLK_giver is
    --signal count1 : std_logic_vector(9 downto 0) := (others => '0');
    signal count2 : std_logic_vector(23 downto 0) := (others => '0');
    signal count3 : std_logic_vector(23 downto 0) := (others => '0');
    --signal clk_mem1 : std_logic := '0';
    signal clk_mem2 : std_logic := '0';
    signal clk_mem3 : std_logic := '0';
    signal flag : std_logic_vector(1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count2 = "100110001001011001111111" then   --9999999
                count2 <= (others => '0');
            else
                count2 <= count2 + "000000000000000000000001";
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if count3 = "000111101000010001111111" then   --1999999
                count3 <= (others => '0');
            else
                count3 <= count3 + "000000000000000000000001";
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if count2 < "010011000100101101000000" then   --5000000
                clk_mem2 <= '1';
            else
                clk_mem2 <= '0';
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if count3 < "000011110100001001000000" then   --1000000
                clk_mem3 <= '1';
            else
                clk_mem3 <= '0';
            end if;
        end if;
    end process;
    
    process(dec,inc,rst,T_signal)
    begin
        if (dec='1' or inc='1' or rst='1') then
            flag<="10";
        else
        if T_signal='1' then
            flag<="01";
        else flag<="00";
        end if;
        end if;
    end process;
    clk_out <= clk_mem2 when flag="01" else
    clk_mem3 when flag="10" else
    '0';
end Behavioral;