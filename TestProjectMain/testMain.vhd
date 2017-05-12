library IEEE;
use IEEE.std_logic_1164;

entity testMain is
	port(
			clk : in std_logic;
			SW0_3: IN STD_LOGIC_VECTOR(3 downto 0);
			SW4_7: IN STD_LOGIC_VECTOR(3 downto 0)
			);
END TESTMAIN;

architecture main of testMain is

	component mult4x4 is
		port(	
				Clk,Start: in bit;
				multNum_0, multNum_1: in unsigned(3 downto 0);
				int0, int1: out integer range 0 to 9;
				carryOut	: out bit
				);
	end component;
	begin
		sw0_3 <= multNum_0(3 downto 0);
		sw4_4 <= multNum_1(3 downto 0);
		
end;
