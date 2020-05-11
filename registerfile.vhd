library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity registerfile is 
port(
w_en:in std_logic;
w_addr,r_addr0:in std_logic_vector(3 downto 0);
w_data:in std_logic_vector(7 downto 0);
r_data:out std_logic_vector(7 downto 0);
clk,reset:in std_logic




);


end registerfile;

architecture regfile of registerfile is
constant W:natural:=4;
constant N:natural:=8;
type reg_file_type is array(2**W-1 downto 0) of 
std_logic_vector(N-1 downto 0);
signal array_reg:reg_file_type;
signal array_next:reg_file_type;
signal en:std_logic_vector(2**W-1 downto 0);


process(clk,reset)
begin 
if(reset ='1') then




end process;

end regfile;