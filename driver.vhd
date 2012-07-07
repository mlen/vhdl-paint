library ieee;
use ieee.std_logic_1164.all;

entity driver is
  port (
         clk:        in  std_logic;
         reset:      in  std_logic;
         tx_done:    in  std_logic;
         rx_done:    in  std_logic;
         rx_data:    in  std_logic_vector(7 downto 0);
         wr:         out std_logic;
         ready:      out std_logic;
         btn_l:      out std_logic;
         btn_m:      out std_logic;
         btn_r:      out std_logic;
         x:          out std_logic_vector(7 downto 0);
         y:          out std_logic_vector(7 downto 0);
         tx_data:    out std_logic_vector(7 downto 0)
       );
end driver;

architecture behavioral of driver is
  type state is (init1, init2, init3, receive1, receive2, receive3, done);
  signal state_reg, state_next: state;
  signal btn_reg, btn_next: std_logic_vector(2 downto 0);
  signal x_reg, x_next, y_reg, y_next: std_logic_vector(7 downto 0);
begin

  clk_process: process (clk, reset)
  begin
    if reset = '1' then
      state_reg <= init1;
		x_reg <= (others => '0');
		y_reg <= (others => '0');
		btn_reg <= (others => '0');
    elsif rising_edge(clk) then
      state_reg <= state_next;
		x_reg <= x_next;
		y_reg <= y_next;
		btn_reg <= btn_next;
    end if;
  end process;

  state_machine: process (rx_done, tx_done, state_reg, x_reg, y_reg, btn_reg, rx_data)
  begin
    state_next <= state_reg;
    x_next <= x_reg;
    y_next <= x_reg;
    btn_next <= btn_reg;
    wr <= '0';
    ready <= '0';

    case (state_reg) is
      when init1 =>
        tx_data <= x"F4";
        wr <= '1';
        state_next <= init2;

      -- wait for transmission to complete
      when init2 =>
        if tx_done = '1' then
          state_next <= init3;
        end if;

      -- wait for ack
      when init3 =>
        if rx_done = '1' then
          state_next <= receive1;
        end if;

      -- first byte
      when receive1 =>
        if rx_done = '1' then
          btn_next <= rx_data(2 downto 0);
          state_next <= receive2;
        end if;

      when receive2 =>
        if rx_done = '1' then
          x_next(7 downto 0) <= rx_data;
          state_next <= receive3;
        end if;

      when receive3 =>
        if rx_done = '1' then
          y_next(7 downto 0) <= rx_data;
          state_next <= done;
        end if;

      when done =>
        ready <= '1';
        state_next <= receive1;

    end case;
  end process;

  -- set signals
  x <= x_reg;
  y <= y_reg;
  btn_l <= btn_reg(0);
  btn_m <= btn_reg(2);
  btn_r <= btn_reg(1);

end behavioral;

