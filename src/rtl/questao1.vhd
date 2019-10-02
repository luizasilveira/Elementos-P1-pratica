------------------------------
-- Elementos de Sistemas
-- Avaliacao Pratica 1
--
-- 10/2019
--
-- Questão 1
------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Questao1 is
  port (
	x : in  STD_LOGIC_VECTOR(4 downto 0);
	f : out STD_LOGIC	);
end entity;

architecture  rtl OF Questao1 IS

begin

--p9  =  ((x1 or x2 or x5) and ((x3 and (not x4)) or ((not x3) and x4)))
--p10 = ((not((x3 and (not x4)) or ((not x3) and x4))) and (not (x1 or x2 or x5))) 
--x1 = x(0); 
--x2 = x(1);
--x3 = x(2);
--x4 = x(3);
--x5 = x(4);

f <= ((not((x(2) and (not x(3))) or ((not x(2)) and x(3)))) and (not (x(0) or x(1) or x(4)))) or ((x(0) or x(1) or x(4)) and ((x(2) and (not x(3))) or ((not x(2)) and x(3))));


end architecture;
