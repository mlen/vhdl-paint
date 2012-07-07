library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ps2_tx is
  port (
  clk, reset: in std_logic;             -- System clock and reset
  din: in std_logic_vector(7 downto 0); -- Input data buffer
  wr_ps2: std_logic;                    -- Transmission start signal
  ps2d_out, ps2c_out: out std_logic;    -- Clock and data output
  ps2d_in, ps2c_in: in std_logic;       -- Clock input
  tx_idle: out std_logic;               -- Idle indicator
  tx_done: out std_logic                -- Transmission done indicator
  );
end ps2_tx;

architecture behavioral of ps2_tx is
  -- State machine
  type state is (idle, rts, start, data, stop);
  signal state_reg, state_next: state;

  signal buf_reg, buf_next: std_logic_vector(8 downto 0) := "000000000"; -- data buffer
  signal counter_reg, counter_next: unsigned(3 downto 0) := "0000"; -- bits counter
  signal rtsc_reg, rtsc_next: unsigned(12 downto 0) := "0000000000000";      -- rts time counter
  signal parity: std_logic;                               -- parity bit

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
      ps2_edge <= ps2_edge(0) & ps2c_in;
    end if;
  end process;
  fall_edge <= '1' when ps2_edge(1) = '1' and ps2_edge(0) = '0' else '0';

  -- clock based state changer
  clk_process: process(clk, reset)
  begin
    if reset = '1' then
      state_reg <= idle;
      counter_reg <= (others => '0');
      rtsc_reg <= (others => '0');
      buf_reg <= (others => '0');
    elsif rising_edge(clk) then
      state_reg <= state_next;
      counter_reg <= counter_next;
      rtsc_reg <= rtsc_next;
      buf_reg <= buf_next;
    end if;
  end process;

  -- parity bit generation
  parity <= not (din(0) xor din(1) xor din(2) xor din(3) xor
                 din(4) xor din(5) xor din(6) xor din(7));


  state_machine: process(state_reg, rtsc_reg, wr_ps2, fall_edge, counter_reg, buf_reg, parity, din, ps2d_in)
  begin
    -- setting default values
    state_next <= state_reg;
    rtsc_next <= rtsc_reg;
    counter_next <= counter_reg;
    buf_next <= buf_reg;

    tx_done <= '0';
    tx_idle <= '0';
    ps2d_out <= '1'; -- initial value must be '1'
    ps2c_out <= '1'; -- initial value must be '1'

    case (state_reg) is
      -- waiting for wr_ps2
      when idle =>

        tx_idle <= '1';
        if wr_ps2 = '1' then
          state_next <= rts;
          rtsc_next <= "1001110001000";
          buf_next <= parity & din;
        end if;

      -- request to send
      when rts =>
        ps2c_out <= '0';

        if rtsc_reg = 0 then
          state_next <= start;
        else
          rtsc_next <= rtsc_reg - 1;
        end if;

      -- start bit transmission
      when start =>
        ps2d_out <= '0';

        if fall_edge = '1' then
          state_next <= data;
          counter_next <= "1000";
        end if;

      -- sending data and parity bits
      when data =>
        ps2d_out <= buf_reg(0);

        if fall_edge = '1' then
          buf_next <= '0' & buf_reg(8 downto 1);
          if counter_reg = 0 then
            state_next <= stop;
          else
            counter_next <= counter_reg - 1;
          end if;
        end if;

      -- end of transmission
      when stop =>
        if fall_edge = '1' and ps2d_in = '0' then
          state_next <= idle;
          tx_done <= '1';
        end if;

    end case;
  end process;

end behavioral;

