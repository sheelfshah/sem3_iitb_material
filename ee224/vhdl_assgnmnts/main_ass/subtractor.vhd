--2s compliment subtarctor---
--using fast adder---
entity subtractor is
	port (A,B : in bit_vector(15 downto 0);
			O : out bit_vector(15 downto 0));
end entity subtractor;

---------------------------------
architecture bh of subtractor is
	signal Z:bit_vector(15 downto 0);
	component adder is 
	port (I1,I2 : in bit_vector(15 downto 0);
			Cin : in bit;
			S : out bit_vector(15 downto 0));
	end component adder;
	component ngate is
		port(A: in bit; Y: out bit);
	end component ngate;
	begin
		invert:
			for i in 0 to 15 generate
			Ivt: ngate port map(B(i),Z(i));
		end generate invert;
		
		U0 : adder port map(A,Z,'1',O);
end bh;
 