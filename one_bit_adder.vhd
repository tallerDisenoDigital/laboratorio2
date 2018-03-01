library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity one_bit_adder is
    Port ( a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           s : out std_logic;
           cout : out std_logic);
end one_bit_adder;
 
architecture Behavioral of one_bit_adder is
 
begin
s<=(a xor (b xor cin)); 
cout<=(b and cin) or (a and cin) or (a and b);
 
end Behavioral;