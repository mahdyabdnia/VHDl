library ieee;
use ieee.std_logic_1164.all;
entity sumofproductTest is

end sumofproductTest;

architecture test of sumofproductTest is
component sumofproduct1
port(w:in std_logic_vector(2 downto 0);
f:out std_logic
);

end component;

signal ft:std_logic;
signal wt:std_logic_vector(2 downto 0);

begin 

dut:sumofproduct1 port map(wt,ft);
wt<="000","001" after 20ns ,"010" after 40ns,"011" after 60ns,"100" after 80ns,"101" after 120ns,"110" after 140ns,"111" after 160ns,"000" after 180ns;



end test;