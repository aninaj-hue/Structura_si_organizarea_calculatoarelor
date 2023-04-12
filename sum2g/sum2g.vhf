--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : sum2g.vhf
-- /___/   /\     Timestamp : 02/24/2023 23:15:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family aspartan3 -flat -suppress -w Z:/sum2g/sum2g.sch sum2g.vhf
--Design Name: sum2g
--Device: aspartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sum2g is
   port ( a0 : in    std_logic; 
          a1 : in    std_logic; 
          b0 : in    std_logic; 
          b1 : in    std_logic; 
          c0 : in    std_logic; 
          c1 : out   std_logic; 
          c2 : out   std_logic; 
          s0 : out   std_logic; 
          s1 : out   std_logic);
end sum2g;

architecture BEHAVIORAL of sum2g is
   attribute BOX_TYPE   : string ;
   signal XLXN_9   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_14  : std_logic;
   signal c1_DUMMY : std_logic;
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   c1 <= c1_DUMMY;
   XLXI_1 : XOR3
      port map (I0=>c0,
                I1=>b0,
                I2=>a0,
                O=>s0);
   
   XLXI_2 : XOR3
      port map (I0=>c1_DUMMY,
                I1=>b1,
                I2=>a1,
                O=>s1);
   
   XLXI_3 : AND2
      port map (I0=>b0,
                I1=>a0,
                O=>XLXN_9);
   
   XLXI_4 : AND2
      port map (I0=>c0,
                I1=>a0,
                O=>XLXN_10);
   
   XLXI_5 : AND2
      port map (I0=>c0,
                I1=>b0,
                O=>XLXN_11);
   
   XLXI_6 : AND2
      port map (I0=>b1,
                I1=>a1,
                O=>XLXN_12);
   
   XLXI_7 : AND2
      port map (I0=>c1_DUMMY,
                I1=>a1,
                O=>XLXN_13);
   
   XLXI_8 : AND2
      port map (I0=>c1_DUMMY,
                I1=>b1,
                O=>XLXN_14);
   
   XLXI_9 : OR3
      port map (I0=>XLXN_14,
                I1=>XLXN_13,
                I2=>XLXN_12,
                O=>c2);
   
   XLXI_10 : OR3
      port map (I0=>XLXN_11,
                I1=>XLXN_10,
                I2=>XLXN_9,
                O=>c1_DUMMY);
   
end BEHAVIORAL;


