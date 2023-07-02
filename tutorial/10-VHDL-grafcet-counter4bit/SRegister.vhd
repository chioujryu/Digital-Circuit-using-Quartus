Library IEEE;
Use IEEE.std_logic_1164.all;

Entity SRegister is
	Port( Si,CK,CL:in std_logic;
			Q:out std_logic_vector(7 downto 0));
End SRegister;

Architecture ARCH of SRegister is
Begin
	Process(Si,CK,CL)
		Variable RegT: std_logic_vector(7 downto 0);
	Begin
		if Rising_Edge(CK) Then
			If CL ='1' Then
				RegT := "00000000";
			else
				RegT := RegT(6 downto 0) & Si;
			End If;
			Q <= RegT;
		end if;
	End Process;
End ARCH;