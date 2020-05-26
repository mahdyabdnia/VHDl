library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity register_file is 
port(
clk,reset:in std_logic;
w_data:in std_logic_vector(7 downto 0);
w_en:in std_logic;
w_addr,r_addr:in std_logic_vector(1 downto 0);
r_data:out std_logic_vector(7 downto 0)
);

end register_file;

architecture regfile of register_file is
constant W:natural:=2;
constant N:natural:=8;
type array_reg_file is array (2**w-1 downto 0) of std_logic_vector(N-1 downto 0);
signal array_reg,array_next:array_reg_file;
signal en:std_logic_vector(2**W-1 downto 0);
 
begin
 
process(clk,reset)
begin 
if(reset='1')then 
array_reg(3)<=(others=>'0');
array_reg(2)<=(others=>'0');
array_reg(1)<=(others=>'0');
array_reg(0)<=(others=>'0');
elsif(clk'event and clk='1') then
array_reg(3)<=array_next(3);
array_reg(2)<=array_next(2);
array_reg(1)<=array_next(1);
array_reg(0)<=array_next(0);

end if;




end process;

process(array_reg,en,w_data)
begin
array_next(3)<=array_reg(3);
array_next(2)<=array_reg(2);
array_next(1)<=array_reg(1);
array_next(0)<=array_reg(0);


if(en(3)='1') then
array_next(3)<=w_data;
elsif(en(2)='1')then
array_next(2)<=w_data;
elsif(en(1)='1')then
array_next(1)<=w_data;
elsif(en(0)='1')then
array_next(0)<=w_data;

end if;

end process;

process(w_en,w_addr,en)
begin
if(w_en='0')then
en<=(others=>'0');
else
 if(w_addr="00") then
 en<="0001" ;
 elsif(w_addr="01")then
 en<="0010";
 elsif(w_addr="10")then
 en<="0100";
 else
 en<="1000";
 end if;
 
end if;





end process;

with r_addr select 
   r_data<=array_reg(0) when "00",
	        array_reg(1) when "01",
			  array_reg(2) when "10",
			  array_reg(3) when others;



end regfile;


