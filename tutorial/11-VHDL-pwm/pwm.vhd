library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pwm is
generic(CNT_WIDTH:integer:=7);
port(
	clk,rst:in std_logic;
	offt_i: in std_logic_vector(CNT_WIDTH downto 0);
	period_i: in std_logic_vector(CNT_WIDTH downto 0);
	cnt_out: out std_logic_vector(CNT_WIDTH downto 0);
	pwm_out: out std_logic
	);
end pwm;
------------------------------------------------
ARCHITECTURE action OF pwm IS
	signal X0,X1,X2,pwm_reg: std_logic;
	signal cnt_reg:std_logic_vector(CNT_WIDTH downto 0);
begin
	process(clk,rst)
	begin
		if rst='0' then
			X0<='1';
			X1<='0';
			X2<='0';
		elsif clk'event and clk='1' then
			if X0='1'   then X0<='0'; X1<='1';
			elsif X1='1' and cnt_reg=offt_i    then X1<='0'; X2<='1';
			elsif X2='1' and cnt_reg=period_i  then X2<='0'; X0<='1';
			end if;
			
			if X0='1' then pwm_reg<='0';cnt_reg<=(others=>'0');
			elsif X1='1' then pwm_reg<='0';cnt_reg<=cnt_reg+1;
			elsif X2='1' then pwm_reg<='1';cnt_reg<=cnt_reg+1;
			end if;
		end if;
		
	end process;
	
	cnt_out<=cnt_reg;
	pwm_out<=pwm_reg;
	
end action;