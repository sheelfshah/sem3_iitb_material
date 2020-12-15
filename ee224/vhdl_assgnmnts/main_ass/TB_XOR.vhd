--testbench entity for XOR

entity TB_XOR is
end TB_XOR;

architecture behaviour_TB_xor of TB_XOR is
	signal TB_xor_in0, TB_xor_in1: bit_vector(15 downto 0); --input vars
	signal TB_xor_out: bit_vector(15 downto 0); --output var
	signal TB_xor_zero: bit;
	
	component XOR_gate is
		port( A, B: in bit_vector(15 downto 0);
			Z: out bit_vector(15 downto 0);
			zero_bit: out bit
			);
	end component;
	
	begin
	xor_inst: XOR_gate --instance of xor
	port map(A=>TB_xor_in0, B=>TB_xor_in1,
	Z=>TB_xor_out, zero_bit=>TB_xor_zero);
	
	process --vary inputs
	begin
	
	TB_xor_in0<="0011001100110011";
	TB_xor_in1<="0101010101010101";
	wait for 5 ns;
	
	TB_xor_in0<="1111111111111111";
	TB_xor_in1<="1111111111111111";
	wait for 5 ns;
	
	end process;
	
end behaviour_TB_xor;