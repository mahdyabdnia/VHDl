library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_control is
port(clk,reset:in std_logic;
wr,rd:in std_logic;
full,empty:out std_logic;
w_addr,r_addr:out std_logic_vector(3 downto 0)


);

end fifo_control;

architecture fi_ctrl of fifo_control is
signal wr_pt_reg,wr_pt_next,re_pt_reg,re_pt_next:unsigned(4 downto 0);
signal full_flag,empty_flag:std_logic;

begin 

process(clk,reset)
begin
if(reset='1')then 
wr_pt_reg<=(others=>'0');
re_pt_reg<=(others=>'0');

elsif(clk'event and clk='1')then 
wr_pt_reg<=wr_pt_next;
re_pt_reg<=re_pt_next;


end if;



end process;

wr_pt_next<=wr_pt_reg+1 when wr='1' and full_flag='0' else 
           wr_pt_reg;
full_flag<='1' when re_pt_reg(4) /= wr_pt_reg(4) and re_pt_reg(3 downto 0) =wr_pt_reg(3 downto 0)
      else 
'0';

w_addr<=std_logic_vector(wr_pt_reg(3 downto 0));
full<=full_flag;

re_pt_next<=re_pt_reg+1 when rd='1' and empty_flag='0' else
          re_pt_reg;
empty_flag<='1' when re_pt_reg=wr_pt_reg else
   '0';

r_addr<=std_logic_vector(re_pt_reg(3 downto 0));
empty<=empty_flag;

end fi_ctrl;
 		
			  


