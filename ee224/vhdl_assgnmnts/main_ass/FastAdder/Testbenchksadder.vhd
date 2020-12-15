entity Testbenchksadder is
end Testbenchksadder;
 
 architecture testb_bhv of Testbenchksadder is
   signal At,Bt,anst: bit_vector(0 to 15);
	signal ct,coutt,zt : bit;
	
	
   component KS16bitAdder is 
  port(A: in  bit_vector(15 downto 0);
       B: in bit_vector(15 downto 0);
		 cin: in bit;
		 ans: buffer bit_vector(15 downto 0);
		 cout: buffer bit;
		 zero: out bit);
	 end component;
	 
	 begin 
	   
		comp: KS16bitAdder
		  port map( A => At, B => Bt,cin => ct,ans => anst, cout => coutt,zero=> zt);
		  
	  process
	   begin
		  At <= "0000000000000000";
		  Bt <= "0000000000000000";
		  ct <= '0';
		  wait for 5 ns;
		  
		  At <= "0000000000000001";
		  Bt <= "1111111111111111";
		  ct <= '0';
		  wait for 5 ns;
		  
		  At <= "1000100000111101";
		  Bt <= "0100001001101001";
		  ct <= '1';
		  wait for 5 ns;
		  
		  At <= "0110111011110010";
		  Bt <= "1011000000010000";
		  ct <= '1';
		  wait for 5 ns;
	  end process;
 end testb_bhv;