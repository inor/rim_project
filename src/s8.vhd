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
"1101", "0010", "1000", "0100", "0110", "1111", "1011", "0001", "1010", "1001", "0011", "1110", "0101", "0000", "1100", "0111", 
"0001", "1111", "1101", "1000", "1010", "0011", "0111", "0100", "1100", "0101", "0110", "1011", "0000", "1110", "1001", "0010", 
"0111", "1011", "0100", "0001", "1001", "1100", "1110", "0010", "0000", "0110", "1010", "1101", "1111", "0011", "0101", "1000", 
"0010", "0001", "1110", "0111", "0100", "1010", "1000", "1101", "1111", "1100", "1001", "0000", "0011", "0101", "0110", "1011"
);

signal q: std_logic_vector(5 downto 0):= (input(1), input(6), input(2), input(3), input(4), input(5));
begin
	output <= sbox_ram(conv_integer(q));
end s1_arch;



















