--File: 				LeftShift.vhd
--Version:			1.0
--Date:				5.12.2013
--Description:		Shift register - rotates bits <-(left)
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LeftShift is port(
	input : in std_logic_vector(27 downto 0);
	output : out std_logic_vector(27 downto 0)
);
end LeftShift;

architecture LeftShift_arch of LeftShift is
begin
	output <= input(26 downto 0) & in(27);
end LeftShift_arch;
