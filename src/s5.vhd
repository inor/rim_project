--File: 				Efunc.vhd
--Version:			1.0
--Date:				17.11.2013
--Description:		S1 function of DES
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity s1 is port(
	input : in std_logic_vector(1 to 6);
	output : out std_logic_vector(1 to 4)
);
end s1;

architecture s1_arch of s1 is
type ram_type is array(natural range<>) of std_logic_vector(3 downto 0);
constant sbox_ram: ram_type(63 downto 0) :=
(
"0010", "1100", "0100", "0001", "0111", "1010", "1011", "0110", "1000", "0101", "0011", "1111", "1101", "0000", "1110", "1001", 
"1110", "1011", "0010", "1100", "0100", "0111", "1101", "0001", "0101", "0000", "1111", "1010", "0011", "1001", "1000", "0110", 
"0100", "0010", "0001", "1011", "1010", "1101", "0111", "1000", "1111", "1001", "1100", "0101", "0110", "0011", "0000", "1110", 
"1011", "1000", "1100", "0111", "0001", "1110", "0010", "1101", "0110", "1111", "0000", "1001", "1010", "0100", "0101", "0011"
);

signal q: std_logic_vector(5 downto 0):= (input(1), input(6), input(2), input(3), input(4), input(5));
begin
	output <= sbox_ram(conv_integer(q));
end s1_arch;



















