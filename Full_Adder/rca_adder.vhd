--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity rca_adder is
port
(
	An, Bn : in std_logic_vector(4 downto 0);
	Sn : out std_logic_vector(4 downto 0);
	Cin0 : in std_logic;
	Cout : out std_logic
);
end rca_adder;

--define behaviour

architecture behaviour of rca_adder is
--signals
signal Cn, Sns : std_logic_vector(4 downto 0);
signal Dl, Ql : std_logic_vector(4 downto 0);

begin
	rca_addergen : for i in 0 to 3 generate
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
	Cout <= Cn(4);

end behaviour;