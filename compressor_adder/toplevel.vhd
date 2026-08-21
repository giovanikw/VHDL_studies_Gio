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
		Sumout : out std_logic_vector(bits+2 downto 0)
	);
end toplevel;

architecture behaviour of toplevel is
	--full adder signals
	signal Cin : std_logic_vector(bits+1 downto 0);
	--compressor signals
	signal Cout : std_logic;
	signal Carrycomp : std_logic_vector(bits downto 0);
	signal Carryrecomb : std_logic_vector(bits downto 0);
	signal Sum : std_logic_vector(bits downto 0);
begin
	compressors : entity work.fourbit_comp_4_2
		port map(
			--inputs
			An => An,
			Bn => Bn,
			Cn => Cn,
			Dn => Dn,
			Cin0 => Cin0,
			--outputs
			Carry => Carrycomp,
			Sum => Sum,
			Cout => Cout
		);
		
		Sumout(0) <= Sum(0);
		Sumout(5) <= Carryrecomb(3);
		
	--half adder
	recomb0 : entity work.half_adder
	port map(
		A => Carrycomp(0),
		B => Sum(1),
		Sout => Sumout(1),
		Cout => Carryrecomb(0)
	);
	--fulladders	
	recomb1 : entity work.fulladder
		port map(
		A => Carrycomp(1),
		B => Sum(2),
		Sout => Sumout(2),
		Cin => Carryrecomb(0),
		Cout => Carryrecomb(1)
		);
	recomb2 : entity work.fulladder
		port map(
		A => Carrycomp(2),
		B => Sum(3),
		Sout => Sumout(3),
		Cin => Carryrecomb(1),
		Cout => Carryrecomb(2)
		);
	recomb3 : entity work.fulladder
		port map(
		A => Carrycomp(3),
		B => Cout,
		Sout => Sumout(4),
		Cin => Carryrecomb(2),
		Cout => Carryrecomb(3)
		);
end behaviour;