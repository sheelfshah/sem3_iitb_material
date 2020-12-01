entity xor4 is
port (IN1, IN2, IN3, IN4: in bit;
		OUT1: out bit);
end xor4;

architecture behaviour_xor4 of xor4 is
	signal U, V, W, X, Y, Z: bit; --temp vars(created in robdd)
	
	component MUX is --creating MUX component with S as control
		port( I0, I1, S: in bit;
			O: out bit);
	end component;
	
	begin
	--using robdd to get temporary variables via MUXes
	
	m1: MUX
	port map(I0=>'0', I1=>'1', S=>IN4, O=>U);
	
	m2: MUX
	port map(I0=>'1', I1=>'0', S=>IN4, O=>V);
	
	m3: MUX
	port map(I0=>U, I1=>V, S=>IN3, O=>W);
	
	m4: MUX
	port map(I0=>V, I1=>U, S=>IN3, O=>X);
	
	m5: MUX
	port map(I0=>W, I1=>X, S=>IN2, O=>Y);
	
	m6: MUX
	port map(I0=>X, I1=>W, S=>IN2, O=>Z);
	
	m7: MUX
	port map(I0=>Y, I1=>Z, S=>IN1, O=>OUT1);
	
end behaviour_xor4;
	