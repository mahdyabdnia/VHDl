library ieee;
use ieee.std_logic_1164.all;

entity fulladder is port(
a,b,c:in std_logic;
s,carry:out std_logic
);

end fulladder;


architecture full of fulladder is

beign

carry<=(a and b) or (a and c) or (b and c);
s<=a xor b xor c;



end full;