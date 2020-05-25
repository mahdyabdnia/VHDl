library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity serialadder is
port(
SI,shiftCtrl,clk,clear:in std_logic

);




end serialadder;

architecture sradder of serialadder is
component fullAdderComponent 
port(cin,A,B:in std_logic;
cout,S:out std_logic);

end component;

component shiftReg
port(clk,SI,ShiftCtrl:in std_logic;

Q:out std_logic);

end component;

signal A,B,S,r_reg,r_next,clock:std_logic;
begin

process(clock,clear)
begin

if(clear='0') then 
r_next<='0';

elsif(clock'event and clock='1') then
r_next<=r_reg;
end if;


end process;

shreg1:shiftReg 
port map(
clk=>clk,SI=>S,ShiftCtrl=>shiftCtrl,Q=>A

);

shreg2:shiftReg
port map(clk=>clk,SI=>SI,ShiftCtrl=>shiftCtrl,Q=>B);

fladd:fullAdderComponent 
port map(cin=>r_next,A=>A,B=>B,cout=>r_reg,S=>S );

clock<=shiftCtrl and clk;




end sradder;
