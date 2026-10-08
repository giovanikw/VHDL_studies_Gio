library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    Port (
        d0   : in  STD_LOGIC;
        d1   : in  STD_LOGIC;
        d2   : in  STD_LOGIC;
        d3   : in  STD_LOGIC;
        sel  : in  STD_LOGIC_VECTOR (1 downto 0);
        y    : out STD_LOGIC
    );
end mux4to1;

architecture Behavioral of mux4to1 is
begin

    -- Option 1: Dataflow Style (Conditional Signal Assignment)
    y <= d0 when (sel = "00") else
         d1 when (sel = "01") else
         d2 when (sel = "10") else
         d3 when (sel = "11") else
         'X'; -- Default fallback for unknown/uninitialized states

    ------------------------------------------------------------------
    -- Option 2: Process-based Behavioral Style (CASE statement)
    -- Uncomment below and comment out Option 1 to use this style.
    ------------------------------------------------------------------
    -- process (d0, d1, d2, d3, sel)
    -- begin
    --     case sel is
    --         when "00"   => y <= d0;
    --         when "01"   => y <= d1;
    --         when "10"   => y <= d2;
    --         when "11"   => y <= d3;
    --         when others => y <= 'X';
    --     end case;
    -- end process;

end Behavioral;