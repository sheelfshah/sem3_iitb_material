entity NAND_gate is 
	port( I0, I1: in bit;
			O: out bit);
end NAND_gate;

architecture behaviour_nand of NAND_gate is
	signal T0: bit; --temp var
	component NOT_gate is
		port(IN00: in bit;
			OUT0: out bit);
	end component;

	component AND_gate is
		port(IN10, IN11: in bit;
			OUT1: out bit);
	end component;
	
	begin
	-- O = (I0.I1)'
	input_and: AND_gate port map(I0, I1, T0); --T0 = I0.I1
	invert_and: NOT_gate port map(T0, O); --0 = T0'
	
end behaviour_nand;