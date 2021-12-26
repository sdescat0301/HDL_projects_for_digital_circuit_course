-----------------
-- Êý¾ÝÂ·¾¶
-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

entity datapath is port
	(
		clk,reset: in STD_LOGIC;
		memtoreg,pcsrc: in STD_LOGIC;
		alusrc,regdst: in STD_LOGIC;
		regwrite,jump: in STD_LOGIC;
		alucontrol: in std_logic_vector(2 downto 0);
		zero: out STD_LOGIC;
		pc: buffer STD_LOGIC_VECTOR(31 downto 0); 	
		instr: in STD_LOGIC_VECTOR(31 downto 0); 	
		aluout,writedata: buffer STD_LOGIC_VECTOR(31 downto 0); 
		readdata: in STD_LOGIC_VECTOR(31 downto 0)
	); 
end;

architecture struct of datapath is
  	component alu port
	(
		A, B :in std_logic_vector(31 downto 0);
        F :in std_logic_vector(2 downto 0);
        Y :out std_logic_vector(31 downto 0);
        cout :out std_logic
	);
 	end component;
   	component regfile port
	(
		clk:			in STD_LOGIC;
		we3:			in STD_LOGIC;
		ra1,ra2,wa3:		in STD_LOGIC_VECTOR(4 downto 0);
		wd3:			in STD_LOGIC_VECTOR(31 downto 0);
		rd1, rd2:			out STD_LOGIC_VECTOR(31 downto 0)
	);
  	end component;
	component adder_simple port
	(
		a,b:			buffer STD_LOGIC_VECTOR(31 downto 0);
		y:			out STD_LOGIC_VECTOR(31 downto 0)
	);
 	end component;
	component sl2 port
	(
		a:			in STD_LOGIC_VECTOR(31 downto 0);
		y:			out STD_LOGIC_VECTOR(31 downto 0)
	);
 	end component;
	component signext port
	(
		a:			in STD_LOGIC_VECTOR(15 downto 0);
		y:			out STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;
	component flopr generic(width: integer);
	port
	(
		clk,reset:			in STD_LOGIC;
		d:			in STD_LOGIC_VECTOR(width-1 downto 0);
		q:			out STD_LOGIC_VECTOR(width-1 downto 0)
	);
	end component;
	component mux2 generic(width:integer);
    port
	(
		d0,d1:			in STD_LOGIC_VECTOR(width-1 downto 0);
		s:			in STD_LOGIC;
		y:			out STD_LOGIC_VECTOR(width-1 downto 0)
	);
	end component;
	signal writereg: STD_LOGIC_VECTOR(4 downto 0);
	-- PC
	signal qS :std_logic_vector(31 downto 0);
    signal pc_add :std_logic_vector(31 downto 0);
	signal pcnext,pcnextbr,pcplus4,pcbranch:	STD_LOGIC_VECTOR(31 downto 0);
	
	signal signimm,signimmsh: STD_LOGIC_VECTOR(31 downto 0);
	signal srca,srcb,result: STD_LOGIC_VECTOR(31 downto 0);
	signal writedataS: std_logic_vector(31 downto 0);
    -- ALU
    signal aluoutS :std_logic_vector(31 downto 0);
	begin
		--next PC logic
		aluout <= aluoutS;
		writedata <= writedataS;
--		pcjump<=pcplus4(31 downto 26)&instr(25 downto 0);
		pcreg:flopr generic map(32) port map(clk=>clk,reset=>reset,d=>pcnext,q=>qS);
		pc <= qS;
		pc_add <= X"00000001";
		pcadd1:adder_simple port map(a=>pc, b=>pc_add,y=>pcplus4);
--		immsh:sl2 port map(a=>signimm,y=>signimmsh);
		signimmsh <= signimm;
		pcadd2:adder_simple port map(a=>pcplus4,b=>signimmsh,y=>pcbranch);
		pcbrmux:mux2 generic map(32) port map(d0=>pcplus4,d1=>pcbranch,s=>pcsrc,y=>pcnextbr);
		pcmux:mux2 generic map(32)port map(d0=>pcnextbr,d1=>pcnextbr,s=>jump,y=>pcnext);
		--register file logic
		rf:regfile port map(clk=>clk,we3=>regwrite,ra1=>instr(25 downto 21),ra2=>instr(20 downto 16),wa3=>writereg,wd3=>result,rd1=>srca,rd2=>writedataS);
		wrmux:mux2 generic map(5) port map(d0=>instr(20 downto 16),d1=>instr(15 downto 11),s=>regdst,y=>writereg);
		resmux:mux2 generic map(32) port map(d0=>aluoutS,d1=>readdata,s=>memtoreg,y=>result);
		
		se:signext port map(a=>instr(15 downto 0),y=>signimm);
		--ALU logic
		srcbmux:mux2 generic map(32) port map(d0=>writedataS,d1=>signimm,s=>alusrc,y=>srcb);
		mainalu:alu port map(A=>srca,B=>srcb,F=>alucontrol,Y=>aluoutS,cout=>zero);
end;


