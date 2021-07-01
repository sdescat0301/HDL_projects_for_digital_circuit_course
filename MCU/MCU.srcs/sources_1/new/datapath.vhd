------------------------------------------------------------
-- 数据路径，包括ALU、寄存器文件、外围计算和选择器
------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is Port 
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
        flushE: inout STD_LOGIC
     );
end datapath;

architecture Behavioral of datapath is
    component ALU is port -- ALU
        (
            A, B :in std_logic_vector(31 downto 0);
            F :in std_logic_vector(2 downto 0);
            Y :out std_logic_vector(31 downto 0);
            cout :out std_logic
         );
    end component;
    component regfile is port -- 寄存器文件(Register file)
        (
            clk :in std_logic;
            we3 :in std_logic; --写使能
            ra1, ra2, wa3 :in std_logic_vector(4 downto 0); 
            wd3 :in std_logic_vector(31 downto 0);
            rd1, rd2 :out std_logic_vector(31 downto 0)
         );
    end component;
    component adder1 is port -- 加法器，用于 PC+4 和 PC 跳转
        (
            a,b :in std_logic_vector(31 downto 0);
            y :out std_logic_vector(31 downto 0)
         );
    end component;
    component sl2 is port -- 左移2位， 用于将30位数拓展至32位
        (
            a :in std_logic_vector(31 downto 0);
            y :out std_logic_vector(31 downto 0)
         );
    end component;
    component signext is port -- 符号扩展，用于将16位立即数拓展为32位
        (
            a: in STD_LOGIC_VECTOR(15 downto 0);
            y: out STD_LOGIC_VECTOR(31 downto 0)
         );
    end component;
    component flopr is generic(width: integer); -- 带异步复位端的D触发器
    port(
            clk, reset: in STD_LOGIC;
            d: in STD_LOGIC_VECTOR(width-1 downto 0);
            q: out STD_LOGIC_VECTOR(width-1 downto 0)
        );
    end component;
    component flopenr is generic(width: integer); -- 带异步复位、使能端的D触发器
    port(
            clk, reset: in STD_LOGIC;
            en: in STD_LOGIC;
            d: in STD_LOGIC_VECTOR(width-1 downto 0);
            q: out STD_LOGIC_VECTOR(width-1 downto 0));
    end component;
    component floprc is generic(width: integer); --带同步复位端、清零端的D触发器
    port(
            clk, reset: in STD_LOGIC;
            clear: in STD_LOGIC;
            d: in STD_LOGIC_VECTOR(width-1 downto 0);
            q: out STD_LOGIC_VECTOR(width-1 downto 0));
    end component;
    component flopenrc is generic(width: integer); -- 带同步复位、清零、使能端的D触发器
    port(
            clk, reset: in STD_LOGIC;
            en, clear: in STD_LOGIC;
            d: in STD_LOGIC_VECTOR(width-1 downto 0);
            q: out STD_LOGIC_VECTOR(width-1 downto 0));
    end component;
    component mux2 is generic(width: integer); -- 2:1多路复用器
    port(
            d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
            s: in STD_LOGIC;
            y: out STD_LOGIC_VECTOR(width-1 downto 0));
    end component;
    component mux3 is generic(width: integer); -- 3:1多路复用器
    port(
            d0, d1, d2: in STD_LOGIC_VECTOR(width-1 downto 0);
            s: in STD_LOGIC_VECTOR(1 downto 0);
            y: out STD_LOGIC_VECTOR(width-1 downto 0));
    end component;
    component eqcmp is
    port(
            a, b: in STD_LOGIC_VECTOR(31 downto 0);
            y: out STD_LOGIC);
    end component;
    component hazard is --冲突处理单元
    port
    (   
        rsD, rtD, rsE, rtE: in STD_LOGIC_VECTOR(4 downto 0);
        writeregE, writeregM, writeregW: in STD_LOGIC_VECTOR(4 downto 0);
        regwriteE, regwriteM, regwriteW: in STD_LOGIC;
        memtoregE, memtoregM, branchD: in STD_LOGIC;
        forwardaD, forwardbD: out STD_LOGIC;
        forwardaE, forwardbE: out STD_LOGIC_VECTOR(1 downto 0);
        stallF, flushE: out STD_LOGIC;
        stallD: inout STD_LOGIC
     );
    end component;
    signal forwardaD, forwardbD: STD_LOGIC;
    signal forwardaE, forwardbE: STD_LOGIC_VECTOR(1 downto 0);
    signal stallF, stallFbar, stallD, stallDbar: STD_LOGIC;
    signal rsD, rtD, rdD, rsE, rtE, rdE: STD_LOGIC_VECTOR(4 downto 0);
    signal writeregE, writeregM, writeregW: STD_LOGIC_VECTOR(4 downto 0);
    signal flushD: STD_LOGIC;
    signal pcnextFD, pcnextbrFD, pcplus4F, pcbranchD: STD_LOGIC_VECTOR(31 downto 0);
    signal signimmD, signimmE, signimmshD: STD_LOGIC_VECTOR(31 downto 0);
    signal srcaD, srca2D, srcaE, srca2E: STD_LOGIC_VECTOR(31 downto 0);
    signal srcbD, srcb2D, srcbE, srcb2E, srcb3E: STD_LOGIC_VECTOR(31 downto 0);
    signal pcplus4D, instrD: STD_LOGIC_VECTOR(31 downto 0);
    signal aluoutE, aluoutW: STD_LOGIC_VECTOR(31 downto 0);
    signal readdataW, resultW: STD_LOGIC_VECTOR(31 downto 0);
    signal d1_pcmux: STD_LOGIC_VECTOR(31 downto 0);

