library ieee;
use ieee.std_logic_1164.all;


entity decoder is 

port(
s:in std_logic_vector(2 downto 0);
x:out std_logic_vector(7 downto 0)


);



end decoder;


architecture de of decoder is

begin 


x<= "00000001" when (s="000") else
    "00000010" when (s="001") else 
    "00000100" when (s="010") else 
    "00001000" when (s="011") else 
    "00010000" when (s="100") else
    "00100000" when (s="101") else 
    "01000000" when (s="110") else
    "10000000";


end de;