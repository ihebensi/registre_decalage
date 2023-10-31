library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity registre is
port(
  CLK,rest,SI: in std_logic;
  PO: out std_logic_vector(0 to 31)
);
end registre;

architecture archittt of registre is
signal TEMP,TEMP_bar: std_logic_vector(0 to 31);  
  begin
    premier: entity work.BasculeD port map (SI, CLK, TEMP(0),TEMP_bar(0));
  autres : for I in 0 to 30 generate
  boucle: entity work.BasculeD port map(TEMP(I),CLK,TEMP(I+1),TEMP_bar(0));
  end generate;
  PO <= TEMP;
end archittt; 