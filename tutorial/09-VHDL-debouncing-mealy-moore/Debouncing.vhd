Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Debouncing is
	PORT(Din,CK: in std_logic;
			Dout: out std_logic);
End Debouncing;

Architecture ARCH of Debouncing is
	Component DFF1
	Port(D,CK:in std_logic;
			Q:out std_logic);
	End Component;
	
	Signal tmp : std_logic_vector(4 downto 0);
Begin
	tmp(0) <= Din;	
	De:for i in 1 to 4 Generate
		Ui:DFF1 Port Map(tmp(i-1),CK,TMP(i));
	End Generate;
	
	Dout <= tmp(4) and tmp(1) and tmp(2) and tmp(3);
End ARCH;	