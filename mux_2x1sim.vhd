library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux_2x1sim is
--port();
end mux_2x1sim;

architecture Behavioral of mux_2x1sim is
COMPONENT mux_2x1
Port ( in1 : in STD_LOGIC;
in2 : in STD_LOGIC;
sel : in STD_LOGIC;
output : out STD_LOGIC);
END COMPONENT;

--Inputs
signal in1 : std_logic := '0';
signal in2 : std_logic := '0';
signal sel : std_logic := '0';
--Outputs
signal output : std_logic;
begin

uut: mux_2x1 PORT MAP(
in1 => in1,
in2 => in2,
sel => sel,
output => output);
stim_proc: process

begin
in1<='1'; in2<='0';
sel<='0'; wait for 100 ns;
sel<='1'; wait for 100 ns;
in1<='0'; in2<='1';
sel<='0'; wait for 100 ns;
sel<='1'; wait for 100 ns;
end process;

end Behavioral;
