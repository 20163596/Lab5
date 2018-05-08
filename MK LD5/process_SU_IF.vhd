library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is

-- NUSTATOMI SIGNALAI
  signal r_SIG1   : std_logic := '1';
  signal r_SIG2   : std_logic := '1';
  signal r_SIG3   : std_logic := '1';
  signal w_RESULT : std_logic;

 
  component MK_LAB_5_IF is
    port (
	
--NUSTATOMI INPUTS IR OUTPUTS
      A    : in  std_logic;
      B    : in  std_logic;
      C    : in  std_logic;
      F    : out std_logic);
  end component MK_LAB_5_IF;

  
begin

  and_gate_INST : MK_LAB_5_IF
    port map (
--PRISKIRIAMI INPUTS/OUTPUTS PRIE SIGNALU
      A    => r_SIG1,
      B    => r_SIG2,
      C    => r_SIG3,
      F => w_RESULT
      );
	  
  process is
  --VISOS REIKIAMOS REIKSMES SIMULIACIJAI VYKDYTI
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    wait for 10 ns; -- 000 001 010 011; 100 101 111
    r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG2 <= '1';
    r_SIG3 <= '0';
	wait for 10 ns;
	r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
	r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG3 <= '1';
    wait for 10 ns;
	r_SIG2 <= '1';
    wait for 10 ns;
  end process;

end behave;