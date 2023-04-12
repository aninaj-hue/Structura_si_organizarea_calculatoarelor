--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : sum4.vhf
-- /___/   /\     Timestamp : 03/15/2023 23:01:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family aspartan3 -flat -suppress -w Z:/as4/sum4.sch sum4.vhf
--Design Name: sum4
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

entity sum4 is
   port ( a  : in    std_logic_vector (3 downto 0); 
          b  : in    std_logic_vector (3 downto 0); 
          Ci : in    std_logic; 
          Co : out   std_logic; 
          r  : out   std_logic_vector (3 downto 0));
end sum4;

architecture BEHAVIORAL of sum4 is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component sum1g
      port ( Ci : in    std_logic; 
             A  : in    std_logic; 
             B  : in    std_logic; 
             Co : out   std_logic; 
             S  : out   std_logic);
   end component;
   
begin
   XLXI_1 : sum1g
      port map (A=>a(3),
                B=>b(3),
                Ci=>XLXN_1,
                Co=>Co,
                S=>r(3));
   
   XLXI_2 : sum1g
      port map (A=>a(2),
                B=>b(2),
                Ci=>XLXN_2,
                Co=>XLXN_1,
                S=>r(2));
   
   XLXI_3 : sum1g
      port map (A=>a(1),
                B=>b(1),
                Ci=>XLXN_3,
                Co=>XLXN_2,
                S=>r(1));
   
   XLXI_4 : sum1g
      port map (A=>a(0),
                B=>b(0),
                Ci=>Ci,
                Co=>XLXN_3,
                S=>r(0));
   
end BEHAVIORAL;


