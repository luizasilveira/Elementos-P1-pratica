------------------------------
-- Elementos de Sistemas
-- Avaliacao Pratica 1
--
-- 10/2019
--
-- Questão 2 - Cronometro
------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cronometro is
  port (
    enable : in std_logic;
    clk : in std_logic;
    a1,b1,c1,d1,e1,f1,g1 : out STD_LOGIC;
    a2,b2,c2,d2,e2,f2,g2 : out STD_LOGIC
    );
end entity;

architecture  rtl OF cronometro IS

  component BCDAdder is
    port(
      x,y      : in STD_LOGIC_VECTOR(3 downto 0);
      carryin  : in std_logic;
      s        : out STD_LOGIC_VECTOR(3 downto 0);
      carryout : out STD_LOGIC
      );
  end component;

  component Register4 is
    port(
      clock:   in STD_LOGIC;
      input:   in STD_LOGIC_VECTOR(3 downto 0);
      load:    in STD_LOGIC;
      output: out STD_LOGIC_VECTOR(3 downto 0)
    );
  end component;

  component sevenSeg is
    port (
      H : in  STD_LOGIC_VECTOR(3 downto 0);
      a,b,c,d,e,f,g : out STD_LOGIC );
  end component;

signal carryout0, carryout1: STD_LOGIC;
signal s0, s1, regOut0, regOut1: STD_LOGIC_VECTOR(3 downto 0);


begin

bcd0: BCDAdder port map(regOut0,"0000",carryout1, s0, carryout0);
bcd1: BCDAdder port map(regOut1,"0000", '1', s1, carryout1);
R0: Register4 port map(clk, s0, enable, regOut0);
R1: Register4 port map(clk, s1, enable, regOut1);
Svn0: sevenSeg port map(regOut0,a1,b1,c1,d1,e1,f1,g1);
Svn1: sevenSeg port map(regOut1,a2,b2,c2,d2,e2,f2,g2);




end architecture;
