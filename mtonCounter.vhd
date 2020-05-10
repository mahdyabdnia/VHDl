library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mtonCounter is
generic(width:natural;
N:natural;
M:natural

);
port(
clk,reset:in std_logic;
en:in std_logic;
q:out std_logic_vector(Width-1 downto 0);
pulse:out std_logic

);

end mtonCounter;

architecture gencot of mtonCounter is
signal r_reg:unsigned(Width-1 downto 0);
signal r_next:unsigned(Width-1 downto 0);

begin
process(clk,reset)
begin
if(reset='1')then 
r_reg<=(others=>'0');
elsif(clk'event and clk='1')then
r_reg<=r_next;
end if;
end process;

process(en,r_reg)
begin
r_next<=r_reg;

if(en='1')then
if r_reg=(N-1)then
r_next<=to_unsigned(M,r_next'length);
else 
r_next<=r_reg+1;
end if;

end if;

end process;

q<=std_logic_vector(r_reg);
pulse<='1' when r_reg<=(N-1) else
       '0';
       
end gencot;