--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity
entity pipo_register is
	port
	(
		D : in std_logic_vector(4 downto 0);
		Q: out std_logic_vector(4 downto 0);
		Clk, Rst : in std_logic
	);
end pipo_register;

--define behaviour
architecture pipo_registerarch of pipo_register is
begin
	pipo_gen_loop : for i in 0 to 3 generate
		pipo_gen : entity work.dflipflop
			port map
			(
				D => D(i),
				Q => Q(i),
				clk => Clk,
				rst => Rst
			);
		end generate pipo_gen_loop;
end architecture pipo_registerarch;