--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity fulladder is
port
(
	A, B, Cin : in std_logic;
	Sout, Cout : out std_logic
);

end fulladder;

architecture behaviour of fulladder is
signal s1, s2, s3 : std_logic;

begin
	
	s1 <= A xor B;
	s2 <= Cin and s1;
	s3 <= A and B;
	Sout <= s1 xor Cin;
	Cout <= s2 or s3;
	
end behaviour;