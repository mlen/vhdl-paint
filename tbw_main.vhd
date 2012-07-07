-- Vhdl test bench created from schematic F:\rxtx2\main.sch - Thu Apr 05 11:34:54 2012
--
-- Notes:
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the
-- stimulus for your design.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.Vcomponents.all;
entity main_main_sch_tb is
  end main_main_sch_tb;
architecture behavioral of main_main_sch_tb iS

  component main
    port( clk : in  std_logic;
          rst : in  std_logic;
          LEDS  : out std_logic_vector (7 downto 0);
          ps2_data  : inout std_logic;
          ps2_clock : inout std_logic;
          start : in  std_logic);
  end component;

  signal clk:              std_logic := '0';
  signal rst:              std_logic := '0';
  signal LEDS:             std_logic_vector(7 downto 0);
   -- domyslne wartosci, bo na ps2_clock wystawialo 'X'
  signal ps2_data:         std_logic := 'H';
  signal ps2_clock:        std_logic := 'H';
  signal start:            std_logic;
  signal ps2_clk_internal: std_logic := '1';

begin

  UUT: main port map(
                      clk => clk,
                      rst => rst,
                      LEDS => LEDS,
                      ps2_data => ps2_data,
                      ps2_clock => ps2_clock,
                      start => start
                    );

  ps2_clock <= 'H' when ps2_clk_internal = '1' else '0';
  ps2_data <= 'H', '0' after 1140 us, 'H' after 1200 us;

  clk <= not clk after 10 ns;

  start <= '0', '1' after 500 ns, '0' after 520 ns;

  process
  begin
    wait for 150 us;
    for i in 1 to 11 loop
      ps2_clk_internal <= '0';
      wait for 50 us;
      ps2_clk_internal <= '1';
      wait for 50 us;
    end loop;
    wait;
  end process;


end;

