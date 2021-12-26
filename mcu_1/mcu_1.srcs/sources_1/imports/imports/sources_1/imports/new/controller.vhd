library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controller is port(
    op, Funct:          in  STD_LOGIC_VECTOR(5 downto 0) := "000000";
    MemtoReg, MemWrite: out STD_LOGIC := '0';
    PCSrc:              out STD_LOGIC := '0';
    ALUControl:         out STD_LOGIC_VECTOR(2 downto 0) := "000";
    ALUSrc:             out STD_LOGIC := '0';
    RegDst, RegWrite:   out STD_LOGIC := '0';
    Zero:               in  STD_LOGIC := '0'
);
end;

architecture struct of controller is
component maindec port(
    op:                 in  STD_LOGIC_VECTOR(5 downto 0) := "000000";
    MemtoReg, MemWrite: out STD_LOGIC := '0';
    branch, ALUSrc:     out STD_LOGIC := '0';
    RegDst, RegWrite:   out STD_LOGIC := '0';
    aluop:              out STD_LOGIC_VECTOR(1 downto 0) := "00"
);
end component;
component aludec port(
    Funct:      in  STD_LOGIC_VECTOR(5 downto 0) := "000000";
    aluop:      in  STD_LOGIC_VECTOR(1 downto 0) := "00";
    ALUControl: out STD_LOGIC_VECTOR(2 downto 0) := "000"
);
end component;

signal aluop:  STD_LOGIC_VECTOR(1 downto 0);
signal branch: STD_LOGIC;

begin
    PCSrc <= branch and Zero;
    md: maindec port map(
        op=>op,
        MemtoReg => MemtoReg,
        MemWrite => MemWrite,
        branch =>branch,
        ALUSrc =>ALUSrc,
        RegDst =>RegDst,
        RegWrite=>RegWrite,
        aluop=>aluop
    );

    ad: aludec port map(
        Funct=>Funct, 
        aluop=>aluop, 
        ALUControl=>ALUControl
    );
end;