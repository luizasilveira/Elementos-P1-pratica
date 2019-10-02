-- Elementos de Sistemas
-- by Luciano Soares
-- Register4.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register4 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(3 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(3 downto 0)
	);
end entity;

architecture arch of Register4 is

	component BinaryDigit is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC;
			load:    in STD_LOGIC;
			output: out STD_LOGIC
		);
	end component;

begin

b0: BinaryDigit port map (clock, input(0),load, output(0));
b1: BinaryDigit port map (clock, input(1),load, output(1));
b2: BinaryDigit port map (clock, input(2),load, output(2));
b3: BinaryDigit port map (clock, input(3),load, output(3));



end architecture;
