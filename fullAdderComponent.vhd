library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;
entity fullAdderComponent is
port(

cin,A,B:in std_logic;
cout,S:out std_logic


);

end fullAdderComponent;

architecture fulladd of fullAdderComponent is
begin

S<=(A and B) or (A and cin)or (cin and B);
cout<=cin xor A xor B;



end fulladd;