--libs
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity
entity toplevel is generic(bits: integer := 3);
port(
		--inputs
		An : in std_logic_vector(bits downto 0);
		Bn : in std_logic_vector(bits downto 0);
		Cn : in std_logic_vector(bits downto 0);
		Dn : in std_logic_vector(bits downto 0);
		Cin0 : in std_logic;
		--outputs
		Carry : out std_logic_vector(bits downto 0);
		Sum : out std_logic_vector(bits downto 0);
		Cout : out std_logic;
	);
end toplevel;

architecture behaviour of toplevel is
	signal Cin : std_logic_vector(bits+1 downto 0);
begin
	comp : for i in 0 to bits generate
		comp : entity work.compressor_4_2
			port map(
			A => An(i),
			B => Bn(i),
			C => Cn(i),
			D => Dn(i),
			Cin => Cin(i),
			--outputs
			Cout => Cin(i+1),
			Carry => Carry(i),
			Sum => Sum(i)
			);
	end generate comp;
	Cin(0) <= Cin0;
	Cout <= Cin(4);
end behaviour;