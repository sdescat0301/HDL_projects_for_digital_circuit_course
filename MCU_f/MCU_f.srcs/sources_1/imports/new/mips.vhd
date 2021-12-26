-----------------------------
-- MCU顶层模块
-----------------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.all;
entity mips is port
    (
--        pc:		buffer STD_LOGIC_VECTOR(31 downto 0);
--        instr:		in   STD_LOGIC_VECTOR(31 downto 0);
--        memwrite: 	out STD_LOGIC;
--        aluout,writedata: 	buffer STD_LOGIC_VECTOR(31 downto 0);
--        readdata:		in STD_LOGIC_VECTOR(31 downto 0);
        clk_0, rst:		in   STD_LOGIC;
        light :out std_logic
     );
end;

architecture struct of mips is
    component ila port
    (
        clk : IN STD_LOGIC;
        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    component ROM port
    (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    component RAM port
    (
        a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    component clk_wiz port
    (
        clk_in1 :in std_logic;
        clk_out1 :out std_logic
    );
    end component;
    component controller port
    (
        op, funct :in STD_LOGIC_VECTOR(5 downto 0);
        zero :in STD_LOGIC;
        memtoreg,memwrite :out STD_LOGIC;
	    pcsrc,alusrc :out STD_LOGIC;
        regdst,regwrite :out STD_LOGIC;
	    jump :out STD_LOGIC;
	    alucontrol :out STD_LOGIC_VECTOR(2 downto 0);
	    light :out std_logic
	 );
    end component;
    component datapath port
    (
        clk, reset :in STD_LOGIC;
	    memtoreg, pcsrc :in STD_LOGIC;
	    alusrc, regdst :in STD_LOGIC;
	    regwrite, jump :in STD_LOGIC;
        alucontrol :in STD_LOGIC_VECTOR(2 downto 0);
	    zero :out STD_LOGIC;
	    pc :buffer STD_LOGIC_VECTOR(31 downto 0);
	    instr :in STD_LOGIC_VECTOR(31 downto 0);
	    aluout,writedata :buffer STD_LOGIC_VECTOR(31 downto 0);
	    readdata :in STD_LOGIC_VECTOR(31 downto 0)
	 );
    end component;
    -- RAM用到的信号
    signal memwriteS :std_logic; -- 数据存储器写使能信号
    signal readdataS :std_logic_vector(31 downto 0); -- 数据存储器的输出信号
    signal writedataS :std_logic_vector(31 downto 0); --数据存储器的输入信号
    
    -- ROM用到的信号
    signal pcS :std_logic_vector(31 downto 0); -- pc信号
    signal instrS :std_logic_vector(31 downto 0); -- 指令存储器的输出信号
    
    signal clk_100Mhz :std_logic; -- 内部的时钟信号
    signal memtoregS,alusrcS,regdstS,regwriteS,jumpS,pcsrcS:STD_LOGIC;
    signal zero:STD_LOGIC;
    
    signal memwrite_ila :std_logic_vector(0 downto 0) :="0";
    signal reset_ila :std_logic_vector(0 downto 0) :="0";
    signal clk_ila :std_logic_vector(0 downto 0) :="0";
    
    signal alucontrolS:std_logic_vector(2 downto 0);
    signal aluoutS: std_logic_vector(31 downto 0);
    
    signal rst_d1, rst_sync:std_logic;
    
    attribute KEEP: string;
    attribute KEEP of memwrite_ila : signal is "TRUE";
    attribute KEEP of reset_ila : signal is "TRUE";
    attribute KEEP of clk_ila : signal is "TRUE";
    
    begin
    
        -- 异步复位，同步释放
        process(clk_100Mhz,rst)
        begin
		      if(rst='1')then
			     rst_d1<='1';
			     rst_sync<='1';
		      elsif(clk_100Mhz'event and clk_100Mhz='1')then
			     rst_sync<=rst_d1;
			     rst_d1<='0';
		      end if;
	    end process;
        memwrite_ila(0) <= memwriteS;
        reset_ila(0) <= rst_sync;
        clk_ila(0)<= '0';
        ila_in: ila port map
        (
            clk => clk_100Mhz,
            probe0 => clk_ila,
            probe1 => reset_ila,
            probe2 => pcS,
            probe3 => memwrite_ila,
            probe4 => writedataS,-- 检测写入数据存储器的数据
            probe5 => aluoutS,
            probe6 => readdataS
        );
        rom_0: ROM port map
        (
            a => pcS(9 downto 0),
            spo => instrS
        );
        ram_0: RAM port map
        (
            a => aluoutS(5 downto 0),
            d => writedataS,
            clk => clk_100Mhz,
            we => memwriteS,
            spo => readdataS
        );
        clock: clk_wiz port map
        (
            clk_in1 => clk_0,
            clk_out1 => clk_100Mhz
         );
        cont: controller port map
        (
            op => instrS(31 downto 26),
            funct => instrS(5 downto 0),
            zero => zero,
            memtoreg => memtoregS,
            memwrite => memwriteS,
            pcsrc => pcsrcS,
            alusrc => alusrcS,
            regdst => regdstS,
            regwrite => regwriteS,
            jump => jumpS,
            alucontrol => alucontrolS
         );
        dp: datapath port map
        (
            clk => clk_100Mhz,
            reset => rst_sync,
            memtoreg => memtoregS,
            pcsrc => pcsrcS,
            alusrc => alusrcS,
            regdst => regdstS,
            regwrite => regwriteS,
            jump => jumpS,
            alucontrol => alucontrolS,
            zero => zero,
            pc => pcS,
            instr => instrS,
            aluout => aluoutS,
            writedata => writedataS,
            readdata => readdataS
        );
end;