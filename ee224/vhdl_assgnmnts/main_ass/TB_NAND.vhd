--testbench entity for NAND

entity TB_NAND is
end TB_NAND;

architecture behaviour_TB_nand of TB_NAND is
	signal TB_nand_in0, TB_nand_in1: bit_vector(15 downto 0); --input vars
	signal TB_nand_out: bit_vector(15 downto 0); --output nand
	signal TB_nand_zero: bit;
	
	component NAND_gate is
		port( A, B: in bit_vector(15 downto 0);
			Z: out bit_vector(15 downto 0);
			zero_bit: out bit
			);
	end component;
	
	begin
	nand_inst: NAND_gate --instance of nand
	port map(A=>TB_nand_in0, B=>TB_nand_in1,
	Z=>TB_nand_out, zero_bit=>TB_nand_zero);
	
	process --vary inputs
	begin
	
	TB_nand_in0<="0011001100110011";
	TB_nand_in1<="0101010101010101";
	wait for 5 ns;
	
	TB_nand_in0<="1111111111111111";
	TB_nand_in1<="1111111111111111";
	wait for 5 ns;
	
	end process;
	
end behaviour_TB_nand;