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
	clk, rst : in std_logic;
	Latchoutput : out std_logic
	
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

component flipflop is
	port
	(
		D, Clk, Rst : in std_logic;
		Q: out std_logic
	);
end component;


--signals
signal Cn : std_logic_vector(numofbits downto 0);
signal latchin, latchout : std_logic;


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

	
	flip_addergen : for i in 0 to numofbits-1 generate
			rca_addergen : entity work.flipflop
				port map
				(
					D => Cn(i),
					Q => Cn(i+1),
					Clk => clk,
					Rst => rst
				);
	end generate flip_addergen;
	
	
	-- flip_in : dlatchnew
	-- 	port map
	-- 	(
	-- 		D => latchin,
	-- 		Q => Cn(0),
	-- 		Clk => clk ,
	-- 		Rst => rst
	-- 	);
	

	-- flip_out : dlatchnew
	-- 	port map
	-- 	(
	-- 		D => Cn(4),
	-- 		Q => latchoutput,
	-- 		Clk => clk ,
	-- 		Rst => rst
	-- 	);
		
end behaviour;