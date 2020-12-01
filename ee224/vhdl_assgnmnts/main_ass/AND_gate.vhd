entity AND_gate is
	port(IN10, IN11: in bit;
		OUT1: out bit);
end AND_gate;

architecture arch_and of AND_gate is
	begin
	OUT1<= IN10 and IN11;
end arch_and;