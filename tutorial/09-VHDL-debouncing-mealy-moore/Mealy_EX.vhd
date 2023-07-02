Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Mealy_EX is
	Port(Input,Ck: in std_logic;
			P  : out std_logic_vector(1 downto 0);
			Output : out std_logic);
End Mealy_EX;

Architecture ARCH of Mealy_EX is
	Signal ph: integer range 0 to 3 := 0;	--record phase
Begin
	Process(CK)
		Variable ph1: integer range 0 to 3 :=0;
	Begin
		if Rising_Edge(CK) Then
			case ph is
				when 0 =>                           --phase 0 
				if(Input = '1') Then
					ph1 := 1;
					Output <= '0';
					P <= "01";
				End if;
			
				if(Input = '0') Then
					ph1 := 3;
					Output <= '0';
					P <= "11";
				End if;	
		
			when 1 =>                             --phase 1 
				if(Input = '1') Then
					ph1 := 2;
					Output <= '1';
					P <= "10";
				End if;
			
				if(Input = '0') Then
					ph1 := 1;
					Output <= '0';
					P <= "01";
				End if;
		
			when 2 =>                            --phase 2 
				if(Input = '1') Then
					ph1 := 3;
					Output <= '0';
					P <= "11";
				End if;
			
				if(Input = '0') Then
					ph1 := 1;
					Output <= '0';
					P <= "01";
				End if;
		
			when 3 =>                             --phase 3 
				if(Input = '1') Then
					ph1 := 0;
					Output <= '1';
					P <= "00";
				End if;
			
				if(Input = '0') Then
					ph1 := 1;
					Output <= '0';
					P <= "01";
				End if;
		End case;
	End if;
	ph <= ph1;
	End Process;
End ARCH;
		