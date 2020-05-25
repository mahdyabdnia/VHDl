library ieee;
use ieee.std_logic_1164.all;

entity shiftReg is


port (
clk,SI,ShiftCtrl:in std_logic;

Q:out std_logic
);

end shiftReg;

architecture shr of shiftReg is
signal r_next,r_reg:std_logic_vector(3 downto 0);
begin 
process(clk,ShiftCtrl)
begin
if(shiftCtrl='1') then
r_reg<=(others=>'0');
elsif(clk'event and clk='1') then
r_reg<=r_next;
end if;





end process;

r_next<=SI & r_reg(3 downto 1);
Q<=r_reg(0);


end shr;