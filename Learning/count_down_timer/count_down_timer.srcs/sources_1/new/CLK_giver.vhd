library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity CLK_giver is
    port(
        clk_in : in std_logic;
        dec,inc,rst,T_signal : in std_logic;
        clk_out : out std_logic
    );
end CLK_giver;

architecture Behavioral of CLK_giver is
    signal count1 : std_logic_vector(9 downto 0) := (others => '0');
    signal count2 : std_logic_vector(13 downto 0) := (others => '0');
    signal count3 : std_logic_vector(13 downto 0) := (others => '0');
    signal clk_mem1 : std_logic := '0';
    signal clk_mem2 : std_logic := '0';
    signal clk_mem3 : std_logic := '0';
    signal clk_mem_out : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if count1 = "1111100111" then   --999
                count1 <= (others => '0');
            else
                count1 <= count1 + "0000000001";
            end if;
        end if;
    end process;
    
    process(count1)
    begin
        if count1 < "0111110100" then    --500
            clk_mem1 <= '1';
        else
            clk_mem1 <= '0';
        end if;
    end process;
    
    process(clk_mem1)
    begin
        if rising_edge(clk_mem1) then
            if count2 = "10011100001111" then   --9999
                count2 <= (others => '0');
            else
                count2 <= count2 + "00000000000001";
            end if;
            if count3 = "00011111001111" then   --1999
                count3 <= (others => '0');
            else
                count3 <= count3 + "00000000000001";
            end if;
        end if;
    end process;
    
    process(count2)
    begin
        if count2 < "01001110001000" then   --5000
            clk_mem2 <= '1';
        else
            clk_mem2 <= '0';
        end if;
    end process;
    
    process(count3)
    begin
        if count3 < "00001111101000" then   --1000
            clk_mem3 <= '1';
        else
            clk_mem3 <= '0';
        end if;
    end process;
    
    process(dec,inc,rst,T_signal,clk_mem3,clk_mem2)
    begin
        if (dec='1' or inc='1' or rst='1') then
            clk_mem_out <= clk_mem3;
        else
        if T_signal='1' then
            clk_mem_out <= clk_mem2;
        else clk_mem_out <= clk_mem_out;
        end if;
        end if;
    end process;

    clk_out <= clk_mem_out;
    
end Behavioral;