----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2021/05/24 20:14:22
-- Design Name: 
-- Module Name: TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
Port (
	clk:	in std_logic;
	rst:    in std_logic;
	test:	out std_logic
 );
end TOP;

architecture Behavioral of TOP is

signal rst_d1,rst_sync:std_logic;
signal valid,valid_d1:std_logic;
signal addr:std_logic_vector(5 downto 0);
signal cmd:std_logic_vector(19 downto 0);
signal answer_out:std_logic_vector(11 downto 0);
signal ena:std_logic;
signal Fin:std_logic_vector(2 downto 0);
signal Ain,Bin:std_logic_vector(7 downto 0);
signal c_out,c_s:std_logic;
signal y_out,y_s:std_logic_vector(7 downto 0);
signal err:std_logic;
signal clk_150Mhz:std_logic;


component clk_wiz is 
port 
 (
	clk_in1	:in std_logic;
	clk_out1:out std_logic

 );
end component;


component ALU_v1_1 is 
port(
	A		:in std_logic_vector(7 downto 0);
	B		:in std_logic_vector(7 downto 0);
	F		:in std_logic_vector(2 downto 0);
	Y		:out std_logic_vector(7 downto 0);
	Cout	:out std_logic
);

end component;

component testdata_mem IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END component;

component answer_mem IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END component;

component ila IS
PORT (
clk : IN STD_LOGIC;
probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
probe1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END component;





begin


--异步复位，同步释�?
	process(clk_150Mhz,rst)begin
		if(rst='1')then
			rst_d1<='1';
			rst_sync<='1';
		elsif(clk_150Mhz'event and clk_150Mhz='1')then
			rst_d1<='0';
			rst_sync<=rst_d1;
		end if;
	end process;



--读地�?控制
	process(clk_150Mhz,rst_sync)begin
		if(rst_sync='1')then
			addr<=(others=>'0');
			valid<='0';
			valid_d1<='0';
		elsif(clk_150Mhz'event and clk_150Mhz='1')then
			valid<='1';
			valid_d1<=valid;
			if(addr<"101100")then--44
				addr<=addr+"000001";
			else
				addr<=(others=>'0');
			end if;
		end if;
	end process;

--比较控制
	-- c_s<=answer_out(8);
	-- y_s<=answer_out(7 downto 0);
	process(valid_d1,addr,c_s,c_out,y_s,y_out)begin
			if(valid_d1='1')then
				if(c_s=c_out and y_s=y_out)then
					err<='0';
				else
					err<='1';
				end if;

			else
				err<='0';					
			end if;
	end process;
--rom出来的数据打�?拍给到alu
	process(clk_150Mhz,rst_sync) begin
		if(rst_sync='1')then
			c_s<='0';
			y_s<=(others=>'0');
			Fin<=(others=>'0');
			Ain<=(others=>'0');
			Bin<=(others=>'0');
		elsif(clk_150Mhz'event and clk_150Mhz='1')then
			c_s<=answer_out(8);
			y_s<=answer_out(7 downto 0);
			
			--如果在ALU中加了寄存器延了�?拍，在此处将aswer_mem读出的结果再多打�?�?
			-- c_s_d1<=answer_out(8);
			-- y_s_d1<=answer_out(7 downto 0);
			-- c_s<=c_s_d1;
			-- y_s<=y_s_d1;
			
			--对应例化的接口信号也要改�?�?
			Fin<=cmd(18 downto 16);
			Ain<=cmd(15 downto 8);
			Bin<=cmd(7 downto 0);
			
		end if;
	
	end process;
	
	-- Fin<=cmd(18 downto 16);
	-- Ain<=cmd(15 downto 8);
	-- Bin<=cmd(7 downto 0);

	test<=not err;	
	
		
	ena<=not rst_sync;

C0:clk_wiz port map(
	clk_in1		=>	clk,
	clk_out1	=>	clk_150Mhz
);

	
--读操作符和操作数
mem1:testdata_mem port map(
	clka 	=>	clk_150Mhz,
	ena	 	=>	ena,
	addra	=>	addr,
	douta	=>	cmd
);
--读结�?
mem2:answer_mem port map(
	clka 	=>	clk_150Mhz,
	ena	 	=>	ena,
	addra	=>	addr,
	douta	=>	answer_out
);

ALU_ins:ALU_v1_1 port map(
	F		=>	Fin,
	A		=>	Ain,
	B		=>	Bin,
	Y		=>	y_out,
	Cout	=>	c_out
);

ila_ins:ila port map(
	clk 		=>	clk_150Mhz,
	probe0		=>	y_out,
	probe1		=>	y_s,
	probe2(0)	=>	c_out,
	probe3(0)	=>	c_s,
	probe4(0)	=>	err,
	probe5(0)	=>	rst_sync,
	probe6(0)	=>	valid_d1
);

end Behavioral;
