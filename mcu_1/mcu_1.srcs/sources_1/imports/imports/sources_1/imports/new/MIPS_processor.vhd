library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mips is port(
    CLK,reset:  in  STD_LOGIC :='0';
    PC:         out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    Instr:      in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    MemWrite:   out STD_LOGIC :='0';
    ALUResult,WriteData:    out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    ReadData:   in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
);
end;

architecture struct of mips is
component controller port(
    op,Funct:           in  STD_LOGIC_VECTOR(5 downto 0):="000000";
    MemtoReg,MemWrite:  out STD_LOGIC := '0';
    PCSrc:              out STD_LOGIC :='0';
    ALUControl:         out STD_LOGIC_VECTOR(2 downto 0):="000";
    ALUSrc:             out STD_LOGIC :='0';
    RegDst, RegWrite:   out STD_LOGIC :='0';
    Zero:               in  STD_LOGIC :='0'
);
end component;
component datapath port(
    CLK,reset:          in  STD_LOGIC:='0';
    MemtoReg,PCSrc:     in  STD_LOGIC:='0';
    ALUSrc,RegDst:      in  STD_LOGIC:='0';
    RegWrite:           in  STD_LOGIC:='0';
    ALUControl:         in  STD_LOGIC_VECTOR(2 downto 0);
    Zero:               out STD_LOGIC:='0';
    PC:                 out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    Instr:              in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    ALUResult:          out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    WriteData:          out STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
    ReadData:           in  STD_LOGIC_VECTOR(31 downto 0):=X"00000000"
);
end component;

signal MemtoReg, ALUSrc, RegDst, RegWrite,PCSrc: STD_LOGIC := '0';
signal Zero:        STD_LOGIC :='0';
signal ALUControl:  STD_LOGIC_VECTOR(2 downto 0):="000";
signal PC_0:        STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
signal ALUResult_0: STD_LOGIC_VECTOR(31 downto 0):=X"00000000";
signal WriteData_0: STD_LOGIC_VECTOR(31 downto 0):=X"00000000";

begin

    Control_Unit: controller port map(
        op => Instr(31 downto 26), 
        Funct => Instr(5 downto 0),
        Zero => Zero, 
        MemtoReg => MemtoReg, 
        MemWrite => MemWrite, 
        PCSrc => PCSrc, 
        ALUSrc => ALUSrc,
        RegDst => RegDst, 
        RegWrite => RegWrite,
        ALUControl => ALUControl
    );
        
    Data_Path: datapath port map(
        CLK => CLK, 
        reset => reset, 
        MemtoReg => MemtoReg, 
        PCSrc => PCSrc, 
        ALUSrc => ALUSrc, 
        RegDst => RegDst,
        RegWrite => RegWrite,
        ALUControl => ALUControl, 
        Zero => Zero, 
        PC => PC_0, 
        Instr => Instr, 
        ALUResult => ALUResult_0, 
        WriteData => WriteData_0, 
        ReadData => ReadData
    );  
    PC <= PC_0;
    WriteData <= WriteData_0;
    ALUResult <= ALUResult_0;
end;