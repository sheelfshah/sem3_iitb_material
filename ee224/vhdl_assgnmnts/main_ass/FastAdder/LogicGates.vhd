entity LogicGates is 
end entity LogicGates;
-- and gate
entity ANDGAte is 
 port(x1,x2: in bit; y: out bit);
end entity ANDGAte;
 
 Architecture AND_function of ANDGAte is
	begin
		y <= x1 And x2 ;
end AND_function;
------------
--or gate
entity ORGate is 
 port(x1,x2: in bit; y: out bit);
end entity ORGate;
 
 architecture OR_function of ORGate is
	begin
		y <= x1 or x2 ;
end OR_function;
-------------
--not gate
entity NotGate is 
 port(x: in bit; y: out bit);
end entity NotGate;
 
 architecture Not_function of NotGate is
	begin
		y <= not x;
end Not_function;
-------------
--nand gate
entity NANDGate is 
 port(x1,x2: in bit; y: out bit);
end entity NANDGate;
architecture NAND_function of NANDGate is
   signal ia : bit;
	begin
		ia <= x1 and x2 ;
		y <= not ia ;
end NAND_function;
-----------
--xorgate
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
------------
architecture LogicGates_bhv of LogicGates is
  begin
end LogicGates_bhv;