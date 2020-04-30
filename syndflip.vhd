library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity syndflip is 
port (
y:in std_logic_vector(2 downto 0);
x:in std_logic_vector(15 downto 0);
ctrl:in std_logic_vector(3 downto 0);
clk,reset:in std_logic;
z:out std_logic_vector(15 downto 0)


);

end syndflip;

architecture synd of syndflip is
signal r_next:std_logic_vector(15 downto 0);
signal r_reg:std_logic_vector(15 downto 0);
signal en:std_logic;
signal selector : std_logic_vector(2 downto 0);
begin 

process(reset,clk)
begin 
if(reset='0') then 
r_reg<=(others=>'0');

elsif (clk'event and clk='1') then 

r_reg<=r_next;
end if;



end process;


process(ctrl,x,y)
begin 

if (ctrl(3 downto 1)="000")then 
en<=x(0) and y(0);
elsif (ctrl(3 downto 1)="001") then 
 if(ctrl(0)='0') then 
 en<=y(0);
 else
 en<=not y(2);
 end if;
 

elsif (ctrl(3 downto 1)="010") then 
en<=x(1) nand y(1);

elsif (ctrl(3 downto 1)="011") then 
en<=x(1) nand y(1);

elsif(ctrl(3 downto 1)="100") then 
en<=x(1) nand y(1);

elsif(ctrl(3 downto 1)="101") then 
en<=x(0) and y(0);

elsif(ctrl(3 downto 1)="110") then 
en<='1';
else 
en<='0';

end if;
 


end process;

r_next<=x when en='1' else
      r_reg;
		
z<=r_reg;
     






end synd;