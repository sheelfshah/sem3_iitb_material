entity XOR_gate is 
	port( I0, I1: in bit;
			O: out bit);
end XOR_gate;

architecture behaviour_xor of XOR_gate is
	signal T0, T1, T2, T3: bit; --temp vars
	component NOT_gate is
		port(IN00: in bit;
			OUT0: out bit);
	end component;

	component AND_gate is
		port(IN10, IN11: in bit;
			OUT1: out bit);
	end component;
	
	component OR_gate is
		port(IN20, IN21: in bit;
			OUT2: out bit);
	end component;
	
	begin
	-- O = I0.I1' + I0'.I1
	invert_I0: NOT_gate port map(I0, T0); --T0=I0'
	invert_I1: NOT_gate port map(I1, T1); --T1=I1'
	first_and: AND_gate port map(I0, T1, T2); --T2 = I0.I1'
	second_and: AND_gate port map(T0, I1, T3); --T3 = I0'.I1
	final_or: OR_gate port map(T2, T3, O); --0 = T2 + T3
	
end behaviour_xor;