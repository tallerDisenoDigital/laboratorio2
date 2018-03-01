library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity four_bits_adder is
    Port ( x : in std_logic_vector(3 downto 0);
           y : in std_logic_vector(3 downto 0);
           s0 : out std_logic_vector(3 downto 0));
end four_bits_adder;
 
architecture Behavioral of four_bits_adder is
signal c : std_logic_vector (3 downto 0):="0000";
component one_bit_adder 
port(a,b,cin:in std_logic; 
 s,cout:out std_logic);
end component;
 
begin
 
bit1: one_bit_adder port map (a=>x(0), b=>y(0), s=>s0(0), cin=>c(0), cout=>c(1));
bit2: one_bit_adder port map (a=>x(1), b=>y(1), s=>s0(1), cin=>c(1), cout=>c(2));
bit3: one_bit_adder port map (a=>x(2), b=>y(2), s=>s0(2), cin=>c(2), cout=>c(3));
bit4: one_bit_adder port map (a=>x(3), b=>y(3), s=>s0(3), cin=>c(3), cout=>c(0));
end Behavioral;