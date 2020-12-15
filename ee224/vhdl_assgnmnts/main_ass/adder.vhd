--brent-stone--
--fast adder--
entity adder is
	port (I1,I2 : in bit_vector(15 downto 0);
			Cin : in bit;
			S : out bit_vector(15 downto 0));
end entity adder;
------------------------------------
entity agate is
	port(A, B: in bit; Y: out bit);
end entity agate;

architecture AndArc of agate is
	begin
		Y <= A and B;
	end AndArc;
-------------------------------------	
entity ogate is
	port(A, B: in bit; Y: out bit);
end entity ogate;

architecture OrArc of ogate is
	begin
		Y <= A or B;
	end OrArc;
--------------------------------	
entity ngate is
	port(A: in bit; Y: out bit);
end entity ngate;

architecture NotArc of ngate is
	begin
		Y <= not A;
	end NotArc;
-------------------------------
entity xgate is
	port(A,B : in bit; S: out bit);
end entity xgate;

architecture XOarc of xgate is
	begin
	 S<= A xor B;
end XOarc;
-------------------------------
entity carrys is
	port(A,B,C : in bit; X : out bit);
end entity carrys;

architecture Carc of carrys is
	signal temp: bit;
	component xgate is
		port (A,B : in bit; S: out bit);
	end component xgate;
	component ogate is
		port (A,B : in bit; Y: out bit);
	end component ogate;
	begin 
		u0: xgate port map(B,C,temp);
		u1: ogate port map(A,temp,X);
end Carc;
		
---------------------------------------

entity PFA is
	port( Gcurr,Gprev,Pcurr,Pprev : in bit;
			Gout, Pout : out bit);
end entity PFA;

architecture working of PFA is
	signal p : bit ;
	component agate is
		port(A, B: in bit; Y: out bit);
	end component agate;

   component ogate is
		port(A, B: in bit; Y: out bit);
	end component ogate;

   component ngate is
		port(A: in bit; Y: out bit);
	end component ngate;
	begin
	u0 : agate port map(Gprev,Pcurr,p);
	u1 : ogate port map(Gcurr,p,Gout);
	u2 : agate port map(Pcurr,Pprev,Pout);
end working;  

-------------------------------------

entity send is 
	port( Gcurr,Pcurr : in bit;
			Gout, Pout :  out bit);
end entity send;

architecture buff of send is
begin 
	Gout <= Gcurr;
	Pout <= Pcurr;
end buff;
--------------------------------------
architecture behaviour of adder is

	signal A1, A2, A3, A4 : bit_vector(15 downto 0);
	signal B1, B2, B3, B4 : bit_vector(15 downto 0);
	signal C : bit_vector(15 downto 0);
	
-------4 level required----------------

	component PFA is
		port( Gcurr,Gprev,Pcurr,Pprev : in bit;
			Gout, Pout : out bit);
	end component PFA;
	
	component send is 
		port( Gcurr,Pcurr : in bit;
			Gout, Pout : out bit);
	end component send;

	component xgate is
		port(A, B: in bit; S: out bit);
	end component xgate; 
	
	component carrys is
		port(A,B,C: in bit; X: out bit);
	end component carrys;

-------------------------------------

   begin
		copy1: send
		port map(I1(0),I2(0),A1(0),B1(0));
-------------------------------------
	
		l1:
		
		for i in 1 to 15 generate
			node1: PFA port map(I1(i),I1(i-1),I2(i),I2(i-1),A1(i),B1(i));
		end generate l1;

------------end level1--------------------

		copy2_1: send port map(A1(0),B1(0),A2(0),B2(0));
		copy2_2: send port map(A1(1),B1(1),A2(1),B2(1));
--------------------------------------------
		l2:
			for i in 2 to 15 generate
				node2 : PFA port map(A1(i),A1(i-2),B1(i),B1(i-2),A2(i),B2(i));
			end generate l2;
	
----------------end level2------------------

		copy3 :
			for i in 0 to 3 generate
				transfer3 : send port map(A2(i),B2(i),A3(i),B3(i));
			end generate copy3;
-------------------------------------------
	
		l3 :
			for i in  4 to 15 generate
				node3 : PFA port map(A1(i),A1(i-2),B1(i),B1(i-2),A2(i),B2(i));
			end generate l3;

----------------end level 3-----------------

		copy4 :
			for i in 0 to 7 generate
				transfer4 : send port map(A3(i),B3(i),A4(i),B4(i));
			end generate copy4;
-------------------------------------------------
		level4:
			for i in 8 to 15 generate
				node4 : PFA port map(A3(i),A3(i-8),B3(i),B3(i-8),A4(i),B4(i));
			end generate level4;
		
---------------end level 4----------------
		carry:
			for i in 0 to 15 generate
				carryi: carrys port map(A4(i),B4(i),Cin);
			end generate carry;
		 
		intermediate: xgate port map(cin,B4(0),S(0));
-------------------------------------------		
		add:
			for i in 1 to 15 generate
				sum: xgate port map(B4(i),C(i-1),S(i));
			end generate add;
end behaviour;
