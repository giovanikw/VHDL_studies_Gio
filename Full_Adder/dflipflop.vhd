library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is
    port(
        D, clk, rst : in  std_logic;
        Q : out std_logic
    );
end entity dflipflop;

architecture behavioral of dflipflop is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            Q <= '0';
        elsif rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end architecture behavioral;
