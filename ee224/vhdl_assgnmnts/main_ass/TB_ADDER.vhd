--testbench entity for ADDER_16

entity TB_ADDER is
end TB_ADDER;

architecture behaviour_TB_adder of TB_ADDER is
	signal TB_adder_in0, TB_adder_in1: bit_vector(15 downto 0); --input vecs
	signal TB_adder_cin: bit; --input carry
	signal TB_adder_sum: bit_vector(15 downto 0); --output sum
	signal TB_adder_cout, TB_adder_zero: bit; --output carry and zero bit
	
	component ADDER_16 is
		port (A, B : in bit_vector(15 downto 0);
			Cin : in bit;
			SUM : out bit_vector(15 downto 0);
			Cout, zero_bit: out bit
			);
	end component;
	
	begin
	adder_inst: ADDER_16 --instance of adder
	port map(A=>TB_adder_in0, B=>TB_adder_in1, Cin=>TB_adder_cin,
	SUM=>TB_adder_sum, Cout=>TB_adder_cout, zero_bit=>TB_adder_zero);
	
	process --vary inputs
	begin
	
	TB_adder_in0<="0000000000000001";
	TB_adder_in1<="0011111111111110";
	wait for 5 ns;
	
	TB_adder_in0<="0000000000000001";
	TB_adder_in1<="0011111111111111";
	wait for 5 ns;
	
	end process;
	
end behaviour_TB_adder;