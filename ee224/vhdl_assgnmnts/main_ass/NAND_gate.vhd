entity NAND_gate is 
	port (A ,B : in bit_vector(15 downto 0);
			Z : out bit_vector(15 downto 0);
			zero_bit: out bit
		);
end NAND_gate;

architecture behaviour_nand of NAND_gate is
	signal temp: bit_vector(15 downto 0);
	
	begin
		temp(0)<='1';
		--for each bit, set output bit as (a nand b)
		nand_output :
		for i in 0 to 15 generate
			Z(i) <= A(i) nand B(i);
		end generate nand_output;
		
		zero_gen:
		for i in 1 to 15 generate
			temp(i) <= temp(i-1) and not(A(i) nand B(i));
		end generate zero_gen;
		
		zero_bit<=temp(15);
	
end behaviour_nand;