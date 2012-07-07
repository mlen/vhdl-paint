library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga is
  port (
         data:   in  std_logic;
         clk:    in  std_logic;
         rst:    in  std_logic;
         x_in:   in  std_logic_vector(7 downto 0);
         y_in:   in  std_logic_vector(7 downto 0);
         vga_hs: out std_logic;
         vga_vs: out std_logic;
         vga_c:  out std_logic_vector(2 downto 0);
         addr:   out std_logic_vector(15 downto 0)
  );
end vga;

architecture behavioral of vga is
  signal clk_25: std_logic;
  signal addr_h, addr_v: unsigned(7 downto 0);
  signal ctr_h, ctr_v, x, y: unsigned(9 downto 0);
begin
  x <= unsigned("00" & x_in) + 336;
  y <= unsigned("00" & y_in) + 151;
  addr <= std_logic_vector(addr_v) & std_logic_vector(addr_h);

  -- 25 MHz clockgen
  clk_process: process (clk, rst)
  begin
    if rst = '1' then
      clk_25 <= '0';
    elsif rising_edge(clk) then
      clk_25 <= not clk_25;
    end if;
  end process;

  display_process: process (clk_25, rst) is
  begin
    if rst = '1' then
      ctr_h <= (others => '0');
      ctr_v <= (others => '0');
      addr_h <= (others => '0');
      addr_v <= (others => '0');
    elsif rising_edge(clk_25) then
      if ctr_h >= 336  and ctr_h < 592 and ctr_v >= 151 and ctr_v < 406 then
        if (x = ctr_h and y = ctr_v) or data = '1' then
          vga_c <= (others => '1');
        else
          vga_c <= (others => '0');
        end if;
        
        -- internal address counters
        addr_h <= addr_h + 1;
        if addr_h = 255 then
          addr_h <= (others => '0');
          addr_v <= addr_v + 1;
        end if;
        
        if addr_v = 255 then
          addr_v <= (others => '0');
        end if;
        
      else
        vga_c <= (others => '0');
      end if;

      -- sync signals
      if ctr_h > 0 and ctr_h < 97 then
        vga_hs <= '0';
      else
        vga_hs <= '1';
      end if;

      if ctr_v > 0 and ctr_v < 3 then
        vga_vs <= '0';
      else
        vga_vs <= '1';
      end if;

      ctr_h <= ctr_h + 1;
      if ctr_h = 800 then
        ctr_v <= ctr_v + 1;
        ctr_h <= (others => '0');
      end if;

      if ctr_v = 521 then
        ctr_v <= (others => '0');
      end if;
    end if;
  end process;

end behavioral;

