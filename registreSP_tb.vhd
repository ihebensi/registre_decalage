library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity registreSP_tb is
end registreSP_tb;

architecture reg_tb of registreSP_tb is
  signal si_tb,clk_tb,rst_tb: std_logic;
  signal po_tb: std_logic_vector(0 to 31);
begin
  dff: entity work.registre port map(si_tb,rst_tb,si_tb,po_tb);
    process
      begin
        si_tb<='0';
        wait for 10 ns;
        si_tb<='1';
        wait for 30 ns;
        si_tb<='0';
        wait for 20 ns;
      end process;
    end reg_tb;