--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity rca_adder is

generic (numofbits : integer := 4);

port
(
	An, Bn : in std_logic_vector((2*numofbits)-1 downto 0);
	S0 : in std_logic_vector(numofbits-1 downto 0);
);

end rca_adder;

--define behaviour

architecture behaviour of rca_adder is

component fullader is
	port
	(
		A, B, Cin : in std_logic;
		Sout, Cout : out std_logic
	);
	
end component;

--signals
signal Cn : inout std_logic_vector(numofbits);

begin

	rca_addergen : for i in 0 to numofbits-1 generate
			rca_addergen : entity work.fullader
				port map


end behaviour;