library ieee;
use ieee.std_logic_1164.all;


entity carrylockadder is
port(
A,B:in std_logic_vector(3 downto 0);
cin:in std_logic;
S:out std_logic_vector(3 downto 0);
Cout:out std_logic
);

end carrylockadder;


architecture carry of carrylockadder is

component partialFullAdder
port(
a,b,cin:in std_logic;
s,p,g:out std_logic

);
end component;
signal c1,c2,c3:std_logic;
signal P,G:std_logic_vector(3 downto 0);






begin 

pfa1:partialFullAdder(A(0),B(0),cin,S(0),P(0),G(0)        );
pfa2:partialFullAdder(A(1),B(1),c1,S(1),P(1),G(1));
pfa2:partialFullAdder(A(2),B(2),c2,S(2),P(2),G(2));
pfa3:partialFullAdder(A(3),B(3),c3,S(3),P(3),G(3));



c1<=G(0) or (P(0) and cin);
c2<=G(1) or (P(1) and G(0))or (P(1) and P(0) and cin);
c3<=G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0)) or (P(2) and P(1) and P(0) and cin);
Cout<=G(3) or (P(3)and G(2))or (P(3)and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0)) or (P(3) and P(2) and P(1) and p(0) and cin);





end carry; 