--File: 				permutation_init.vhd
--Version:			1.0
--Date:				12.11.2013
--Description:		Initial permutation of DES
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity permutation_init is port(
	input : in std_logic_vector(1 to 64);
	output : out std_logic_vector(1 to 64)
);
end permutation_init;

architecture permutation_init_arch of permutation_init is
begin
	output(1)  <= input(58);
	output(2)  <= input(50);
	output(3)  <= input(42);
	output(4)  <= input(34);
	output(5)  <= input(26);
	output(6)  <= input(18);
	output(7)  <= input(10);
	output(8)  <= input(2);
	
	output(9)  <= input(60);
	output(10) <= input(52);
	output(11) <= input(44);
	output(12) <= input(36);
	output(13) <= input(28);
	output(14) <= input(20);
	output(15) <= input(12);
	output(16) <= input(4);
	
	output(17) <= input(62);
	output(18) <= input(54);
	output(19) <= input(46);
	output(20) <= input(38);
	output(21) <= input(30);
	output(22) <= input(22);
	output(23) <= input(14);
	output(24) <= input(6);
	
	output(25) <= input(64);
	output(26) <= input(56);
	output(27) <= input(48);
	output(28) <= input(40);
	output(29) <= input(32);
	output(30) <= input(24);
	output(31) <= input(16);
	output(32) <= input(8);
	
	output(33) <= input(57);
	output(34) <= input(49);
	output(35) <= input(41);
	output(36) <= input(33);
	output(37) <= input(25);
	output(38) <= input(17);
	output(39) <= input(9);
	output(40) <= input(1);
	
	output(41) <= input(59);
	output(42) <= input(51);
	output(43) <= input(43);
	output(44) <= input(35);
	output(45) <= input(27);
	output(46) <= input(19);
	output(47) <= input(11);
	output(48) <= input(3);
	
	output(49) <= input(61);
	output(50) <= input(53);
	output(51) <= input(45);
	output(52) <= input(37);
	output(53) <= input(29);
	output(54) <= input(21);
	output(55) <= input(13);
	output(56) <= input(5);
	
	output(57) <= input(63);
	output(58) <= input(55);
	output(59) <= input(47);
	output(60) <= input(39);
	output(61) <= input(31);
	output(62) <= input(23);
	output(63) <= input(15);
	output(64) <= input(7);
end permutation_init_arch;