library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ps2_rx is
  port (
  clk, reset: in std_logic;              -- System clock and reset
  ps2d, ps2c: in std_logic;              -- PS/2 data and clock signals
  rx_en: in std_logic;                   -- Receiver enabled/disabled signal
  rx_done: out std_logic;                -- End of transmission signal
  dout: out std_logic_vector(7 downto 0) -- Output buffer
  );
end ps2_rx;

architecture behavioral of ps2_rx is
  -- State machine
  type state is (idle, busy, done);
  signal state_reg, state_next: state;

  -- Counter from 9 to 0 - 4 bits should be enough
  signal counter_reg, counter_next: unsigned(3 downto 0);

  -- Data buffer
  signal buf_reg, buf_next: std_logic_vector(10 downto 0);

  -- Falling edge detector signals
  signal fall_edge: std_logic;
  signal ps2_edge: std_logic_vector(1 downto 0);
begin

  -- falling edge detector using shift buffer
  edge_detector: process(clk, reset)
  begin
    if reset = '1' then
      ps2_edge <= (others => '0');
    elsif rising_edge(clk) then
      ps2_edge <= ps2_edge(0) & ps2c;
    end if;
  end process;
  fall_edge <= '1' when ps2_edge(1) = '1' and ps2_edge(0) = '0' else '0';

  -- clock based state changer
  clk_process: process(clk, reset)
  begin
    if reset = '1' then
      state_reg <= idle;
      buf_reg <= (others => '0');
      counter_reg <= (others => '0');
    elsif rising_edge(clk) then
      state_reg <= state_next;
      buf_reg <= buf_next;
      counter_reg <= counter_next;
    end if;
  end process;

  state_machine: process(state_reg, fall_edge, rx_en, ps2d, buf_reg, counter_reg)
  begin
    -- setting default values
    state_next <= state_reg;
    buf_next <= buf_reg;
    counter_next <= counter_reg;
    rx_done <= '0';

    case (state_reg) is
      -- waiting for falling edge and start bit
      when idle =>
        if rx_en = '1' and fall_edge = '1' and ps2d = '0' then
          state_next <= busy;
          counter_next <= "1001"; -- 9 bits to go

          -- loading bits into buffer
          buf_next <= ps2d & buf_reg(10 downto 1);
        end if;

      -- receiving bits
      when busy =>
        if fall_edge = '1' then
          -- loading bits into buffer
          buf_next <= ps2d & buf_reg(10 downto 1);

          -- simple counter
          if counter_reg = 0 then
            state_next <= done;
          else
            counter_next <= counter_reg - 1;
          end if;
        end if;

      -- end of transmission
      when done =>
        state_next <= idle;
        rx_done <= '1';

    end case;
  end process;

  dout <= buf_reg(8 downto 1); -- output from shift register
end behavioral;

