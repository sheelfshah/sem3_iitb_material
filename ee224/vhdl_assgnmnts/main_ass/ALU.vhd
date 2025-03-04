entity ALU is
	port(IN1, IN2: in bit_vector(15 downto 0);
		S0, S1: in bit;
		Z: out bit_vector(15 downto 0);
		Cout, zero_bit: out bit
		);
end ALU;

architecture behaviour_alu of ALU is
	--temp vars
	signal Z_nand, Z_xor, Z_add, Z_sub,
	in2_inv, temp_add, temp_sub: bit_vector(15 downto 0);
	signal Cout_nand, Cout_xor, Cout_add,
	Cout_sub, Cout_sub_temp, zero_nand, zero_xor,
	zero_add, zero_sub, temp_zero1: bit;
	signal temp_zero2: bit_vector(15 downto 0);
	
	component NAND_gate is
		port (A ,B : in bit_vector(15 downto 0);
			Z : out bit_vector(15 downto 0);
			zero_bit: out bit
		);
	end component;
	
	component XOR_gate is
		port (A ,B : in bit_vector(15 downto 0);
			Z : out bit_vector(15 downto 0);
			zero_bit: out bit
		);
	end component;
	
	component KS16bitAdder is
		port (A,B : in bit_vector(15 downto 0);
			Cin : in bit;
			ans: buffer bit_vector(15 downto 0);
		   cout: buffer bit;
		   zero: out bit);
	end component;
	
	begin
	
	Cout_nand<='0';
	Cout_xor<='0';
	
	nand_part: NAND_gate
	port map(IN1, IN2, Z_nand, zero_nand);
	
	xor_part: XOR_gate
	port map(IN1, IN2, Z_xor, zero_xor);
	
	add_part: KS16bitAdder
	port map(IN1, IN2, '0', Z_add, Cout_add, zero_add);
	
	in2_inverter:
		for i in 0 to 15 generate
			in2_inv(i) <= not(IN2(i));
		end generate in2_inverter;
	
	sub_part: KS16bitAdder
	port map(IN1, in2_inv, '1', Z_sub, Cout_sub_temp, temp_zero1);
	
	temp_zero2(0)<='1' and Cout_sub_temp and (not Z_sub(0));
	
	zero_sub_gen:
	for i in 1 to 15 generate
		temp_zero2(i) <= temp_zero2(i-1) and (not Z_sub(i));
	end generate zero_sub_gen;
	
	zero_sub<=temp_zero2(15);
	
	Cout_sub<=not Cout_sub_temp;
	
	Z<= Z_nand when (S1 and (not S0))='1' else
		 Z_xor when (S1 and S0)='1' else
		 Z_add(15 downto 0) when ((not S1) and (not S0))='1' else
		 Z_sub(15 downto 0);
		  
	zero_bit<= zero_nand when (S1 and (not S0))='1' else
	           zero_xor when (S1 and S0)='1' else
		        zero_add when ((not S1) and (not S0))='1' else
		        zero_sub;
				  
	Cout<= Cout_nand when (S1 and (not S0))='1' else
	       Cout_xor when (S1 and S0)='1' else
		    Cout_add when ((not S1) and (not S0))='1' else
		    Cout_sub;
				  
	
end behaviour_alu;