library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fulladderdetecter is
port(
X,Y:in std_logic_vector(1 downto 0);
Cin:in std_logic;
v,Cout:out std_logic;
Sum:out std_logic_vector(1 downto 0)


);

end fulladderdetecter;

architecture fulladddetect of fulladderdetecter is
component fullAdderComponent 
port(cin,A,B:in std_logic;
cout,S:out std_logic);

end component;

signal c1,c2:std_logic;
begin 
firstadd:fullAdderComponent port map (cin=>Cin,A=>X(0),B=>Y(0),S=>Sum(0),cout=>c1);
secondadd:fullAdderComponent port map(cin=>c1,A=>X(1),B=>Y(1),S=>Sum(1),cout=>c2);
Cout<=c2;
v<=c1 xor c2;


end fulladddetect;