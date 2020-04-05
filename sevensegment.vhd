library ieee;
use ieee.std_logic_1164.all;

entity bcdSevenSegment is 
port(
bcdIn:in std_logic_vector(3 downto 0);
bcdOut:out std_logic_vector(6 downto 0)




);
end bcdSevenSegment;

architecture bcd of bcdSevenSegment is

begin 


process (bcdIn)
begin 


case bcdIn is 
when "0000"=>

bcdOut<="0000001";

when "0001"=>

bcdOut<="1001111";

when "0010"=>
bcdOut<="0010010";

when "0011"=>
bcdOut<="0000110";
when "0100"=>
bcdOut<="1001100";
when "0101"=>
bcdOut<="0100100";
when "0110"=>
bcdOut<="0100000";
when "0111"=>
bcdOut<="0001111";
when "1000"=>
bcdOut<="0000000";
when "1001"=>
bcdOut<="0000100";
when others=>
bcdOut<="1111111";

end case;
end process;

end bcd;