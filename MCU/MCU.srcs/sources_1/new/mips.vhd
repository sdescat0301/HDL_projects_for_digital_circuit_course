-------------------------------
-- ´¦ÀíÆ÷¶¥²ã¿ò¼Ü
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mips is Port 
    (
        clk, reset: in STD_LOGIC;
        pcF: inout STD_LOGIC_VECTOR(31 downto 0);
        instrF: in STD_LOGIC_VECTOR(31 downto 0);
        memwriteM: out STD_LOGIC;
        aluoutM, writedataM: inout STD_LOGIC_VECTOR(31 downto 0);
        readdataM: in STD_LOGIC_VECTOR(31 downto 0)
     );
end mips;

architecture Behavioral of mips is
    component controller port
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
        alucontrolE: out STD_LOGIC_VECTOR(2 downto 0));
    end component;
    component datapath port
    (
        clk, reset: in STD_LOGIC;
        memtoregE, memtoregM, memtoregW: in STD_LOGIC;
        pcsrcD, branchD: in STD_LOGIC;
        alusrcE, regdstE: in STD_LOGIC;
        regwriteE, regwriteM, regwriteW: in STD_LOGIC;
        jumpD: in STD_LOGIC;
        alucontrolE: in STD_LOGIC_VECTOR(2 downto 0);
        equalD: out STD_LOGIC;
        pcF: inout STD_LOGIC_VECTOR(31 downto 0);
        instrF: in STD_LOGIC_VECTOR(31 downto 0);
        aluoutM, writedataM: inout STD_LOGIC_VECTOR(31 downto 0);
        readdataM: in STD_LOGIC_VECTOR(31 downto 0);
        opD, functD: out STD_LOGIC_VECTOR(5 downto 0);
        flushE: inout STD_LOGIC);
    end component;
    signal opD, functD: STD_LOGIC_VECTOR(5 downto 0);
    signal regdstE, alusrcE, pcsrcD, memtoregE, memtoregM, memtoregW, regwriteE, regwriteM, regwriteW, branchD, jumpD: STD_LOGIC;
    signal alucontrolE: STD_LOGIC_VECTOR(2 downto 0);
    signal flushE, equalD: STD_LOGIC;

    begin
        c: controller port map(clk, reset, opD, functD, flushE, equalD, branchD,
                                memtoregE, memtoregM, memtoregW, memwriteM, pcsrcD,
                                alusrcE, regdstE, regwriteE, regwriteM, regwriteW, jumpD,
                                alucontrolE);
        dp: datapath port map(clk, reset, memtoregE, memtoregM, memtoregW,
                                pcsrcD, branchD,
                                alusrcE, regdstE, regwriteE, regwriteM, regwriteW, jumpD,
                                alucontrolE,
                                equalD, pcF, instrF,
                                aluoutM, writedataM, readdataM,
                                opD, functD, flushE);


end Behavioral;
