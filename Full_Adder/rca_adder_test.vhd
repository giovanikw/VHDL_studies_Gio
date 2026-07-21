--libs

library ieee;
use ieee.std_logic_1164.all;

--define entity

entity rca_adder_test is

	generic (numofbits : integer := 4);
	
	port
	(
		Dataintl, CLK, RST : inout std_logic
	);

end rca_adder_test;


--define behaviour
architecture behaviour of rca_adder_test is


--component
component rca_adder is
	port
	(
		An, Bn : in std_logic_vector(numofbits-1 downto 0);
		Sn : out std_logic_vector(numofbits-1 downto 0);
		Cin0 : in std_logic;
		Soutn : out std_logic
	);
end component;

component shiftregister is
	port
	(
		Datain, Clk, Rst : in std_logic
	);
end component;
	
--signals
signal Din : std_logic;

begin
	
	
end behaviour;