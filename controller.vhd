library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
  port (
         clk:       in  std_logic;
         rst:       in  std_logic;
         x_in:      in  unsigned(7 downto 0); 
         y_in:      in  unsigned(7 downto 0);
         btn_l:     in  std_logic;
         btn_r:     in  std_logic;
         mouse_rdy: in  std_logic;
         x_out:     out std_logic_vector(7 downto 0);
         y_out:     out std_logic_vector(7 downto 0);
         addr:      out std_logic_vector(15 downto 0);
         data:      out std_logic;
         wr:        out std_logic
  );
end controller;

architecture behavioral of controller is
  signal pos_x, pos_y: unsigned(7 downto 0);
begin

  mouse_process: process (clk, rst, mouse_rdy, btn_l, btn_r, pos_y, pos_y)
  begin
    if rst = '1' then
      pos_x <= (others => '0');
      pos_y <= (others => '0');
      addr <= (others => '0');
      data <= '0';
      wr <= '0';
    elsif rising_edge(clk) and mouse_rdy = '1' then
      wr <= '0';
      pos_x <= pos_x + x_in;
      pos_y <= pos_y - y_in; -- swapped
      addr <= std_logic_vector(pos_y) & std_logic_vector(pos_x);
      
      if btn_l = '1' then
        wr <= '1';
        data <= '1';
      elsif btn_r = '1' then
        wr <= '1';
        data <= '0';
      end if;
    end if;
  end process;
  
   x_out <= std_logic_vector(pos_x);
   y_out <= std_logic_vector(pos_y);
end behavioral;

