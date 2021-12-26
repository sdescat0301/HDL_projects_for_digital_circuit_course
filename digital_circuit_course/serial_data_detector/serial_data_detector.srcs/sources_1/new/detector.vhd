----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/05 19:50:57
-- Design Name: 
-- Module Name: detector - Behavioral
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

entity detector is 
Port(
        clk :in std_logic;
        a :in std_logic;
        z :out std_logic
     );
end detector;

architecture rtl of detector is
    type state_type is (sta, a1, a11, ok);
    signal current_state, next_state :state_type;
    begin
        process(clk)  
            begin
                if rising_edge(clk) then
                    current_state <= next_state;
                end if;
            end process; 
        process(current_state, a)  
            begin
                case current_state is
                    when sta =>
                        if(a = '1')then
                            next_state <= a1;
                        else
                            next_state <= current_state;
                        end if;
                    when a1 =>
                        if(a = '1')then
                            next_state <= a11;
                        else
                            next_state <= sta;
                        end if;
                    when a11 =>
                        if(a = '1')then
                            next_state <= current_state;
                        else
                            next_state <= ok;
                        end if;
                    when ok =>
                        if(a = '1')then
                            next_state <= a1;
                        else
                            next_state <= sta;
                        end if;
                    when others =>
                        next_state <= current_state;
                end case;
            end process;
        process(clk, next_state)  
            begin
                if rising_edge(clk) then
                    if(next_state = ok)then
                        z <= '1';
                    else
                        z <= '0';
                    end if;
                end if;
            end process;
end rtl;
