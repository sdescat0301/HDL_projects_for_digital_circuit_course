---------------------------------------------
-- 控制路径，产生所有控制信号
---------------------------------------------
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
        clk, reset: in STD_LOGIC;
        opD, functD: in STD_LOGIC_VECTOR(5 downto 0);
        flushE, equalD: in STD_LOGIC;
        branchD: inout STD_LOGIC;
        memtoregE, memtoregM: inout STD_LOGIC;
        memtoregW, memwriteM: out STD_LOGIC;
        pcsrcD, alusrcE: out STD_LOGIC;
        regdstE: out STD_LOGIC;
        regwriteE: inout STD_LOGIC;
        regwriteM, regwriteW: inout STD_LOGIC;
        jumpD: out STD_LOGIC;
        alucontrolE: out STD_LOGIC_VECTOR(2 downto 0)
     );
end controller;

architecture Behavioral of controller is
    component main_decoder port
    (
        op: in STD_LOGIC_VECTOR(5 downto 0);
        memtoreg, memwrite: out STD_LOGIC;
        branch, alusrc: out STD_LOGIC;
        regdst, regwrite: out STD_LOGIC;
        jump: out STD_LOGIC;
        aluop: out STD_LOGIC_VECTOR(1 downto 0)
     );
    end component;
    component alu_decoder port
    (
        funct: in STD_LOGIC_VECTOR(5 downto 0);
        aluop: in STD_LOGIC_VECTOR(1 downto 0);
        alucontrol: out STD_LOGIC_VECTOR(2 downto 0)
     );
    end component;
    component flopr is generic(width: integer);
    port
    (
        clk, reset: in STD_LOGIC;
        d: in STD_LOGIC_VECTOR(width-1 downto 0);
        q: out STD_LOGIC_VECTOR(width-1 downto 0)
     );
    end component;
    component floprc generic(width: integer);
    port
    (
        clk, reset: in STD_LOGIC;
        clear: in STD_LOGIC;
        d: in STD_LOGIC_VECTOR(width-1 downto 0);
        q: out STD_LOGIC_VECTOR(width-1 downto 0)
     );
    end component;
    signal aluopD: STD_LOGIC_VECTOR(1 downto 0);
    signal memtoregD, memwriteD, alusrcD: STD_LOGIC;
    signal regdstD, regwriteD: STD_LOGIC;
    signal alucontrolD: STD_LOGIC_VECTOR(2 downto 0);
    signal memwriteE: STD_LOGIC;
    
    signal d_regE: STD_LOGIC_VECTOR(7 downto 0);
    signal q_regE: STD_LOGIC_VECTOR(7 downto 0);
    signal d_regM: STD_LOGIC_VECTOR(2 downto 0);
    signal q_regM: STD_LOGIC_VECTOR(2 downto 0);
    signal d_regW: STD_LOGIC_VECTOR(1 downto 0);
    signal q_regW: STD_LOGIC_VECTOR(1 downto 0);
    begin
        md: main_decoder port map(opD, memtoregD, memwriteD, branchD, alusrcD, regdstD, regwriteD, jumpD, aluopD);
        ad: alu_decoder port map(functD, aluopD, alucontrolD);
        pcsrcD <= branchD and equalD;
        -- pipeline registers
        regE: floprc generic map(8) port map (clk, reset, flushE, d_regE, q_regE);
        regM: flopr generic map(3) port map(clk, reset, d_regM, q_regM);
        regW: flopr generic map(2) port map(clk, reset, d_regW, q_regW);
        
        d_regE <= memtoregD & memwriteD & alusrcD & regdstD & regwriteD & alucontrolD;
        memtoregE <= q_regE(7);
        memwriteE <= q_regE(6);
        alusrcE <= q_regE(5);
        regdstE <= q_regE(4);
        regwriteE <= q_regE(3);
        alucontrolE <= q_regE(2 downto 0);
        
        d_regM <= memtoregE & memwriteE & regwriteE;
        memtoregM <= q_regM(2);
        memwriteM <= q_regM(1);
        regwriteM <= q_regM(0);
        
        d_regW <= memtoregM & regwriteM;
        memtoregW <= q_regW(1);
        regwriteW <= q_regW(0);
        
end Behavioral;
