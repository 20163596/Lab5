library ieee;
use ieee.std_logic_1164.all;
 
entity MK_LAB_5_CASE is
  port (
  --NUSTATOMI INPUTS IR OUTPUTS
    A    : in  std_logic;
	B    : in  std_logic;
	C    : in  std_logic;
    F  : out std_logic
);
end MK_LAB_5_CASE;
 
architecture rtl of MK_LAB_5_CASE is
begin
	process(A,B,C)
	begin
	--NUSTATOMAS SALYGOS ATVEJIS
		case ((A and not B ) or (not A and not C)) is
		when '1' => F <='1'; --OUTPUT SIGNALUI PRISKIRIAMOS REIKSMES PAGAL ATVEJI
		when '0' => F <='0';
		when others => null;
	    end case;
	end process;
end rtl;