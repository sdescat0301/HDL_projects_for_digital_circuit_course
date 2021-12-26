----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/06/02 15:19:38
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is Port 
    (
        clk :in std_logic;
        q0, q1, q2 :out std_logic;
        c :out std_logic
     );
end counter;

architecture Behavioral of counter is
    component clk_wiz is port
    (
        clk_in1 : in std_logic;
        clk_out1 : out std_logic
     );
    end component;
    component d_flip_flop is port
    (
        clk :in std_logic;
        d :in std_logic;
        q :out std_logic
     );
    end component;
    signal clk_10mhz :std_logic;  
    signal q0_in :std_logic;  
    signal q1_in :std_logic;  
    signal q2_in :std_logic;  
    signal d0 :std_logic; 
    signal d1 :std_logic;  
    signal d2 :std_logic;  
    begin
        --总体组合逻辑如下--------------
        d0 <= not q0_in;
        d1 <= ((not q1_in) and (q0_in)) or ((q1_in) and (not q0_in));
        d2 <= ((not q2_in)and(q1_in)and(q0_in)) or ((q2_in)and(not q1_in)) or ((q2_in)and(not q0_in));
        c <=  q0_in and q1_in and q2_in; 
        q0 <= q0_in;
        q1 <= q1_in;
        q2 <= q2_in;
       
        clk_10mhz <= clk;

        c1: d_flip_flop port map
        (
            clk => clk_10mhz,
            d => d0,
            q => q0_in
         );  --第一个d触发器
         
        c2: d_flip_flop port map
        (
            clk => clk_10mhz,
            d => d1,
            q => q1_in
         );  --第二个d触发器
         
        c3: d_flip_flop port map
        (
            clk => clk_10mhz,
            d => d2,
            q => q2_in
         );  --第三个d触发器
end Behavioral;
