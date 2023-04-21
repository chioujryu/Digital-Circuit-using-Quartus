Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DEMUX_8 is
	Port ( 
			 A  : in std_logic;
			 S	 : in std_logic_vector(2 downto 0);
			 Y  :out std_logic_vector(7 downto 0));
End DEMUX_8;

Architecture ARCH of DEMUX_8 is

Begin
	with S select 
	Y<= A & "ZZZZZZZ"	When "111" ,
		 'Z' & A & "ZZZZZZ" When "110",
		 "ZZ" & A & "ZZZZZ" When "101",
		 "ZZZ" & A & "ZZZZ" When "100",
		 "ZZZZ" & A & "ZZZ" When "011",
		 "ZZZZZ" & A & "ZZ" When "010",
		 "ZZZZZZ" & A & 'Z' When "001",
       "ZZZZZZZ" & A When "000";
End ARCH;
	
	
