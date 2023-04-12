--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: sum1g_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 24 22:48:40 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf sum1g.pcf -rpw 100 -tpw 0 -ar Structure -tm sum1g -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim sum1g.ncd sum1g_timesim.vhd 
-- Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: sum1g.ncd
-- Output file	: \\vboxsvr\proiectare_logica\sum1g\netgen\par\sum1g_timesim.vhd
-- # of Entities	: 1
-- Design Name	: sum1g
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity sum1g is
  port (
    Ci : in STD_LOGIC := 'X'; 
    Co : out STD_LOGIC; 
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    S : out STD_LOGIC 
  );
end sum1g;

architecture Structure of sum1g is
  signal Ci_IBUF_0 : STD_LOGIC; 
  signal A_IBUF_1 : STD_LOGIC; 
  signal B_IBUF_2 : STD_LOGIC; 
  signal Ci_INBUF : STD_LOGIC; 
  signal Co_O : STD_LOGIC; 
  signal A_INBUF : STD_LOGIC; 
  signal B_INBUF : STD_LOGIC; 
  signal S_O : STD_LOGIC; 
  signal Co_OBUF_3 : STD_LOGIC; 
  signal S_OBUF_4 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Ci_IBUF : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 757 ps
    )
    port map (
      I => Ci,
      O => Ci_INBUF
    );
  Ci_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 757 ps
    )
    port map (
      I => Ci_INBUF,
      O => Ci_IBUF_0
    );
  Co_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => Co_O,
      O => Co
    );
  A_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 757 ps
    )
    port map (
      I => A,
      O => A_INBUF
    );
  A_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_INBUF,
      O => A_IBUF_1
    );
  B_IBUF : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 757 ps
    )
    port map (
      I => B,
      O => B_INBUF
    );
  B_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_INBUF,
      O => B_IBUF_2
    );
  S_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => S_O,
      O => S
    );
  XLXI_1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X23Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_IBUF_1,
      ADR2 => Ci_IBUF_0,
      ADR3 => B_IBUF_2,
      O => S_OBUF_4
    );
  XLXI_5 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X23Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => A_IBUF_1,
      ADR2 => Ci_IBUF_0,
      ADR3 => B_IBUF_2,
      O => Co_OBUF_3
    );
  Co_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 757 ps
    )
    port map (
      I => Co_OBUF_3,
      O => Co_O
    );
  S_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 757 ps
    )
    port map (
      I => S_OBUF_4,
      O => S_O
    );
  NlwBlock_sum1g_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

