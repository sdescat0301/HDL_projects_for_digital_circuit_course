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
        clk :in std_logic;
        switch_in :in std_logic_vector(3 downto 0);
        seg_sel : out std_logic_vector(3 downto 0);
        seg_output :out std_logic_vector(7 downto 0)
    );
end Segment_Display;

architecture Behavioral of Segment_Display is
    component clk_wiz_0 is port
    (
        clk_in1 : in std_logic;
        clk_out1 : out std_logic
    );
    end component;
    component timer is port
    (
        clk, rst        : in    std_logic;
        switch_input    : in    std_logic_vector(5 downto 0);
        seg_sel_d		: out 	std_logic_vector(3 downto 0);
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
    component CLK_giver is port
    (
        clk_in : in std_logic;
        dec,inc,rst,T_signal : in std_logic;
        clk_out : out std_logic
    );
    end component;
    signal clk_10Mhz : std_logic;
    signal D_in : std_logic_vector(5 downto 0);
    signal D_out : std_logic_vector(5 downto 0);
    signal pull_down : std_logic := '0';
    signal clk_slow : std_logic;
    signal addeder : std_logic_vector(5 downto 0);
    signal MUX_o : std_logic_vector(5 downto 0);
    signal rst_o : std_logic;
    signal inc_o : std_logic;
    signal dec_o : std_logic;
    signal stop_o : std_logic;
    signal T_sig : std_logic;
begin
    rst_o <= switch_in(0);
    inc_o <= switch_in(1);
    dec_o <= switch_in(2);
    stop_o <= switch_in(3);
    CO:clk_wiz_0 port map
    (
        clk_in1 => clk,
        clk_out1 => clk_10Mhz
    );
    C1:timer port map
    (
        clk => clk_10Mhz,
        rst => pull_down,
        switch_input => D_out,
        seg_output_d => seg_output,
        seg_sel_d => seg_sel
    );
    C2:d_flip_flop port map
    (
         clk => clk_slow,
         reset => pull_down,
         d => D_in,
         q => D_out
    );
    C3:full_adder port map
    (
        a => D_out,
        b => addeder,
        sum => MUX_o
    );
    C4:t_flip_flop port map
    (
        t => stop_o,
        q => t_sig
    );
    C5:MUX port map
    (
        mux_in => MUX_o,
        en => rst_o,
        mux_out => D_in
    );
    C6:CLK_giver port map
    (
        clk_in => clk_10Mhz,
        dec => dec_o,
        inc => inc_o,
        rst => rst_o,
        T_signal => t_sig,
        clk_out => clk_slow
    );
    C7:k_in port map
    (
        Dt => D_out,
        dec_in => dec_o,
        inc_in => inc_o,
        add_in => addeder
    );
end Behavioral;