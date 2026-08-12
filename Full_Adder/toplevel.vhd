--libs
library ieee;
use ieee.std_logic_1164.all;

--define entity
entity toplevel is
    port
    (
        clk  : in  std_logic;
        rst  : in  std_logic;
        --Input
        An   : in  std_logic_vector(4 downto 0);
        Bn   : in  std_logic_vector(4 downto 0);
        cin  : in  std_logic;
        --Outs
        Sn   : out std_logic_vector(4 downto 0);
        Cout : out std_logic
    );
end toplevel;

--define behaviour
architecture toplevelarch of toplevel is
    signal QFFa    : std_logic_vector(4 downto 0);
    signal QFFb    : std_logic_vector(4 downto 0);
    signal DFFsout : std_logic_vector(4 downto 0);
    signal FFCinp  : std_logic;
    signal FFCoutp : std_logic;

begin
    FFa : entity work.pipo_register
        port map(
            Clk => clk,
            Rst => rst,
            D   => An,
            Q   => QFFa
        );
        
    FFb : entity work.pipo_register
        port map(
            Clk => clk,
            Rst => rst,
            D   => Bn,
            Q   => QFFb
        );
        
    DFFs : entity work.pipo_register
        port map(
            Clk => clk,
            Rst => rst,
            D   => DFFsout,
            Q   => Sn
        );

    FFcin : entity work.dflipflop
        port map(
            clk => clk,
            rst => rst,
            D   => cin,
            Q   => FFCinp
        );

    FFcout : entity work.dflipflop
        port map(
            clk => clk,
            rst => rst,
            D   => FFCoutp,
            Q   => Cout
        );        

    RCA : entity work.rca_adder
        port map(
            An   => QFFa,
            Bn   => QFFb,
            Sn   => DFFsout,
            Cin0 => FFCinp,
            Cout => FFCoutp
        );
end architecture toplevelarch;