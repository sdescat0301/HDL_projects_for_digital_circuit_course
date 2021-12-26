----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/05 10:23:32
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is Port
    (
        clk :in std_logic; --Ê±ÖÓ
        reset :in std_logic; --¸´Î»
        t_a, t_b :in std_logic; --Ê±¼ä¼ä¸ô¿ØÖÆ
        l_a, l_b :out std_logic_vector(1 downto 0) --µÆ×´Ì¬Êä³ö
     );
end controller;

architecture Behavioral of controller is
    type state_type is (s0, s1, s2, s3);
    --s0£ºLaÂÌµÆ£¬LbºìµÆ
    --s1£ºLa»ÆµÆ£¬LbºìµÆ
    --s2£ºLaºìµÆ£¬LbÂÌµÆ
    --s3£ºLaºìµÆ£¬Lb»ÆµÆ
    signal current_state, next_state :state_type;
    begin
        STATE_RIG :process(clk, reset)
            begin
                if rising_edge(clk) then
                    if(reset = '1') then
                        current_state <= s0;
                    else
                        current_state <= next_state;
                    end if;
                end if;
        end process;
        STATE_TRANS :process(current_state, t_a, t_b)
            begin
                case current_state is
                    when s0 =>
                        if(t_a = '0') then
                            next_state <= s1;
                        else
                            next_state <= current_state;
                        end if;
                    when s1 =>
                        next_state <= s2;
                    when s2 =>
                        if(t_b = '0') then
                            next_state <= s3;
                        else
                            next_state <= current_state;
                        end if;
                    when s3 =>
                        next_state <= s0;
                    when others =>
                        next_state <= current_state;
                end case;
        end process;
        OUTPUT :process(clk, next_state)
            begin
                if rising_edge(clk) then
                    if (next_state = s0) then
                        l_a <= "00";
                        l_b <= "10";
                    elsif (next_state = s1) then
                        l_a <= "01";
                        l_b <= "10";
                    elsif (next_state = s2) then
                        l_a <= "10";
                        l_b <= "00";
                    elsif (next_state = s3) then
                        l_a <= "10";
                        l_b <= "01";
                    end if;
--                    case next_state is
--                        when s0 =>
--                            l_a <= "00";
--                            l_b <= "10";
--                        when s1 =>
--                            l_a <= "01";
--                            l_b <= "10";
--                        when s2 =>
--                            l_a <= "10";
--                            l_b <= "00";
--                        when s3 =>
--                            l_a <= "10";
--                            l_b <= "01";
--                    end case;
                end if;
        end process;
end Behavioral;
