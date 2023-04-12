--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: sum2g_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 24 23:26:06 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf sum2g.pcf -rpw 100 -tpw 0 -ar Structure -tm sum2g -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim sum2g.ncd sum2g_timesim.vhd 
-- Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: sum2g.ncd
-- Output file	: \\vboxsvr\proiectare_logica\sum2g\netgen\par\sum2g_timesim.vhd
-- # of Entities	: 1
-- Design Name	: sum2g
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

entity sum2g is
  port (
    s0 : out STD_LOGIC; 
    s1 : out STD_LOGIC; 
    a0 : in STD_LOGIC := 'X'; 
    a1 : in STD_LOGIC := 'X'; 
    b0 : in STD_LOGIC := 'X'; 
    b1 : in STD_LOGIC := 'X'; 
    c0 : in STD_LOGIC := 'X'; 
    c1 : out STD_LOGIC; 
    c2 : out STD_LOGIC 
  );
end sum2g;

architecture Structure of sum2g is
  signal a0_IBUF_0 : STD_LOGIC; 
  signal a1_IBUF_1 : STD_LOGIC; 
  signal b0_IBUF_2 : STD_LOGIC; 
  signal b1_IBUF_3 : STD_LOGIC; 
  signal c0_IBUF_4 : STD_LOGIC; 
  signal c1_OBUF_5 : STD_LOGIC; 
  signal a0_INBUF : STD_LOGIC; 
  signal a1_INBUF : STD_LOGIC; 
  signal b0_INBUF : STD_LOGIC; 
  signal b1_INBUF : STD_LOGIC; 
  signal c0_INBUF : STD_LOGIC; 
  signal c1_O : STD_LOGIC; 
  signal c2_O : STD_LOGIC; 
  signal s0_O : STD_LOGIC; 
  signal s1_O : STD_LOGIC; 
  signal s0_OBUF_6 : STD_LOGIC; 
  signal c2_OBUF_7 : STD_LOGIC; 
  signal s1_OBUF_8 : STD_LOGIC; 
  signal c1_OBUF_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  a0_IBUF : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => a0,
      O => a0_INBUF
    );
  a0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => a0_INBUF,
      O => a0_IBUF_0
    );
  a1_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => a1,
      O => a1_INBUF
    );
  a1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => a1_INBUF,
      O => a1_IBUF_1
    );
  b0_IBUF : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 757 ps
    )
    port map (
      I => b0,
      O => b0_INBUF
    );
  b0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 757 ps
    )
    port map (
      I => b0_INBUF,
      O => b0_IBUF_2
    );
  b1_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 757 ps
    )
    port map (
      I => b1,
      O => b1_INBUF
    );
  b1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 757 ps
    )
    port map (
      I => b1_INBUF,
      O => b1_IBUF_3
    );
  c0_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => c0,
      O => c0_INBUF
    );
  c0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => c0_INBUF,
      O => c0_IBUF_4
    );
  c1_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => c1_O,
      O => c1
    );
  c2_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => c2_O,
      O => c2
    );
  s0_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => s0_O,
      O => s0
    );
  s1_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => s1_O,
      O => s1
    );
  XLXI_1 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X22Y11"
    )
    port map (
      ADR0 => b0_IBUF_2,
      ADR1 => a0_IBUF_0,
      ADR2 => c0_IBUF_4,
      ADR3 => VCC,
      O => s0_OBUF_6
    );
  XLXI_9 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X15Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => b1_IBUF_3,
      ADR2 => c1_OBUF_5,
      ADR3 => a1_IBUF_1,
      O => c2_OBUF_7
    );
  s1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => c1_OBUF_pack_1,
      O => c1_OBUF_5
    );
  XLXI_10 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X22Y10"
    )
    port map (
      ADR0 => b0_IBUF_2,
      ADR1 => a0_IBUF_0,
      ADR2 => c0_IBUF_4,
      ADR3 => VCC,
      O => c1_OBUF_pack_1
    );
  XLXI_2 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X22Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a1_IBUF_1,
      ADR2 => b1_IBUF_3,
      ADR3 => c1_OBUF_5,
      O => s1_OBUF_8
    );
  c1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => c1_OBUF_5,
      O => c1_O
    );
  c2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => c2_OBUF_7,
      O => c2_O
    );
  s0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => s0_OBUF_6,
      O => s0_O
    );
  s1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => s1_OBUF_8,
      O => s1_O
    );
  NlwBlock_sum2g_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