begin
    -- 冲突处理
    h: hazard port map(rsD, rtD, rsE, rtE, writeregE, writeregM, writeregW,
                       regwriteE, regwriteM, regwriteW,
                       memtoregE, memtoregM, branchD,
                       forwardaD, forwardbD, forwardaE, forwardbE,
                       stallF, stallD, flushE);
    
    -- PC刷新组合逻辑
    d1_pcmux <= pcplus4D(31 downto 28) & instrD(25 downto 0) & "00";
    pcbrmux: mux2 generic map(32) port map(pcplus4F, pcbranchD, pcsrcD, pcnextbrFD);
    pcmux: mux2 generic map(32) port map(pcnextbrFD, d1_pcmux, jumpD, pcnextFD);
    
    -- 寄存器文件
    rf: regfile port map(clk, regwriteW, rsD, rtD, writeregW, resultW, srcaD, srcbD);
    
    -- Fetch stage（取指令阶段）逻辑
    stallDbar <= (not stallD);
    stallFbar <= (not stallF);
    pcreg: flopenr generic map(32) port map(clk, reset, stallFbar, pcnextFD, pcF);
    pcadd1: adder1 port map(pcF, "00000000000000000000000000000100", pcplus4F);
    
    -- Decode stage（译码阶段）逻辑
    r1D: flopenr generic map(32) port map(clk, reset, stallDbar, pcplus4F, pcplus4D);
    r2D: flopenrc generic map(32) port map(clk, reset, stallDbar, flushD, instrF, instrD);
    se: signext port map(instrD(15 downto 0), signimmD);
    immsh: sl2 port map(signimmD, signimmshD);
    pcadd2: adder1 port map(pcplus4D, signimmshD, pcbranchD);
    forwardadmux: mux2 generic map(32) port map(srcaD, aluoutM, forwardaD, srca2D);
    forwardbdmux: mux2 generic map(32) port map(srcbD, aluoutM, forwardbD, srcb2D);
    comp: eqcmp port map(srca2D, srcb2D, equalD);
    opD <= instrD(31 downto 26);
    functD <= instrD(5 downto 0);
    rsD <= instrD(25 downto 21);
    rtD <= instrD(20 downto 16);
    rdD <= instrD(15 downto 11);
    flushD <= pcsrcD or jumpD;
    
    -- Execute stage（执行阶段）
    r1E: floprc generic map(32) port map(clk, reset, flushE, srcaD, srcaE);
    r2E: floprc generic map(32) port map(clk, reset, flushE, srcbD, srcbE);
    r3E: floprc generic map(32) port map(clk, reset, flushE, signimmD, signimmE);
    r4E: floprc generic map(5) port map(clk, reset, flushE, rsD, rsE);
    r5E: floprc generic map(5) port map(clk, reset, flushE, rtD, rtE);
    r6E: floprc generic map(5) port map(clk, reset, flushE, rdD, rdE);
    forwardaemux: mux3 generic map(32) port map(srcaE, resultW, aluoutM, forwardaE, srca2E);
    forwardbemux: mux3 generic map(32) port map(srcbE, resultW, aluoutM, forwardbE, srcb2E);
    srcbmux: mux2 generic map(32) port map(srcb2E, signimmE, alusrcE, srcb3E);
    alu1: alu port map(srca2E, srcb3E, alucontrolE, aluoutE);
    wrmux: mux2 generic map(5) port map(rtE, rdE, regdstE, writeregE);
    
    -- Memory stage（存储器阶段）
    r1M: flopr generic map(32) port map(clk, reset, srcb2E, writedataM);
    r2M: flopr generic map(32) port map(clk, reset, aluoutE, aluoutM);
    r3M: flopr generic map(5) port map(clk, reset, writeregE, writeregM);
    
    -- Writeback stage（写回阶段）
    r1W: flopr generic map(32) port map(clk, reset, aluoutM, aluoutW);
    r2W: flopr generic map(32) port map(clk, reset, readdataM, readdataW);
    r3W: flopr generic map(5) port map(clk, reset, writeregM, writeregW);
    resmux: mux2 generic map(32) port map(aluoutW, readdataW, memtoregW,
    resultW);

end Behavioral;
