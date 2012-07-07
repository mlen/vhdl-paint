--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 05/09/2012 14:16:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath F:/paint/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl F:/paint/main.vhf -w F:/paint/main.sch
--Design Name: main
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( clk        : in    std_logic; 
          rst        : in    std_logic; 
          btn_l      : out   std_logic; 
          btn_m      : out   std_logic; 
          btn_r      : out   std_logic; 
          data_ready : out   std_logic; 
          x          : out   std_logic_vector (7 downto 0); 
          y          : out   std_logic_vector (7 downto 0); 
          ps2_clock  : inout std_logic; 
          ps2_data   : inout std_logic);
end main;

architecture BEHAVIORAL of main is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal XLXN_7     : std_logic;
   signal XLXN_8     : std_logic;
   signal XLXN_32    : std_logic;
   signal XLXN_34    : std_logic;
   signal XLXN_35    : std_logic;
   signal XLXN_36    : std_logic;
   signal XLXN_38    : std_logic;
   signal XLXN_49    : std_logic;
   signal XLXN_52    : std_logic;
   signal XLXN_53    : std_logic;
   signal XLXN_56    : std_logic_vector (7 downto 0);
   signal XLXN_57    : std_logic_vector (7 downto 0);
   component ps2_rx
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             ps2d    : in    std_logic; 
             ps2c    : in    std_logic; 
             rx_en   : in    std_logic; 
             rx_done : out   std_logic; 
             dout    : out   std_logic_vector (7 downto 0));
   end component;
   
   component IOBUF
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             T  : in    std_logic);
   end component;
   attribute IOSTANDARD of IOBUF : component is "DEFAULT";
   attribute SLEW of IOBUF : component is "SLOW";
   attribute DRIVE of IOBUF : component is "12";
   attribute IBUF_DELAY_VALUE of IOBUF : component is "0";
   attribute IFD_DELAY_VALUE of IOBUF : component is "AUTO";
   attribute BOX_TYPE of IOBUF : component is "BLACK_BOX";
   
   component ps2_tx
      port ( clk      : in    std_logic; 
             reset    : in    std_logic; 
             wr_ps2   : in    std_logic; 
             ps2c_in  : in    std_logic; 
             din      : in    std_logic_vector (7 downto 0); 
             ps2c_out : out   std_logic; 
             tx_idle  : out   std_logic; 
             tx_done  : out   std_logic; 
             ps2d_in  : in    std_logic; 
             ps2d_out : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component driver
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             tx_done : in    std_logic; 
             rx_done : in    std_logic; 
             rx_data : in    std_logic_vector (7 downto 0); 
             wr      : out   std_logic; 
             ready   : out   std_logic; 
             btn_l   : out   std_logic; 
             btn_m   : out   std_logic; 
             btn_r   : out   std_logic; 
             x       : out   std_logic_vector (7 downto 0); 
             y       : out   std_logic_vector (7 downto 0); 
             tx_data : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : ps2_rx
      port map (clk=>clk,
                ps2c=>XLXN_8,
                ps2d=>XLXN_7,
                reset=>rst,
                rx_en=>XLXN_34,
                dout(7 downto 0)=>XLXN_56(7 downto 0),
                rx_done=>XLXN_52);
   
   XLXI_2 : IOBUF
      port map (I=>XLXN_36,
                T=>XLXN_38,
                O=>XLXN_7,
                IO=>ps2_data);
   
   XLXI_7 : IOBUF
      port map (I=>XLXN_35,
                T=>XLXN_32,
                O=>XLXN_8,
                IO=>ps2_clock);
   
   XLXI_12 : ps2_tx
      port map (clk=>clk,
                din(7 downto 0)=>XLXN_57(7 downto 0),
                ps2c_in=>XLXN_8,
                ps2d_in=>XLXN_7,
                reset=>rst,
                wr_ps2=>XLXN_49,
                ps2c_out=>XLXN_32,
                ps2d_out=>XLXN_38,
                tx_done=>XLXN_53,
                tx_idle=>XLXN_34);
   
   XLXI_15 : GND
      port map (G=>XLXN_35);
   
   XLXI_16 : GND
      port map (G=>XLXN_36);
   
   XLXI_24 : driver
      port map (clk=>clk,
                reset=>rst,
                rx_data(7 downto 0)=>XLXN_56(7 downto 0),
                rx_done=>XLXN_52,
                tx_done=>XLXN_53,
                btn_l=>btn_l,
                btn_m=>btn_m,
                btn_r=>btn_r,
                ready=>data_ready,
                tx_data(7 downto 0)=>XLXN_57(7 downto 0),
                wr=>XLXN_49,
                x(7 downto 0)=>x(7 downto 0),
                y(7 downto 0)=>y(7 downto 0));
   
end BEHAVIORAL;


