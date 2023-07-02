Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Debouncing2 is
	PORT(Din,CK: in std_logic;
			Dout: out std_logic);
End Debouncing2;

Architecture ARCH of Debouncing2 is
Begin
	Process(CK)
		Variable tmp : integer range 0 to 9;
	Begin
		if Rising_Edge(CK) Then
			if (Din = '1') Then
				tmp := 0;
				Dout <= '1';
			Else
				tmp := tmp + 1;
				if ( tmp = 4) Then
					tmp:=0;
					Dout<='0';
				End if;
			End if;
		End if;
	End Process;
End ARCH;