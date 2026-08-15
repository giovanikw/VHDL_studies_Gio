--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity

entity mux is 
port(
		A, B, Sel: in std_logic;
		Q: out std_logic);

end mux;

--define behaviour

architecture behaviour of mux is

begin
    Q <= A when sel = '0' else B; 
end behaviour;