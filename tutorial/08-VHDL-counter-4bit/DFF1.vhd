Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DFF1 is
	Port( CL,CK,T:in std_logic;
			Q,Qbar:out std_logic );
End DFF1;

Architecture ARCH of DFF1 is
Begin
	Process (CL,CK)
		variable TMP:std_logic;
		Begin
			If CL='1' Then TMP := '0';
			Elsif Rising_Edge(CK) Then
				If T='1' Then TMP := not TMP;
				Else null;
				End If;
			End If;
			Q <= TMP;
			Qbar <= not TMP;
		End Process;
End ARCH;