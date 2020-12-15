--testbench entity for ADDER_16

entity TB_ALU is
end TB_ALU;

architecture behaviour_TB_alu of TB_ALU is
	signal TB_in1, TB_in2: bit_vector(15 downto 0); --input vecs
	signal TB_s0, TB_s1: bit; --control inputs
	signal TB_ans: bit_vector(15 downto 0); --output sum
	signal TB_cout, TB_zero: bit; --output carry and zero bit
	
	component ALU is
		port(IN1, IN2: in bit_vector(15 downto 0);
			S0, S1: in bit;
			Z: out bit_vector(15 downto 0);
			Cout, zero_bit: out bit
			);
	end component;
	
	begin
	alu_inst: ALU --instance of adder
	port map(IN1=>TB_in1, IN2=>TB_in2, S0=>TB_s0, S1=>TB_s1,
	Z=>TB_ans, Cout=>TB_cout, zero_bit=>TB_zero);
	
	process --vary inputs
	begin
	
	TB_in1<="0000000000000000";
	TB_in2<="0000000000000000";
	TB_s0<='0';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1000000000000000";
	TB_in2<="1000000000000000";
	TB_s0<='0';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1000000000000000";
	TB_in2<="1111111111111111";
	TB_s0<='0';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1001000000000000";
	TB_in2<="0110111111111111";
	TB_s0<='0';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1111111111111111";
	TB_in2<="1111111111111111";
	TB_s0<='0';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="0000000000000000";
	TB_in2<="0000000000000000";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1000000000000000";
	TB_in2<="1000000000000000";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1111111111111111";
	TB_in2<="1000000000000000";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="0000000000000001";
	TB_in2<="0000000000000010";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1001000000000000";
	TB_in2<="0110111111111111";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="1111111111111111";
	TB_in2<="1111111111111111";
	TB_s0<='1';
	TB_s1<='0';
	wait for 5 ns;
	
	TB_in1<="0000000000000000";
	TB_in2<="0000000000000000";
	TB_s0<='0';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="0000000000000000";
	TB_in2<="1111111111111111";
	TB_s0<='0';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="1001000011111111";
	TB_in2<="0110111111111111";
	TB_s0<='0';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="1111111111111111";
	TB_in2<="1111111111111111";
	TB_s0<='0';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="0000000000000000";
	TB_in2<="0000000000000000";
	TB_s0<='1';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="0000000000000000";
	TB_in2<="1111111111111111";
	TB_s0<='1';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="1001000011111111";
	TB_in2<="0110111111111111";
	TB_s0<='1';
	TB_s1<='1';
	wait for 5 ns;
	
	TB_in1<="1111111111111111";
	TB_in2<="1111111111111111";
	TB_s0<='1';
	TB_s1<='1';
	wait for 5 ns;
	
	end process;
	
end behaviour_TB_alu;