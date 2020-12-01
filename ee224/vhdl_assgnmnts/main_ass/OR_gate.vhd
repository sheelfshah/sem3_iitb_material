entity OR_gate is
	port(IN20, IN21: in bit;
		OUT2: out bit);
end OR_gate;

architecture arch_or of OR_gate is
	begin
	OUT2<= IN20 or IN21;
end arch_or;