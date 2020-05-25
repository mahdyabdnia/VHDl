library ieee;
use ieee.std_logic_1164.all;

entity shiftReg is

generic (N:integer:=8);
port (
clk,SI,ShiftCtrl:in std_logic;
R:in std_logic_vector(N-1 downto 0);
Q:buffer std_logic_vector(N-1 downto 0)
);

end shiftReg;

architecture shr of shiftReg is
begin 
process(clk)
begin 
if(clk'event and clk='1') then
if(shiftCtrl='1')then
for i in 0 to N-2 loop
 Q(i)<=Q(i+1);
 end loop;
 q(N-1)<=SI;
else
Q<=R;
end if; 
 
end if;

end process;


end shr;