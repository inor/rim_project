--File: 				Efunc.vhd
--Version:			1.0
--Date:				17.11.2013
--Description:		E function of DES
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Efunc is port(
	input : in std_logic_vector(1 to 32);
	output : out std_logic_vector(1 to 48)
);
end Efunc;

architecture Efunc_arch of Efunc is
begin
	output(1) <= input(32);
	output(2) <= input(1);
	output(3) <= input(2);
	output(4) <= input(3);
	output(5) <= input(4);
	output(6) <= input(5);
	
	output(7) <= input(4);
	output(8) <= input(5);
	output(9) <= input(6);
	output(10) <= input(7);
	output(11) <= input(8);
	output(12) <= input(9);
	
	output(13) <= input(8);
	output(14) <= input(9);
	output(15) <= input(10);
	output(16) <= input(11);
	output(17) <= input(12);
	output(18) <= input(13);
	
	output(19) <= input(12);
	output(20) <= input(13);
	output(21) <= input(14);
	output(22) <= input(15);
	output(23) <= input(16);
	output(24) <= input(17);
	
	output(25) <= input(16);
	output(26) <= input(17);
	output(27) <= input(18);
	output(28) <= input(19);
	output(29) <= input(20);
	output(30) <= input(21);
	
	output(31) <= input(20);
	output(32) <= input(21);
	output(33) <= input(22);
	output(34) <= input(23);
	output(35) <= input(24);
	output(36) <= input(25);
	
	output(37) <= input(24);
	output(38) <= input(25);
	output(39) <= input(26);
	output(40) <= input(27);
	output(41) <= input(28);
	output(42) <= input(29);
	
	output(43) <= input(28);
	output(44) <= input(29);
	output(45) <= input(30);
	output(46) <= input(31);
	output(47) <= input(32);
	output(48) <= input(1);
end Efunc_arch;

