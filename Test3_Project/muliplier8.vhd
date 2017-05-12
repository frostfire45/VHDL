library IEEE;

use IEEE.numeric_bit.all;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mult4x4 is
	port(	
			Clk,Start: in bit;
			multNum_0, multNum_1: in unsigned(3 downto 0);
			hex0,hex1: out std_logic_vector(1 to 7);
			carryOut	: out bit
			);
end mult4x4;



architecture behavel of mult4x4 is
	signal State: integer range 0 to 9;
	signal ACC: unsigned(8 downto 0);	
	signal Done: bit;
	alias  M	: bit is ACC(0);
	
	begin		

		process(Clk)
			begin
				if Clk'event and clk = '1' then
					case State is
						when 0 =>
							if Start = '1' then
								ACC(8 downto 4) <= "00000";
								ACC(3 downto 0) <= multNum_1;
								State <=1;
							end if;
						when 1 | 3 | 5 | 7 =>
							if M = '1' then
								ACC(8 downto 4) <= '0' & ACC(7 downto 4) + multNum_0(3 downto 0) ;
								State <= State + 1;
							else
								ACC <='0' & ACC(8 downto 1);
								State <= State + 2;
							end if;
						when 2 | 4 | 6 | 8 =>
							ACC <= '0' & ACC(8 downto 1);
							State <= State + 1;
						when 9 =>
							State <= 0;
					end case;
				end if;
		end process;
		Done <= '1' when State = 9 else '0';
		
		
		with  ACC(7 downto 4) select
			hex0 <=  "0000001" when "0000",
						"1001111" when "0001",
						"0010010" when "0010",
						"0000110" when "0011",
						"1001100" when "0100",
						"0100100" when "0101",
						"0100000" when "0110",
						"0001111" when "0111",
						"0000000" when "1000", 
						"0000100" when others;

		with	ACC(3 downto 0) select		  
			hex1 <= "0000001"  when "0000",
						"1001111" when "0001",
						"0010010" when "0010",
						"0000110" when "0011",
						"1001100" when "0100",
						"0100100" when "0101",
						"0100000" when "0110",
						"0001111" when "0111",
						"0000000" when "1000", 
						"0000100" when others;
end behavel;