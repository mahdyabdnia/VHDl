library ieee;
use ieee.std_logic_1164.all;
use ieee.std_numeric.all;


entity fourshiftbarrel is 

port(
s:in unsigned(1 downto 0);
w:in unsigned(3 downto 0);
y:out unsigned(3 downto 0 );

);

end fourshiftbarrel ;

ARCHITECTURE  frshift of fourshiftbarrel is

begin 
process(s,w)
being

case s is 
when "00" => y<=w;
when "01" => y<=w ror 1;
when "10" =>y<= w ror 2;
when "11" =>y <= w ror 3;

end case;

end process;



end frshift;