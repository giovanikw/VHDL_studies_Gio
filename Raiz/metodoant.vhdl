library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity metodoant is
	port(
		--inputs
		Target : in std_logic_vector(7 downto 0);
		CLK : in std_logic;
		reset : in std_logic;
		--outputs
		Saida : out std_logic_vector(3 downto 0);
    Somatorio : out std_logic_vector(7 downto 0)
		);
end metodoant;

architecture behaviour of metodoant is

begin
	test_root : process(CLK)
	--declarative part
		variable r: std_logic_vector(3 downto 0);
		variable temp : std_logic_vector(3 downto 0);
		variable S : std_logic_vector(7 downto 0);
	begin
		if (reset = '1') then 
			r := "0001";
			temp := "0001";
			S :="00000001";
      else if rising_edge(CLK) then
			if S <= Target then
				Saida <= r;
			else
        temp := r;
				r := r + 1;
				S := S + r + temp;
        Somatorio <= S;
      end if;
		end if;
		end if;
	end process test_root;

end behaviour;
