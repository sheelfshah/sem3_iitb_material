--testbench entity

entity TB2 is
end TB2;

architecture behaviour_TB2 of TB2 is
	signal TB0, TB1, TB2: bit; --input vars
	signal TB_out: bit; --output var
	
	component MUX is
		port (I0, I1, S: in bit;
				O: out bit);
	end component;
	
	begin
	m: MUX --instance of xor4
	port map(I0=>TB0, I1=>TB1, S=>TB2, O=>TB_out);
	
	process --vary inputs
	begin
	
	TB0<='0';
	TB1<='0';
	TB2<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='0';
	TB2<='1';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='1';
	wait for 5 ns;
	
	end process;
	
end behaviour_TB2;