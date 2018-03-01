-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 27.2.2018 06:42:08 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_four_bits_adder is
end tb_four_bits_adder;

architecture tb of tb_four_bits_adder is

    component four_bits_adder
        port (x  : in std_logic_vector (3 downto 0);
              y  : in std_logic_vector (3 downto 0);
              s0 : out std_logic_vector (3 downto 0));
    end component;

    signal x  : std_logic_vector (3 downto 0);
    signal y  : std_logic_vector (3 downto 0);
    signal s0 : std_logic_vector (3 downto 0);

begin

    dut : four_bits_adder
    port map (x  => x,
              y  => y,
              s0 => s0);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        x <= (others => '0');
        y <= (others => '0');

        -- EDIT Add stimuli here

    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_four_bits_adder of tb_four_bits_adder is
    for tb
    end for;
end cfg_tb_four_bits_adder;