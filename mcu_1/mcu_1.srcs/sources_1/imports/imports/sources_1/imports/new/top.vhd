library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;

entity top is port(
    CLK,reset:  in  STD_LOGIC:='0';
    Light:      out STD_LOGIC
);
end;

architecture test of top is

component clk_wiz_0 is port (
    clk_in1:   in   STD_LOGIC:='0';
	clk_out1:  out	STD_LOGIC:='0'
);
end component;

component mips is port (
    CLK, reset:             in  STD_LOGIC :='0';
    PC:                     out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    instr:                  in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    MemWrite:               out STD_LOGIC :='0';
    ALUResult,WriteData:    out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    ReadData:               in STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
);
end component;

component imem is port(
    a:      in  STD_LOGIC_VECTOR(9 DOWNTO 0);
    spo:    out STD_LOGIC_VECTOR(31 DOWNTO 0)
);
end component;
  
component dmem is port(
    a:      in  STD_LOGIC_VECTOR(5 DOWNTO 0);
    d:      in  STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk:    in  STD_LOGIC;
    we:     in  STD_LOGIC;
    spo:    out STD_LOGIC_VECTOR(31 DOWNTO 0)
);
end component;
 
component ila_0 is port(
    clk:    in STD_LOGIC;
    probe0: in STD_LOGIC_VECTOR(0 downto 0);
    probe1: in STD_LOGIC_VECTOR(0 downto 0);
    probe2: in STD_LOGIC_VECTOR(31 downto 0);
    probe3: in STD_LOGIC_VECTOR(31 downto 0);
    probe4: in STD_LOGIC_VECTOR(31 downto 0);
    probe5: in STD_LOGIC_VECTOR(11 downto 0)
);
end component;

signal PC,instr:    STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
signal WriteData,ALUResult,ReadData:    STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
signal MemWrite:    STD_LOGIC :='0';
signal clk_50:    STD_LOGIC :='0';
signal counter:     std_logic_vector(11 downto 0) := "000000000000";
attribute keep: string;
attribute keep of counter: signal is "TRUE";
begin
    Light<='1';

    C0: clk_wiz_0 port map(
        CLK_in1 => CLK,
        CLK_out1 => clk_50
    );

    Mips_0: mips port map(
        CLK => clk_50,
        reset => reset,
        PC => PC,
        instr => instr,
        memwrite => MemWrite,
        ALUResult => ALUResult,
        writedata => WriteData,
        ReadData =>ReadData
    );

    instruction_Memory: imem port map(
        A => PC(9 downto 0),
        SPO => instr
    );

    Data_Memory: dmem port map(
        CLK => clk_50,
        WE => MemWrite,
        A =>  ALUResult(5 downto 0),
        D => WriteData,
        SPO => ReadData
    );
    ILA: ila_0 port map(
        clk => clk_50,
        probe0(0) => reset,
        probe1(0) => MemWrite,
        probe2 => PC,
        probe3 => WriteData,
        probe4 => ALUResult,
        probe5 => counter
    );
    
    -- ¼ÆÊý
    process(clk_50, PC, reset)
    begin
        if(reset='0')then counter<=X"000";
        elsif(rising_edge(clk_50))then
            if(PC > X"00000000")and(PC<X"000000DA")then
                counter <= counter + "000000000001";
            end if;
        end if;
    end process;
end;