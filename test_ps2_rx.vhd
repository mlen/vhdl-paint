library ieee;
use ieee.std_logic_1164.all;

entity ps2_rx_test is
  end ps2_rx_test;

architecture behavior of ps2_rx_test is

  component ps2_rx
    port
    (
      clk:     IN std_logic;
      reset:   IN  std_logic;
      ps2d:    IN  std_logic;
      ps2c:    IN  std_logic;
      rx_en:   IN  std_logic;
      rx_done: OUT std_logic;
      dout:    OUT std_logic_vector(7 downto 0)
    );
  end component;


  -- Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal ps2d : std_logic := '0';
  signal ps2c : std_logic := '0';
  signal rx_en : std_logic := '1';

  -- Outputs
  signal rx_done : std_logic;
  signal dout : std_logic_vector(7 downto 0);

  -- Clock period definitions
  constant clk_period : time := 10 ns;


  signal data : std_logic_vector(7 downto 0) := x"00";


begin

  -- Instantiate the Unit Under Test (UUT)
  uut: ps2_rx port map (
                         clk => clk,
                         reset => reset,
                         ps2d => ps2d,
                         ps2c => ps2c,
                         rx_en => rx_en,
                         rx_done => rx_done,
                         dout => dout
                       );

  -- Clock process definitions
  clk_process: process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  process
    procedure TransmPS2( Byte : std_logic_vector( 7 downto 0 ) ) is
      variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0';
    begin
      for i in 0 to 7 loop
        Frame( 9 ) := Frame( 9 ) xor Byte( i );
      end loop;
      for i in 0 to 10 loop
        ps2d <= Frame( i );
        wait for 5 us;
        ps2c <= '1', '0' after 50 us;
        wait for 95 us;
      end loop;
    end procedure;
  begin
    wait for 15 us;
    TransmPS2( X"F0" );
    wait for 200 us;
    TransmPS2( X"81" ); --- 1000 0001
    wait for 200 us;
    TransmPS2( X"AA" ); --- 1010 1010
    wait; -- will wait forever
  end process;


  process (rx_done)
  begin
    if rising_edge(rx_done) then
      data <= dout;
    end if;
  end process;

end;

