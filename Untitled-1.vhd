library ieee;
use ieee.std_logic_1164.all;
entity partialFullAdder is 
port(
a,b,cin:in std_logic;

s,p,g:out std_logic


);
end partialFullAdder ;

architecture partial of partialFullAdder is 

begin 
s <= a xor b xor cin;
p <= a xor b;
g <=a and b;

end partial;