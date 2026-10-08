library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity toplevel is
	port(
		--inputs
		Target : in std_logic_vector(7 downto 0);
		CLK : in std_logic;
		reset : in std_logic;
		--outputs
		Saida : out std_logic_vector(3 downto 0)

		);
end toplevel;

architecture behaviour of toplevel is

begin
	test_root : process(CLK)
	--declarative part
		variable root: std_logic_vector(3 downto 0);
		variable odd : std_logic_vector(4 downto 0);
		variable S : std_logic_vector(7 downto 0);
	begin
		if (reset = '1') then 
			root := "0001";
			odd := "00001";
			S :="00000001";
		else if rising_edge(CLK) then
			if Target = S then
				Saida <= root;
			else
				root := root + 1;
				odd := odd + 2;
				S := S + odd;
			end if;
		end if;
		end if;
	end process test_root;

end behaviour;
