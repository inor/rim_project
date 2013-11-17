--File: 				Pfunc.vhd
--Version:			1.0
--Date:				18.11.2013
--Description:		P permutation function of DES
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pfunc is port(
	input : in std_logic_vector(1 to 32);
	output : out std_logic_vector(1 to 32)
);
end Pfunc;

architecture Pfunc_arch of Pfunc is
begin
	output(1) <= input(16);
	output(2) <= input(7);
	output(3) <= input(20);
	output(4) <= input(21);
	
	output(5) <= input(29);
	output(6) <= input(12);
	output(7) <= input(28);
	output(8) <= input(17);
	
	output(9) <= input(1);
	output(10) <= input(15);
	output(11) <= input(23);
	output(12) <= input(26);
	
	output(13) <= input(5);
	output(14) <= input(18);
	output(15) <= input(31);
	output(16) <= input(10);
	
	output(17) <= input(2);
	output(18) <= input(8);
	output(19) <= input(24);
	output(20) <= input(14);
	
	output(21) <= input(32);
	output(22) <= input(27);
	output(23) <= input(3);
	output(24) <= input(9);

	output(25) <= input(19);
	output(26) <= input(13);
	output(27) <= input(30);
	output(28) <= input(6);

	output(29) <= input(22);
	output(30) <= input(11);
	output(31) <= input(4);
	output(32) <= input(25);
end Pfunc_arch;

