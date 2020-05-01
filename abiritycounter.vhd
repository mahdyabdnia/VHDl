library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity abiritycounter is
port(
clk,reset:in  std_logic;
w:in std_logic;
morcn:out std_logic_vector(2 downto 0)
);

end abiritycounter;

architecture abircn of abiritycounter is

type mc_state_type is(zero,one,four,six,seven);
signal state_reg,state_next:mc_state_type;
begin

process(clk,reset)
begin
if(reset='1')then
state_reg<=zero;
elsif(clk'event and clk='1')then
state_reg<=state_next;
end if;
end process;

process(state_reg,w)
begin
if(state_reg=zero)then
  if(w='1')then
  state_next<=one;
  morcn<="001";
  else
  state_next<=zero;
  morcn<="000";
  end if;
  
elsif(state_reg=one)then 
   if(w='1')then
	state_next<=six;
	morcn<="110";
	else
	state_next<=one;
	morcn<="001";
	end if;
elsif(state_reg=six)then
  if(w='1')then 
  state_next<=seven;
  morcn<="111";
  else
  state_next<=six;
  morcn<="110";
  end if;
elsif(state_reg=seven) then
  if(w='1')then 
  state_next<=four;
  morcn<="100";
  else 
  state_next<=seven;
  morcn<="111";
  end if;
  
else 
  if(w='1') then
  state_next<=zero;
  morcn<="000";
  else 
  state_next<=four;
  morcn<="100";
  end if;
 end if;
  



end process;


end abircn;