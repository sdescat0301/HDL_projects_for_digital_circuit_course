---------------------------------------------------------------------
-- 冲突处理单元，用于处理流水线处理器运行中出现的数据、控制冲突。
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hazard is port
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
end hazard;

architecture Behavioral of hazard is
    signal lwstallD, branchstallD: STD_LOGIC;
    begin
        -- 重定向到Decode（译码）阶段
        forwardaD <= '1' when ((rsD /= "00000") and (rsD = writeregM) and (regwriteM = '1'))
        else '0';
        forwardbD <= '1' when ((rtD /= "00000") and (rtD = writeregM) and (regwriteM = '1'))
        else '0';
        
        -- 重定向到Execute（执行）阶段
        process(rsE, rtE, writeregM, writeregW, regwriteM, regwriteW)
            begin
                forwardaE <= "00"; forwardbE <= "00";
                if (rsE /= "00000") then
                    if ((rsE = writeregM) and (regwriteM = '1')) then
                        forwardaE <= "10";
                    elsif ((rsE = writeregW) and (regwriteW = '1')) then
                        forwardaE <= "01";
                    end if;
                end if;
                if (rtE /= "00000") then
                    if ((rtE = writeregM) and (regwriteM = '1')) then
                        forwardbE <= "10";
                    elsif ((rtE = writeregW) and (regwriteW = '1')) then
                        forwardbE <= "01";
                    end if;
                end if;
        end process;
        
        -- 阻塞
        lwstallD <= '1' when ((memtoregE = '1') and ((rtE = rsD) or (rtE = rtD)))
        else '0';
        branchstallD <= '1' when ((branchD = '1') and
        (((regwriteE = '1') and
        ((writeregE = rsD) or (writeregE = rtD))) or
        ((memtoregM = '1') and
        ((writeregM = rsD) or (writeregM = rtD)))))
        else '0';
        stallD <= (lwstallD or branchstallD) after 1 ns;
        stallF <= stallD after 1 ns; -- stalling D stalls all previous stages
        flushE <= stallD after 1 ns; -- stalling D flushes next stage
        -- not necessary to stall D stage on store if source comes from load;
        -- instead, another bypass network could be added from W to M
end Behavioral;
