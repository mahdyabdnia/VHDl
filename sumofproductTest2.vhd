library ieee;
use ieee.std_logic_1164.all;

entity sumofproductTest2 is

end sumofproductTest2;


architecture test of sumofproductTest2 is
component sumofproduct2

port (w:in std_logic_vector(3 downto 0);
f:out std_logic
);

end component; 

signal wt:std_logic_vector( 3 downto 0);
signal ft:std_logic;

begin 
wt<="0000","0001" after 40ns ,"0010" after 80ns , "0011" after 120ns , "0100" after 160ns, "0101" after 200ns , "0110" after 240ns, " 0111" after 280ns, "1000" after 320ns,"1001" after 360ns,"1010" after 400ns , "1011" after 440ns , "1100" after 480ns, "1101" after 520ns, "1110" after 560ns, "1111" after 600ns , "0000" after 640ns;



end test;