--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity

entity flipflop is 
port(
		D, Clk, Rst : in std_logic;
		Q: out std_logic);

end flipflop;

--define behaviour

architecture flipflopArch of flipflop is

begin

	flipflopnewClk : process(Clk, Rst)
	begin
		if Rst = '1' then
			Q<= '0';
		elsif rising_edge(Clk) then
			Q <= D;
		end if;
end process;	
		
end flipflopArch;