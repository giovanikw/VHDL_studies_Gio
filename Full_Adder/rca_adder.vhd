--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity rca_adder is

generic (numofbits : integer := 4);

port
(
	An, Bn : in std_logic_vector(numofbits-1 downto 0);
	Sn : out std_logic_vector(numofbits-1 downto 0);
	Cin0, clk, rst : in std_logic;
	Cout, Sout : out std_logic
);

end rca_adder;

--define behaviour

architecture behaviour of rca_adder is

--component

component fulladder is
	port
	(
		A, B, Cin : in std_logic;
		Sout, Cout : out std_logic
	);
end component;

component dlatchnew is
	port
	(
		D, Clk, Rst : in std_logic;
		Q: out std_logic
	);
end component;

--signals
signal Cn : std_logic_vector(numofbits+1 downto 0);
signal Dl, Ql : std_logic_vector(4 downto 0);

begin
	
	rca_dlatchgen : for i in 0 to 4 generate
		rca_dlatchgen : entity work.dlatchnew
			port map
			(
				D => Dl(i),
				Q => Ql(i),
				Clk => clk,
				Rst	=> rst
			);
	end generate rca_dlatchgen;

	rca_addergen : for i in 1 to numofbits-2 generate
			rca_addergen : entity work.fulladder
				port map
				(
					A => An(i),
					B => Bn(i),
					Sout => Sn(i),
					Cin => Cn(i),
					Cout => Cn(i+1)
				);
	end generate rca_addergen;

	rca_first_adder : entity work.fulladder
		port map
		(
			A => Ql(0),
			B => Ql(1),
			Sout => Sn(0),
			Cin => Ql(2),
			Cout => Cn(1)
		);

	rca_last_adder : entity work.fulladder
		port map
		(
			A => An(numofbits-1),
			B => Bn(numofbits-1),
			Sout => Dl(numofbits-1),
			Cin => Cn(numofbits-1),
			Cout => Dl(4)
		);


	Dl(0) <= An(0);
	Dl(1) <= Bn(0);
	Dl(2) <= Cin0;

	Sout <= Ql(numofbits-1);
	Cout <= Ql(numofbits);

end behaviour;