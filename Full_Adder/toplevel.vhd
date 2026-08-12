--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity
entity toplevel is
	port
	(
		clk : in std_logic;
		rst : in std_logic;
		--Input
		An : in std_logic_vector(3 downto 0);
		Bn : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		--Outs
		Sn: out std_logic_vector(3 downto 0);
		Cout : out std_logic
	);
end toplevel;

--define behaviour
architecture toplevelarch of toplevel is
signal QFFa : std_logic_vector(3 downto 0);
signal QFFb : std_logic_vector(3 downto 0);
signal DFFsout : std_logic_vector(3 downto 0);
signal FFCinp, FFCoutp : std_logic;

begin
		FFa : entity work.pipo_register
			port map(
				Clk => clk,
				Rst => rst,
				D(0) => An(0),
				D(1) => An(1),
				D(2) => An(2),
				D(3) => An(3),
				Q(0) => QFFa(0),
				Q(1) => QFFa(1),
				Q(2) => QFFa(2),
				Q(3) => QFFa(3)
			);
		
		FFb : entity work.pipo_register
			port map(
				Clk => clk,
				Rst => rst,
				D(0) => Bn(0),
				D(1) => Bn(1),
				D(2) => Bn(2),
				D(3) => Bn(3),
				Q(0) => QFFb(0),
				Q(1) => QFFb(1),
				Q(2) => QFFb(2),
				Q(3) => QFFb(3)
				);
		
		DFFs : entity work.pipo_register
			port map(
				Clk => clk,
				Rst => rst,
				D(0) => DFFsout(0),
				D(1) => DFFsout(1),
				D(2) => DFFsout(2),
				D(3) => DFFsout(3),
				Q(0) => Sn(0),
				Q(1) => Sn(1),
				Q(2) => Sn(2),
				Q(3) => Sn(3)
			);
		FFcin : entity work.dflipflop
			port map(
				clk => clk,
				rst => rst,
				D => Cin,
				Q => FFcinp
			);
		FFcout : entity work.dflipflop
			port map(
				clk => clk,
				rst => rst,
				D => FFCoutp,
				Q => Cout
			);		
		RCA : entity work.rca_adder
			port map(
				An(0) => QFFa(0),
				An(1) => QFFa(1),
				An(2) => QFFa(2),
				An(3) => QFFa(3),
				Bn(0) => QFFb(0),
				Bn(1) => QFFb(1),
				Bn(2) => QFFb(2),
				Bn(3) => QFFb(3),
				Sn(0) => DFFsout(0),
				Sn(1) => DFFsout(1),
				Sn(2) => DFFsout(2),
		      Sn(3) => DFFsout(3),
				Cin0 => FFcinp,
				Cout => FFCoutp
				);
end architecture toplevelarch;