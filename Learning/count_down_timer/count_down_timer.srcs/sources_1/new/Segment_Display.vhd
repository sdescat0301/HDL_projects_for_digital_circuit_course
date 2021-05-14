----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/13 23:29:52
-- Design Name: 
-- Module Name: Segment_Display - Behavioral
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

entity Segment_Display is port
    (
        clk, reset :in std_logic;
        switch_input :in std_logic_vector(3 downto 0);
        seg_output :out std_logic_vector(7 downto 0)
    );
end Segment_Display;

architecture Behavioral of Segment_Display is
    component timer is port
    (
        clk, rst        : in    std_logic;
        switch_input    : in    std_logic_vector(5 downto 0);
        seg_output_d    : out   std_logic_vector(7 downto 0)
    );
    end component;
    component d_flip_flop is port
    (
        clk :in std_logic;
        reset :in std_logic;
        d :in std_logic_vector(5 downto 0);
        q :out std_logic_vector(5 downto 0)
    );
    end component;
    component full_adder is port
    (
        a   :in std_logic_vector(5 downto 0); 
        b   :in std_logic_vector(5 downto 0); 
        sum :out std_logic_vector(5 downto 0)
    );
    end component;
    component t_flip_flop is port
    (
         t :in std_logic;
         q :out std_logic
    );
    end component;
    component MUX is port
    (
         mux_in :in std_logic_vector(5 downto 0);
         en :in std_logic;
         mux_out :out std_logic_vector(5 downto 0)
    );
    end component;
    component k_in is port
    (
         Dt :in std_logic_vector(5 downto 0);
         dec_in :in std_logic;
         inc_in :in std_logic;
         add_in :out std_logic_vector(5 downto 0)
    );
    end component;
begin


end Behavioral;
