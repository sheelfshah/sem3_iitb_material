entity FastAdder is 
  port(A: in  bit_vector(0 to 15);
       B: in bit_vector(0 to 15);
		 ans: out bit_vector(0 to 15);
		 car: out bit);
end entity FastAdder;

entity ANDGAte is 
 port(x1,x2: in bit; y: out bit);
end entity ANDGAte;
 
 Architecture AND_function of ANDGAte is
	begin
		y <= x1 And x2 ;
end AND_function;
-------
entity NotGate is 
 port(x: in bit; y: out bit);
end entity NotGate;
 
 architecture Not_function of NotGate is
	begin
		y <= not x;
end Not_function;
----

entity ORGate is 
 port(x1,x2: in bit; y: out bit);
end entity ORGate;
 
 architecture OR_function of ORGate is
	begin
		y <= x1 or x2 ;
end OR_function;

-------

entity NANDGate is 
 port(x1,x2: in bit; y: out bit);
end entity NANDGate;
architecture NAND_function of NANDGate is
   signal ia : bit;
	begin
		ia <= x1 and x2 ;
		y <= not ia ;
end NAND_function;
-------

entity XorG is 
  port( x1in : in bit;
        x2in : in bit;
		  yout : out bit);
end entity XorG;

  architecture Xor_fn of XorG is --Xor gate
   signal yn1,yn2,y1a,y2a: bit; --intermediate signal
	
	component ORGate is 
	  port(x1,x2: in bit; y: out bit);
   end component;
 
   component ANDGate is 
	  port(x1,x2: in bit; y: out bit);
   end component;

   component NotGate is 
	  port(x: in bit; y: out bit);
   end component;
	--each gate component declaration
	
	
	begin
	
	 Not1_instance: NotGate
		port map (x => x1in, y => yn1 );
	  --not gate
	 Not2_instance: NotGate
		port map (x => x2in, y => yn2 );
	 
	 AND1_instance: ANDGate
		port map (x1 => x1in,x2 => yn2, y => y1a );
	 --and gate
    AND2_instance: ANDGate
		port map (x1 => x2in,x2 => yn1, y => y2a );
		
	 OR_instance: ORGate
		port map (x1 => y1a,x2 => y2a, y => yout );--or gate
		
end Xor_fn;
--------

entity XorOp is 
  port(A: in  bit_vector(0 to 15);
       B: in bit_vector(0 to 15);
		 ans: bit_vector(0 to 15););
end entity XorOp;

architecture Struc of XorOp is
 
   component XorG is     --Xor component
	   port( x1in : in bit;
        x2in : in bit;
	  	  yout : out bit);
	  end component;
		
 begin
 
   for i in 0 to 15 loop    --pi's(XorGate)
		  Xor_instance: XorG
		   port map(x1in => A(i), x2in => B(i), yout => ans);
		end loop;

end Struc;
--------

entity NandOp is 
  port(A: in  bit_vector(0 to 15);
       B: in bit_vector(0 to 15);
		 ans: bit_vector(0 to 15));
end entity NandOp;

architecture Struc of NandOp is
 
   component NANDGate is
    	port(x1,x2: in bit; y: out bit);
	end component;
		
 begin 
   for i in 0 to 15 loop  
	   Nand_instance: NANDGate   --NandGate
	     port map( x1 => A(i), x2 => B(i), y => ans(i) );
		end loop;

end Struc;
------
entity grpop is 
  port( gi,pi: in bit;
        gj,pj: in bit;
		  gk,pk: out bit);
end entity grpop;

architecture grpfn of grpop is
  signal temp : bit; 
  
  component ORGate is 
    port(x1,x2: in bit; y: out bit);
  end component;
 
   component ANDGate is 
    port(x1,x2: in bit; y: out bit);
   end component;
	
  begin
  
   And0_instance: ANDGate
		port map( x1 => gj, x2 => pi, y => temp );
			 
	Orgate: ORGate
		port map (x1 => gi,x2 => temp, y => gk  );
		
	Orgat: ORGate
	   port map (x1 => pi,x2 => pj, y => pk  );

end grpfn;
-----

architecture Struc of FastAdder is 
     signal g,p: bit_vector(0 to 15);
	  signal g1,g2,g3,g4,p1,p2,p3,p4: bit_vector(0 to 15);
	  signal c : bit_vector(0 to 15); --carry
	  signal temp1,temp2: bit;
    
	  component XorG is     --Xor component
	   port( x1in : in bit;
        x2in : in bit;
	  	  yout : out bit);
	  end component;
	  
	  component AndGate is   --AND gate component
      port(x1,x2: in bit; y: out bit);
	  end component;
	  

	  component grpop is   --grpop component
	    port( gi,pi: in bit;
        gj,pj: in bit;
		  gk,pk: out bit);
	  end component;
	
	
	  begin
	  
	   for i in 0 to 15 loop    --pi's(XorGate)
		  Xor_instance: XorG
		   port map(x1n => A(i), x2in => B(i), yout => p(i));
		end loop;
	   
		for i in 0 to 15 loop   ----Gi's(AndGate)
	     And_instance: ANDGate
	      port map( x1 => A(i), x2 => B(i), y => g(i) );
		end loop;
		
		
		
		
		--stage#01
		g1(0) <= g(0);
		p1(0) <= p(0);
		for i in 0 to 14 loop
		  port map ( gi => g(i+1), pi => p(i+1), gj => g(i), pj => p(i), gk => g1(i+1), pk => p1(i+1) );
		end loop;
		
		--stage#02
		g2(0) <= g1(0);
		p2(0) <= p1(0);
		g2(1) <= g1(1);
		p2(1) <= p1(1);
		for i in 0 to 13 loop
		  port map ( gi => g1(i+2), pi => p1(i+2), gj => g1(i), pj => p1(i), gk => g2(i+2), pk => p2(i+2) );
		end loop;
		
		--stage#03
		for i in 0 to 3 loop
		  g3(i) <= g2(i); p3(i) <= p2(i);
		end loop;
		
		for i in 0 to 11 loop
		  port map ( gi => g2(i+4), pi => p2(i+4), gj => g2(i), pj => p2(i), gk => g3(i+4), pk => p3(i+4) );
		end loop;
		
		--stage#04
		for i in 0 to 7 loop
		  g4(i) <= g3(i); p4(i) <= p3(i);
		end loop;
		
		for i in 0 to 11 loop
		  port map ( gi => g3(i+8), pi => p3(i+8), gj => g3(i), pj => p3(i), gk => g4(i+8), pk => p4(i+8) );
		end loop;
		
		 
		
	   for j in 0 to 15 loop	
		  
		  XorS_instance: XorG
		   port map(x1in => p(i), x2in => g4(i), yout => ans(i));
		end loop;
		
		car <= g4(i) ;
		
end struc;
-----