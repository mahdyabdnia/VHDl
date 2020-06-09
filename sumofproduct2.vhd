library ieee;
use ieee.std_logic_1164.all;

entity sumofproduct2 is 
port (w:in std_logic_vector(3 downto 0);
f:out std_logic
);

end sumofproduct2;


architecture sum of sumofproduct2 is
signal s:std_logic_vector(15 downto 0);

begin 
s<=(0=>'1',others=>'0') when w="0000" else
   (1=>'1',others=>'0') when w="0001" else
	(2=>'1',others=>'0') when w="0010" else
	(3=>'1',others=>'0') when w="0011" else
	(4=>'1',others=>'0') when w="0100" else
	(5=>'1',others=>'0') when w="0101" else
	(6=>'1',others=>'0') when w="0110" else
	(7=>'1',others=>'0') when w="0111" else
	(8=>'1',others=>'0') when w="1000" else
	(9=>'1',others=>'0') when w="1001" else
	(10=>'1',others=>'0') when w="1010" else
	(11=>'1',others=>'0') when w="1011" else
	(12=>'1',others=>'0') when w="1100" else
	(13=>'1',others=>'0') when w="1101" else
	(14=>'1',others=>'0') when w="1110" else
	(15=>'1',others=>'0');
f<=s(0) when w="0000" else
  s(1) when w="0001" else
  s(3) when w="0011"else
  s(4)when w="0100" else
 s(5) when w="0101" else 
 s(7)when w="0111" else 
 s(11) when w="1011" else
 s(15) when w="1111" else
 '0';
	
	
	
















end sum;