Library IEEE;
Use IEEE.std_logic_1164.all;

Entity MUX8_1 is
	Port ( 
			 A  : in std_logic_vector(7 downto 0);
			 S	 : in std_logic_vector(2 downto 0);
			 Y  :out std_logic);
End MUX8_1;

Architecture ARCH of MUX8_1 is

Begin
	With S Select
	Y<= A(7) When "111",
		 A(6) When "110",
	    A(5) When "101",
	    A(4) When "100",
	    A(3) When "011",
	    A(2) When "010",
	    A(1) When "001",
	    A(0) When others;

End ARCH;
	
	
