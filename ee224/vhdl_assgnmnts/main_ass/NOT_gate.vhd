entity NOT_gate is
	port(IN00: in bit;
		OUT0: out bit);
end NOT_gate;

architecture arch_not of NOT_gate is
	begin
	OUT0<= not IN00;
end arch_not;