library ieee;
use ieee.std_logic_1164.all;


entity sequstatment is
port(
a,b,c,d:in std_logic;
z:out std_logic

);

end sequstatment;

architecture sequst of sequstatment is

signal f,e:std_logic;
begin 

porcess(a,b,c,d)
begin
e<=((a and b) and c) or d;
f<=not((b nor c)nand a);
z=e xor f;



end porcess;

end sequst;

