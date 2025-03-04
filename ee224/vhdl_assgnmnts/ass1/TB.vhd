--testbench entity

entity TB is
end TB;

architecture behaviour_TB of TB is
	signal TB0, TB1, TB2, TB3: bit; --input vars
	signal TB_out: bit; --output var
	
	component xor4 is
		port (IN1, IN2, IN3, IN4: in bit;
				OUT1: out bit);
	end component;
	
	begin
	x4: xor4 --instance of xor4
	port map(IN1=>TB0, IN2=>TB1, IN3=>TB2, IN4=>TB3, OUT1=>TB_out);
	
	process --vary inputs
	begin
	
	TB0<='0';
	TB1<='0';
	TB2<='0';
	TB3<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='0';
	TB2<='0';
	TB3<='1';
	wait for 5 ns;

	TB0<='0';
	TB1<='0';
	TB2<='1';
	TB3<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='0';
	TB2<='1';
	TB3<='1';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='0';
	TB3<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='0';
	TB3<='1';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='1';
	TB3<='0';
	wait for 5 ns;

	TB0<='0';
	TB1<='1';
	TB2<='1';
	TB3<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='0';
	TB3<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='0';
	TB3<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='1';
	TB3<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='0';
	TB2<='1';
	TB3<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='0';
	TB3<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='0';
	TB3<='1';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='1';
	TB3<='0';
	wait for 5 ns;

	TB0<='1';
	TB1<='1';
	TB2<='1';
	TB3<='1';
	wait for 5 ns;
	
	end process;
	
end behaviour_TB;