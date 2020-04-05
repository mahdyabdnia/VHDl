library ieee;
use ieee.std_logic_114.all;


entity overflowdetecter is

port(
a.b:in std_logic_vector(1 downto 0);
cin:in std_logic;
v:out std_logic;
c,s :out std_logic_vector(1 downto 0)

);

end overflowdetecter;



architecture over of overflowdetecter is

component fulladder 
port(

a,b,c:in std_logic;
s,carry:out std_logic

);



begin 
fa1:fulladder(a(0),b(0),cin,s(0),c(0)   );
fa2:fulladder(a(1),b(1),c(0),s(1),c(1));

process (c,v)

begin 
if (c(1) xor c(0))=="1" then
v<=1;

else 
v<=0;

end if;


end process;





end over;