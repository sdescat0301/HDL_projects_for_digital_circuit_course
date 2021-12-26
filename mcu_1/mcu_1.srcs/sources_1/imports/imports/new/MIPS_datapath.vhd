library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.STD_LOGIC_ARITH.all;

entity datapath is  -- MIPS datapath
  port(CLK, reset:        in  STD_LOGIC:='0';
       MemtoReg, PCSrc:   in  STD_LOGIC:='0';
       ALUSrc, RegDst:    in  STD_LOGIC:='0';
       RegWrite:    in  STD_LOGIC:='0';
       ALUControl:        in  STD_LOGIC_VECTOR(2 downto 0);
       Zero:              out STD_LOGIC:='0';
       PC:                out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
       Instr:             in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
       ALUResult: out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
       WriteData: out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
       ReadData:          in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
       );
end;

architecture struct of datapath is
  component alu
    port(SrcA, SrcB:       in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
         ALUControl: in  STD_LOGIC_VECTOR(2 downto 0):="000";
         ALUResult:  out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
         Zero:       out STD_LOGIC);
  end component;
  component regfile
    port(CLK:           in  STD_LOGIC:='0';
         we3:           in  STD_LOGIC:='0';
         a1, a2, a3: in  STD_LOGIC_VECTOR(4 downto 0):="00000";
         wd3:           in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
         rd1, rd2:      out STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
         );
  end component;
  component adder
    port(a, b: in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
         y:    out STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
         );
  end component;
  component signextend
    port(a: in  STD_LOGIC_VECTOR(15 downto 0):=X"0000";
         y: out STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
         );
  end component;
  component flopr generic(width: integer);
    port(CLK, reset: in  STD_LOGIC;
         d:          in  STD_LOGIC_VECTOR(width-1 downto 0);
         q:          out STD_LOGIC_VECTOR(width-1 downto 0));
  end component;
  component mux2 generic(width: integer);
    port(d0, d1: in  STD_LOGIC_VECTOR(width-1 downto 0);
         s:      in  STD_LOGIC;
         y:      out STD_LOGIC_VECTOR(width-1 downto 0));
  end component;

-- 00 Register_File的参数将在下列阐明  
-- 01 ALU的双参数、选入SrcB的两种可能信号
signal SrcA,SrcB,WriteData_0,Signimm : std_logic_vector(31 downto 0):=X"00000000";
-- 02 MUX_ALUSrc的两输入信号为上述WriteData_0,Signimm

-- 03 写入MUX_RegDst的两种可能信号与输出信号
signal WriteReg_Out : std_logic_vector(4 downto 0):="00000";

-- 04 写入MUX_MemtoReg的'0'信号及其输出信号；'1'信号为ReadData端口信号
signal ALUResult_0,Result : std_logic_vector(31 downto 0):=X"00000000";
-- 05 Sign_Extend的输出信号为上述Signimm

-- 07 Adder_PCBranch的输入信号之一（另一为Shifter_Out)与输出信号
signal PCPlus1,PCBranch : std_logic_vector(31 downto 0):=X"00000000";

-- 08 MUX_PCSrc的输出信号；输入信号分别为PCPlus1,PCBranch
signal PC_dot : std_logic_vector(31 downto 0):=X"00000000";

-- 09 Programme_Counter的输出信号；输入信号为PC_dot
signal PC_0 : std_logic_vector(31 downto 0):=X"00000000";

--10 Adder_PCPlus1的输入信号分别为PC_0与Constsignal_1:=X"00000001",输出信号为PCPlus
constant Constsignal_1 : std_logic_vector(31 downto 0):=X"00000001";

begin

WriteData<=WriteData_0;
ALUResult<=ALUResult_0;
PC<=PC_0;

--00
Register_File: regfile port map (
CLK => CLK,
WE3 => RegWrite,
A1 => Instr(25 downto 21),
RD1 => SrcA,
A2 => Instr(20 downto 16),
RD2 => WriteData_0,
A3 => WriteReg_Out,
WD3 => Result
);

--01
ALU_0: alu port map(
SrcA => SrcA,
SrcB => SrcB,
ALUControl => ALUControl,
Zero => Zero,
ALUResult => ALUResult_0
);

--02
MUX_ALUSrc : mux2 generic map (32)port map (
d0 => WriteData_0,
d1 =>Signimm,
s => ALUSrc,
y => SrcB
);

--03
MUX_RegDst: mux2 generic map (5)port map (
d0 => Instr(20 downto 16),
d1 => Instr(15 downto 11),
s => RegDst,
y => WriteReg_Out
);

--04
MUX_MemtoReg: mux2 generic map (32)port map (
d0 => ALUResult_0,
d1 =>ReadData,
s => MemtoReg,
y => Result
);

--05
Sign_Extend: signextend port map (
a => Instr(15 downto 0),
y => Signimm
);


--07
Adder_PCBranch: adder port map(
a => Signimm,
b => PCPlus1,
y => PCBranch
);

--08
MUX_PCSrc: mux2 generic map (32)port map (
d0 => PCPlus1,
d1 => PCBranch,
s => PCSrc,
y => PC_dot
);

--09
Programme_Counter: flopr generic map (32) port map (
CLK => CLK,
reset => reset,
d => PC_dot,
q => PC_0
);

--10
Adder_PCPlus1: adder port map(
a => PC_0,
b => Constsignal_1,
y => PCPlus1
);

end;