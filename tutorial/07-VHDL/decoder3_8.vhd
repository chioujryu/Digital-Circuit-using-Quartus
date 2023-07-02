Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Decoder3_8 is
	Port ( EN : in std_logic;
			 A  : in std_logic_vector(2 downto 0);
			 Y  :out std_logic_vector(7 downto 0));
End Decoder3_8;

Architecture ARCH of Decoder3_8 is
	signal TMP: std_logic_vector (3 downto 0);
Begin
	TMP <= EN & A;
	With TMP Select
	Y<= "10000000" When "1111",
		 "01000000" When "1110",
	    "00100000" When "1101",
	    "00010000" When "1100",
	    "00001000" When "1011",
	    "00000100" When "1010",
	    "00000010" When "1001",
	    "00000001" When "1000",
	    "00000000" When others;
End ARCH;
	
	
