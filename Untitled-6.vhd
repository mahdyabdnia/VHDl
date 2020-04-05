library ieee;
use ieee.std_logic_1164.all;


entity multiplexier is 
port(
x:in std_logic_vector(7 downto 0);
s:in std_logic_vector(2 downto 0);
f:out std_logic;


);


end multiplexier;

architecture multi of multiplexier is

begin 


f<= x(0) when 



end multi