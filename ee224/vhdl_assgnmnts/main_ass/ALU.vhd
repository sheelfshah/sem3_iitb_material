entity ALU is
	port(IN00: in bit; --temporary
		OUT0: out bit);
end ALU;

architecture behaviour_alu of ALU is
	begin
	OUT0<= not IN00;
end behaviour_alu;