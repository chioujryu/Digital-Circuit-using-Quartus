Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Encoder3_8 is
	Port ( EN : in std_logic;
			 A  : in std_logic_vector(7 downto 0);
			 Y  :out std_logic_vector(2 downto 0));
End Encoder3_8;

Architecture ARCH of Encoder3_8 is
Begin
	Y<= "111" When (EN and A(7)) = '1' Else
		 "110" When (EN and A(6)) = '1' Else
	    "101" When (EN and A(5)) = '1' Else
	    "100" When (EN and A(4)) = '1' Else
	    "011" When (EN and A(3)) = '1' Else
	    "010" When (EN and A(2)) = '1' Else
	    "001" When (EN and A(1)) = '1' Else
	    "000" ;
End ARCH;
	
	
