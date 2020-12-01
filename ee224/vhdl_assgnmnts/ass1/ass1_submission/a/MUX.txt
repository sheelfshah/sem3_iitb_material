entity MUX is --MUX entity with S as control input
	port( I0, I1, S: in bit;
			O: out bit);
end MUX;

--creating not, and and or entities
entity NOT_gate is
	port(IN00: in bit;
		OUT0: out bit);
end NOT_gate;

entity AND_gate is
	port(IN10, IN11: in bit;
		OUT1: out bit);
end AND_gate;

entity OR_gate is
	port(IN20, IN21: in bit;
		OUT2: out bit);
end OR_gate;

architecture arch0 of NOT_gate is
	begin
	OUT0<= not IN00;
end arch0;

architecture arch1 of AND_gate is
	begin
	OUT1<= IN10 and IN11;
end arch1;

architecture arch2 of OR_gate is
	begin
	OUT2<= IN20 or IN21;
end arch2;



architecture behaviour_mux of MUX is
	signal T0, T1, T2: bit; --temp vars
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
	-- O = S'.I0 + S.I1
	s_bar: NOT_gate port map(S, T0); --T0 = S'
	first_and: AND_gate port map(T0, I0, T1); --T1 = S'.I0
	second_and: AND_gate port map(S, I1, T2); --T2 = S.I1
	final_or: OR_gate port map(T1, T2, O); --O = S'.I0 + S.I1
	
end behaviour_mux;
