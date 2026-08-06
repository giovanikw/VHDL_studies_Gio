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
	clk, rst, FFinp : in std_logic;
	FFoutp : out std_logic
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
signal Cin : std_logic_vector(numofbits downto 0);
signal FFin, FFout : std_logic_vector(numofbits+2 downto 0);
--signal latchin, latchout : std_logic;


begin

	flip_addergen : for i in 0 to numofbits+1 generate
			rca_addergen : entity work.flipflop
				port map
				(
					D => FFin(i),
					Q => FFout(i),
					Clk => clk,
					Rst => rst
				);
	end generate flip_addergen;
	
	rca_addergen : for i in 0 to numofbits-1 generate
			rca_addergen : entity work.fulladder
				port map
				(
					A => An(i),
					B => Bn(i),
					Sout => Sn(i),
					
					Cin => FFout(i),
					Cout => FFin(i+1)
				);
	end generate rca_addergen;	
	
	FFin(0) <= FFinp;
	FFoutp <= FFout(4);
end behaviour;