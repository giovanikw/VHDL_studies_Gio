--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity
entity compressor3_2 is 
port(
		A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		Carry : out std_logic;
		Sum : out std_logic
	);

end compressor3_2;

--define behaviour
	architecture behaviour of compressor3_2 is
	
	signal Xor1: std_logic;
	signal Xor2 : std_logic;

	begin
		Xor1 <= A xor B;
		Xor2 <= Xor1 xor C;
		compressor : entity work.mux
			port map(
				A => A,
				B => C,
				Sel => Xor1,
				Q => Carry
			);
		Sum <= Xor2;
end behaviour;