--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity half_adder is
port
(
	A, B : in std_logic;
	Sout, Cout : out std_logic
);

end half_adder;

architecture behaviour of half_adder is

begin
	
	Sout <= A xor B;
	Cout <= A and B;
	
end behaviour;