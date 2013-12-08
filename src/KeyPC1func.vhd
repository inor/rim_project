--File:                                 KeyPC1func.vhd
--Version:                        0.09
--Date:                                07.12.2013
--Description:                Permutacja klucza 1 PC-1 function of DES
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyPC1func is port(
        input : in std_logic_vector(1 to 64);
        output : out std_logic_vector(1 to 56)
);
end KeyPC1func;

architecture KeyPC1func_arch of KeyPC1func is
begin
-- lewa czesc
        output(1) <= input(57);
        output(2) <= input(49);
        output(3) <= input(41);
        output(4) <= input(33);
		
        output(5) <= input(25);
        output(6) <= input(17);
        output(7) <= input(9);
        output(8) <= input(1);
        
        output(9) <= input(58);
        output(10) <= input(50);
        output(11) <= input(42);
        output(12) <= input(34);
        
        output(13) <= input(26);
        output(14) <= input(18);
        output(15) <= input(10);
        output(16) <= input(2);
        
        output(17) <= input(59);
        output(18) <= input(51);
        output(19) <= input(43);
        output(20) <= input(35);
        
        output(21) <= input(27);
        output(22) <= input(19);
        output(23) <= input(11);
        output(24) <= input(3);

        output(25) <= input(60);
        output(26) <= input(52);
        output(27) <= input(44);
        output(28) <= input(36);
-- prawa czesc
        output(29) <= input(63);
        output(30) <= input(55);
        output(31) <= input(47);
        output(32) <= input(39);

        output(33) <= input(31);
        output(34) <= input(23);
        output(35) <= input(15);
        output(36) <= input(7);

        output(37) <= input(62);
        output(38) <= input(54);
        output(39) <= input(46);
        output(40) <= input(38);

        output(41) <= input(30);
        output(42) <= input(22);
        output(43) <= input(14);
        output(44) <= input(6);

        output(45) <= input(61);
        output(46) <= input(53);
        output(47) <= input(45);
        output(48) <= input(37);

        output(49) <= input(29);
        output(50) <= input(21);
        output(51) <= input(13);
        output(52) <= input(5);

        output(53) <= input(28);
        output(54) <= input(20);
        output(55) <= input(12);
        output(56) <= input(4);
end KeyPC1func_arch;