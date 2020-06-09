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
cint<='0','1' after 20ns ,'0' after 45ns ,'1' after 65ns,'0' after 85ns ,'1' after 105ns,'0' after 125ns,'1'after 145ns,'0' after 175ns , '1' after 195ns,'0'after 215ns,'1' after 235ns,'0'after 255ns,'1'after 275ns,'0'after 295ns,'1'after 315ns,'0' after 335ns,'1'after 355ns,'0'after 375ns,'1'after 395ns,'0'after 415ns,'1' after 435ns,'0' after 455ns,'1' after 475ns,'0' after 495n,'1' after 515ns,'0' after 435ns, '1' after 455ns, '0' after 475ns, '1' after 495ns, '0' after 515ns, '1' after 535ns, '0' after 555ns, '1' after 575ns,'0' after 595ns,'1' after 615ns;



end test;

