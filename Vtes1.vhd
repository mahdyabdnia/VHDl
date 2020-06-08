library ieee;
use ieee.std_logic_1164.all;

entity detector_test is 
end detector_test;


architecture test of detector_test is
entity fulladderdetecter is
port(
X,Y:in std_logic_vector(1 downto 0);
Cin:in std_logic;
v,Cout:out std_logic;
Sum:out std_logic_vector(1 downto 0)


);

end component;

signal Cint,Vt,Coutt:std_logic;
signal Xt,Yt,Sumt:std_logic_vector(1 downto 0);

begin
dut: fulladderdetecter port map(Xt,Yt,Cint,Vt,Coutt,Sumt);
Xt<="00","01" after 160ns ,"10" after 320ns,"11" after 480ns;
Yt<="00","01" after 40ns ,"10" after 80ns,"11" after 120ns,"00" after 170ns ,"01" after 210ns,"10" after 250 ns ,"11" after 290ns ,"00" after 330ns,"01" after 370ns ,"10" after 410ns , "11" after 450ns,"00" after 490 ns , "01" after 530ns , "10" after 570ns , "11" after 610ns  ;
cint<='0','1' after 10ns ,'0' after 10ns ,'1' after 10ns;



end test;

