--libs/
library ieee;
use ieee.std_logic_1164.all;

--define entity

entity shiftregister is 
generic(
	bitsinreg : integer := 4);
	
	port(
			Datain, CLK, RST : in std_logic
		);

end shiftregister;

--define behaviour

architecture shiftregarch of shiftregister is
component dlatchnew is
	port (
		D, Clk, Rst : in std_logic;
		Q: out std_logic);
end component;
		
--signals

--signal Ds : std_logic_vector(bitsinreg-1 downto 0);
--signal Qs : std_logic_vector(bitsinreg-1 downto 0);
signal Clks, Rsts, Datains : std_logic;
signal Carry : std_logic_vector(bitsinreg downto 0);

begin
	
	latchgen : for i in 0 to bitsinreg-1 generate
		latchgen : entity work.dlatchnew
			port map(
					D => Carry(i),
					Q => Carry(i+1),
					Clk => CLK,
					Rst => RST);
	end generate latchgen;
	Carry(0) <= Datain;

end shiftregarch;