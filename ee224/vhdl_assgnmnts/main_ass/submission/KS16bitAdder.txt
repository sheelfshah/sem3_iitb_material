entity KS16bitAdder is 
  port(A: in  bit_vector(15 downto 0);
       B: in bit_vector(15 downto 0);
		 cin: in bit;
		 ans: buffer bit_vector(15 downto 0);
		 cout: buffer bit;
		 zero: out bit);
end entity KS16bitAdder;
-------------
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
			 
	Orga: ORGate
		port map (x1 => gi,x2 => temp, y => gk  );
		
	Andgat: ANDGate
	   port map (x1 => pi,x2 => pj, y => pk  );

end grpfn;
-------------

architecture KS16bitAdder_bhv of KS16bitAdder is 
     signal g,p: bit_vector(0 to 15);
	  signal g1,g2,g3,g4,p1,p2,p3,p4: bit_vector(0 to 15);
	  signal c : bit_vector(0 to 15); --carry
	  signal temp1,temp2:  bit_vector(0 to 15);
	  signal carry:  bit_vector(0 to 16);
	  
	  component XorG is     --Xor component
	   port( x1in,x2in : in bit;
	  	      yout : out bit);
	  end component;
	  
	  component NotGate is 
	   port(x: in bit; y: out bit);
     end component;
	
	  component AndGate is   --AND gate component
      port(x1,x2: in bit; y: out bit);
	  end component;
	  
	  component ORGate is 
	   port(x1,x2: in bit; y: out bit);
     end component;

	  component grpop is   --grpop component
	    port( gi,pi: in bit;
        gj,pj: in bit;
		  gk,pk: out bit);
	  end component;
	
	
	  begin
	   XorGa:
	   for i in 0 to 15 generate    --pi's(XorGate)
		  Xor_instance: XorG
		   port map(x1in => A(i), x2in => B(i), yout => p(i));
		end generate XorGa;
	   
		Gi:
		for i in 0 to 15 generate   ----Gi's(AndGate)
	     And_instance: ANDGate
	      port map( x1 => A(i), x2 => B(i), y => g(i) );
		end generate Gi;
		
		
		
		
		--stage#01
		g1(0) <= g(0);
		p1(0) <= p(0);
		stg1:
		for i in 0 to 14 generate
		  prefixcomp: grpop
		  port map ( gi => g(i+1), pi => p(i+1), gj => g(i), pj => p(i), gk => g1(i+1), pk => p1(i+1) );
		end generate stg1;
		
		--stage#02
		g2(0) <= g1(0);
		p2(0) <= p1(0);
		g2(1) <= g1(1);
		p2(1) <= p1(1);
		stg2:
		for i in 0 to 13 generate
		  prefixcomp: grpop
		  port map ( gi => g1(i+2), pi => p1(i+2), gj => g1(i), pj => p1(i), gk => g2(i+2), pk => p2(i+2) );
		end generate stg2;
		
		--stage#03
		stg31:
		for i in 0 to 3 generate
		  g3(i) <= g2(i); p3(i) <= p2(i);
		end generate stg31;
		
		stg32:
		for i in 0 to 11 generate
		 prefixcomp: grpop
		  port map ( gi => g2(i+4), pi => p2(i+4), gj => g2(i), pj => p2(i), gk => g3(i+4), pk => p3(i+4) );
		end generate stg32;
		
		--stage#04
		stg41:
		for i in 0 to 7 generate
		  g4(i) <= g3(i); p4(i) <= p3(i);
		end generate stg41;
		
		stg42:
		for i in 0 to 7 generate
		 prefixcomp: grpop
		  port map ( gi => g3(i+8), pi => p3(i+8), gj => g3(i), pj => p3(i), gk => g4(i+8), pk => p4(i+8) );
		end generate stg42;
		
		 carry(0) <= cin;
      finalstg:---sum 
	   for j in 1 to 16 generate	
		  AndS_ins: ANDGate
		   port map( x1 => p4(j-1), x2 => cin, y => temp1(j-1) );
			
		  OrS_ins: ORGate
		   port map( x1 => g4(j-1), x2 => temp1(j-1), y => carry(j) );
		  
		  XorS_instance: XorG
		   port map(x1in => p(j-1), x2in => carry(j-1), yout => ans(j-1));
		end generate finalstg;
		
		cout <= carry(16);	--carry 
		------------------------
		--zero logic with repetitive OR and NOT at last
		Orz0_ins: ORGate
		   port map( x1 => ans(0), x2 => cout, y => temp2(0) );
			
		zlogic:
		  for q in 1 to 15 generate
		    Orz0_ins: ORGate
		     port map( x1 => temp2(q-1), x2 => ans(q), y => temp2(q) );
		  end generate zlogic;
	
		Not_insta: NotGate
		 port map(x => temp2(15), y => zero);
		------------------------
end KS16bitAdder_bhv;