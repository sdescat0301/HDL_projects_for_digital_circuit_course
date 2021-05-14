library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity timer is port
(
    clk, rst        : in    std_logic;
    switch_input    : in    std_logic_vector(5 downto 0);
    seg_sel_d		: out 	std_logic_vector(3 downto 0);
    seg_output_d    : out   std_logic_vector(7 downto 0)
);
end timer;

architecture Behavioral of timer is
    signal seg_sel		: std_logic_vector(3 downto 0);
    signal seg_sel_mem	: std_logic_vector(3 downto 0) := (others => '0');
    signal switch_in_d  : std_logic_vector(5 downto 0);
    signal switch_mem   : std_logic_vector(5 downto 0) := (others => '0');
    signal seg_output   : std_logic_vector(7 downto 0);
    signal seg_mem      : std_logic_vector(7 downto 0) := (others => '0');
    signal count        : std_logic_vector(12 downto 0) := (others => '0');
    signal output_sel   : std_logic;
begin
        
    process(clk, rst)
    begin
        if rst = '1' then
            switch_mem <= (others => '0');
        else
            if rising_edge(clk) then
                switch_mem <= switch_input;
            end if;
        end if;
    end process;
    switch_in_d <= switch_mem;
    
    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');
        else
            if rising_edge(clk) then
                if	 count = "1001110000111" then			--4999
                    count <= (others => '0');
                else
                    count <= count + "0000000000001";
                end if;
                
            end if;
        end if;
    end process;
    
    process(count)
    begin
        if count < "0100111000100" then		--2500
            output_sel <= '0';
            seg_sel <= "1110";
        else
            output_sel <= '1';
            seg_sel <= "1101";
        end if;
    end process;

    process(clk, rst)
    begin
        if rst = '1' then
            seg_sel_mem <= (others => '0');
        else
            if rising_edge(clk) then
                seg_sel_mem <= seg_sel;
            end if;
        end if;
    end process;
    seg_sel_d <= seg_sel_mem;
    
    process(switch_in_d, output_sel)
    begin
        if output_sel = '0' then
            case switch_in_d is
                when "000000" => seg_output <= "00000011";
                when "000001" => seg_output <= "10011111";
                when "000010" => seg_output <= "00100101";
                when "000011" => seg_output <= "00001101";
                when "000100" => seg_output <= "10011001";
                when "000101" => seg_output <= "01001001";
                when "000110" => seg_output <= "01000001";
                when "000111" => seg_output <= "00011111";
                when "001000" => seg_output <= "00000001";
                when "001001" => seg_output <= "00001001";
                when "001010" => seg_output <= "00000011";
                when "001011" => seg_output <= "10011111";
                when "001100" => seg_output <= "00100101";
                when "001101" => seg_output <= "00001101";
                when "001110" => seg_output <= "10011001";
                when "001111" => seg_output <= "01001001";
                when "010000" => seg_output <= "01000001";
                when "010001" => seg_output <= "00011111";
                when "010010" => seg_output <= "00000001";
                when "010011" => seg_output <= "00001001";
                when "010100" => seg_output <= "00000011";
                when "010101" => seg_output <= "10011111";
                when "010110" => seg_output <= "00100101";
                when "010111" => seg_output <= "00001101";
                when "011000" => seg_output <= "10011001";
                when "011001" => seg_output <= "01001001";
                when "011010" => seg_output <= "01000001";
                when "011011" => seg_output <= "00011111";
                when "011100" => seg_output <= "00000001";
                when "011101" => seg_output <= "00001001";
                when "011110" => seg_output <= "00000011";
                when "011111" => seg_output <= "10011111";
                when "100000" => seg_output <= "00100101";
                when "100001" => seg_output <= "00001101";
                when "100010" => seg_output <= "10011001";
                when "100011" => seg_output <= "01001001";
                when "100100" => seg_output <= "01000001";
                when "100101" => seg_output <= "00011111";
                when "100110" => seg_output <= "00000001";
                when "100111" => seg_output <= "00001001";
                when "101000" => seg_output <= "00000011";
                when "101001" => seg_output <= "10011111";
                when "101010" => seg_output <= "00100101";
                when "101011" => seg_output <= "00001101";
                when "101100" => seg_output <= "10011001";
                when "101101" => seg_output <= "01001001";
                when "101110" => seg_output <= "01000001";
                when "101111" => seg_output <= "00011111";
                when "110000" => seg_output <= "00000001";
                when "110001" => seg_output <= "00001001";
                when "110010" => seg_output <= "00000011";
                when "110011" => seg_output <= "10011111";
                when "110100" => seg_output <= "00100101";
                when "110101" => seg_output <= "00001101";
                when "110110" => seg_output <= "10011001";
                when "110111" => seg_output <= "01001001";
                when "111000" => seg_output <= "01000001";
                when "111001" => seg_output <= "00011111";
                when "111010" => seg_output <= "00000001";
                when "111011" => seg_output <= "00001001";
                when "111100" => seg_output <= "00000011";
                when "111101" => seg_output <= "10011111";
                when "111110" => seg_output <= "00100101";
                when "111111" => seg_output <= "00001101";
                when others => seg_output <= "00000011";
            end case;
        else
            case switch_in_d is
                when "000000" => seg_output <= "00000011";
                when "000001" => seg_output <= "00000011";
                when "000010" => seg_output <= "00000011";
                when "000011" => seg_output <= "00000011";
                when "000100" => seg_output <= "00000011";
                when "000101" => seg_output <= "00000011";
                when "000110" => seg_output <= "00000011";
                when "000111" => seg_output <= "00000011";
                when "001000" => seg_output <= "00000011";
                when "001001" => seg_output <= "00000011";
                when "001010" => seg_output <= "10011111";
                when "001011" => seg_output <= "10011111";
                when "001100" => seg_output <= "10011111";
                when "001101" => seg_output <= "10011111";
                when "001110" => seg_output <= "10011111";
                when "001111" => seg_output <= "10011111";
                when "010000" => seg_output <= "10011111";
                when "010001" => seg_output <= "10011111";
                when "010010" => seg_output <= "10011111";
                when "010011" => seg_output <= "10011111";
                when "010100" => seg_output <= "00100101";
                when "010101" => seg_output <= "00100101";
                when "010110" => seg_output <= "00100101";
                when "010111" => seg_output <= "00100101";
                when "011000" => seg_output <= "00100101";
                when "011001" => seg_output <= "00100101";
                when "011010" => seg_output <= "00100101";
                when "011011" => seg_output <= "00100101";
                when "011100" => seg_output <= "00100101";
                when "011101" => seg_output <= "00100101";
                when "011110" => seg_output <= "00001101";
                when "011111" => seg_output <= "00001101";
                when "100000" => seg_output <= "00001101";
                when "100001" => seg_output <= "00001101";
                when "100010" => seg_output <= "00001101";
                when "100011" => seg_output <= "00001101";
                when "100100" => seg_output <= "00001101";
                when "100101" => seg_output <= "00001101";
                when "100110" => seg_output <= "00001101";
                when "100111" => seg_output <= "00001101";
                when "101000" => seg_output <= "10011001";
                when "101001" => seg_output <= "10011001";
                when "101010" => seg_output <= "10011001";
                when "101011" => seg_output <= "10011001";
                when "101100" => seg_output <= "10011001";
                when "101101" => seg_output <= "10011001";
                when "101110" => seg_output <= "10011001";
                when "101111" => seg_output <= "10011001";
                when "110000" => seg_output <= "10011001";
                when "110001" => seg_output <= "10011001";
                when "110010" => seg_output <= "01001001";
                when "110011" => seg_output <= "01001001";
                when "110100" => seg_output <= "01001001";
                when "110101" => seg_output <= "01001001";
                when "110110" => seg_output <= "01001001";
                when "110111" => seg_output <= "01001001";
                when "111000" => seg_output <= "01001001";
                when "111001" => seg_output <= "01001001";
                when "111010" => seg_output <= "01001001";
                when "111011" => seg_output <= "01001001";
                when "111100" => seg_output <= "01000001";
                when "111101" => seg_output <= "01000001";
                when "111110" => seg_output <= "01000001";
                when "111111" => seg_output <= "01000001";
                when others => seg_output <= "00000011";
            end case;
        end if;
    end process;
    
    process(clk, rst)
    begin
        if rst = '1' then
            seg_mem <= (others => '0');
        else
            if rising_edge(clk) then
                seg_mem <= seg_output;
            end if;
        end if;
    end process;
    seg_output_d <= seg_mem;
end Behavioral;