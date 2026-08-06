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
	Cin0 : in std_logic;
	Soutn : out std_logic
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

--signals
signal Cn : std_logic_vector(numofbits downto 0);


begin

	rca_addergen : for i in 0 to numofbits-1 generate
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
	Cn(0) <= Cin0;
	Soutn <= Cn(4);

end behaviour;