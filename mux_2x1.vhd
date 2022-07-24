library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux_2x1 is
Port ( in1 : in STD_LOGIC;
in2 : in STD_LOGIC;
sel : in STD_LOGIC;
output : out STD_LOGIC);
end mux_2x1;
architecture Behavioral of mux_2x1 is
begin
-- Output is in1 if sel = 0
-- Output is in2 if sel = 1
output <= ((not sel) and in1) or (sel and in2);
end Behavioral;
