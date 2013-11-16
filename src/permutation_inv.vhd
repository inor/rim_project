--File: 				permutation_inv.vhd
--Version:			1.0
--Date:				12.11.2013
--Description:		Inverse of the initial permutation of DES
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity permutation_inv is port(
	input : in std_logic_vector(1 to 64);
	output : out std_logic_vector(1 to 64)
);
end permutation_inv;

architecture permutation_inv_arch of permutation_inv is
begin
	output(1)  <= input(40);
	output(2)  <= input(8);
	output(3)  <= input(48);
	output(4)  <= input(16);
	output(5)  <= input(56);
	output(6)  <= input(24);
	output(7)  <= input(64);
	output(8)  <= input(32);
	
	output(9)  <= input(39);
	output(10) <= input(7);
	output(11) <= input(47);
	output(12) <= input(15);
	output(13) <= input(55);
	output(14) <= input(23);
	output(15) <= input(63);
	output(16) <= input(31);
	
	output(17) <= input(38);
	output(18) <= input(6);
	output(19) <= input(46);
	output(20) <= input(14);
	output(21) <= input(54);
	output(22) <= input(22);
	output(23) <= input(62);
	output(24) <= input(30);
	
	output(25) <= input(37);
	output(26) <= input(5);
	output(27) <= input(45);
	output(28) <= input(13);
	output(29) <= input(53);
	output(30) <= input(21);
	output(31) <= input(61);
	output(32) <= input(29);
	
	output(33) <= input(36);
	output(34) <= input(4);
	output(35) <= input(44);
	output(36) <= input(12);
	output(37) <= input(52);
	output(38) <= input(20);
	output(39) <= input(60);
	output(40) <= input(28);
	
	output(41) <= input(35);
	output(42) <= input(3);
	output(43) <= input(43);
	output(44) <= input(11);
	output(45) <= input(51);
	output(46) <= input(19);
	output(47) <= input(59);
	output(48) <= input(27);
	
	output(49) <= input(34);
	output(50) <= input(2);
	output(51) <= input(42);
	output(52) <= input(10);
	output(53) <= input(50);
	output(54) <= input(18);
	output(55) <= input(58);
	output(56) <= input(26);
	
	output(57) <= input(33);
	output(58) <= input(1);
	output(59) <= input(41);
	output(60) <= input(9);
	output(61) <= input(49);
	output(62) <= input(17);
	output(63) <= input(57);
	output(64) <= input(25);
end permutation_inv_arch;