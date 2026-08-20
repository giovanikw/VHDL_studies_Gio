--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity
entity toplevel is
port(
		--inputs
		A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		D : in std_logic;
		Cin : in std_logic;
		--outputs
		Cout : out std_logic;
		Carry : out std_logic;
		Sum : out std_logic
	);

end toplevel;

architecture behaviour of toplevel is
		signal Xor1 : std_logic;
		signal Xor2 : std_logic;
		signal Xor3 : std_logic;
		signal Xor4 : std_logic;
begin
-- xor stages
	Xor1 <= A xor B;
	Xor2 <= C xor D;
	Xor3 <= Xor1 xor Xor2;
	Xor4 <= Cin xor Xor3;
	
	mux1 : entity work.mux
		port map(
			A => A,
			B => C,
			Sel => Xor1,
			Q => Cout
		);
	mux2 : entity work.mux
		port map(
			A => D,
			B => Cin,
			Sel => Xor3,
			Q => Carry
		);
	Sum <= Xor4;
end behaviour;