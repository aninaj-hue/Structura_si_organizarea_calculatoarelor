--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: top_timesim.vhd
-- /___/   /\     Timestamp: Sun Mar 19 21:06:22 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf top.pcf -rpw 100 -tpw 0 -ar Structure -tm top -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim top.ncd top_timesim.vhd 
-- Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: top.ncd
-- Output file	: \\vboxsvr\proiectare_logica\AddSub4V\netgen\par\top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: top
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

entity top is
  port (
    S1A0 : in STD_LOGIC := 'X'; 
    R : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal S1A0_IBUF_0 : STD_LOGIC; 
  signal A_0_IBUF_1 : STD_LOGIC; 
  signal B_0_IBUF_2 : STD_LOGIC; 
  signal A_1_IBUF_3 : STD_LOGIC; 
  signal B_1_IBUF_4 : STD_LOGIC; 
  signal A_2_IBUF_5 : STD_LOGIC; 
  signal B_2_IBUF_6 : STD_LOGIC; 
  signal A_3_IBUF_7 : STD_LOGIC; 
  signal B_3_IBUF_8 : STD_LOGIC; 
  signal R_0_OBUF_XORF_9 : STD_LOGIC; 
  signal R_0_OBUF_CYINIT_10 : STD_LOGIC; 
  signal R_0_OBUF_CY0F_11 : STD_LOGIC; 
  signal R_0_OBUF_CYSELF_12 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal R_0_OBUF_XORG_13 : STD_LOGIC; 
  signal R_0_OBUF_CYMUXG_14 : STD_LOGIC; 
  signal XLXI_1_Madd_R_cy_0_Q : STD_LOGIC; 
  signal R_0_OBUF_CY0G_15 : STD_LOGIC; 
  signal R_0_OBUF_CYSELG_16 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal R_2_OBUF_XORF_17 : STD_LOGIC; 
  signal R_2_OBUF_CYINIT_18 : STD_LOGIC; 
  signal R_2_OBUF_CY0F_19 : STD_LOGIC; 
  signal R_2_OBUF_CYSELF_20 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal R_2_OBUF_XORG_21 : STD_LOGIC; 
  signal XLXI_1_Madd_R_cy_2_Q : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal S1A0_INBUF : STD_LOGIC; 
  signal R_0_O : STD_LOGIC; 
  signal R_1_O : STD_LOGIC; 
  signal R_2_O : STD_LOGIC; 
  signal R_3_O : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  R_0_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y0"
    )
    port map (
      I0 => R_0_OBUF_CYINIT_10,
      I1 => N5,
      O => R_0_OBUF_XORF_9
    );
  R_0_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y0"
    )
    port map (
      IA => R_0_OBUF_CY0F_11,
      IB => R_0_OBUF_CYINIT_10,
      SEL => R_0_OBUF_CYSELF_12,
      O => XLXI_1_Madd_R_cy_0_Q
    );
  R_0_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0_IBUF_0,
      O => R_0_OBUF_CYINIT_10
    );
  R_0_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_IBUF_1,
      O => R_0_OBUF_CY0F_11
    );
  R_0_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => N5,
      O => R_0_OBUF_CYSELF_12
    );
  R_0_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y0"
    )
    port map (
      I0 => XLXI_1_Madd_R_cy_0_Q,
      I1 => N6,
      O => R_0_OBUF_XORG_13
    );
  R_0_OBUF_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X14Y0"
    )
    port map (
      IA => R_0_OBUF_CY0G_15,
      IB => XLXI_1_Madd_R_cy_0_Q,
      SEL => R_0_OBUF_CYSELG_16,
      O => R_0_OBUF_CYMUXG_14
    );
  R_0_OBUF_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_IBUF_3,
      O => R_0_OBUF_CY0G_15
    );
  R_0_OBUF_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => N6,
      O => R_0_OBUF_CYSELG_16
    );
  XLXI_1_Madd_R_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X14Y0"
    )
    port map (
      ADR0 => A_1_IBUF_3,
      ADR1 => S1A0_IBUF_0,
      ADR2 => VCC,
      ADR3 => B_1_IBUF_4,
      O => N6
    );
  R_2_OBUF_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y1"
    )
    port map (
      I0 => R_2_OBUF_CYINIT_18,
      I1 => N7,
      O => R_2_OBUF_XORF_17
    );
  R_2_OBUF_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y1"
    )
    port map (
      IA => R_2_OBUF_CY0F_19,
      IB => R_2_OBUF_CYINIT_18,
      SEL => R_2_OBUF_CYSELF_20,
      O => XLXI_1_Madd_R_cy_2_Q
    );
  R_2_OBUF_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_0_OBUF_CYMUXG_14,
      O => R_2_OBUF_CYINIT_18
    );
  R_2_OBUF_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_IBUF_5,
      O => R_2_OBUF_CY0F_19
    );
  R_2_OBUF_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 757 ps
    )
    port map (
      I => N7,
      O => R_2_OBUF_CYSELF_20
    );
  R_2_OBUF_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y1"
    )
    port map (
      I0 => XLXI_1_Madd_R_cy_2_Q,
      I1 => N8,
      O => R_2_OBUF_XORG_21
    );
  XLXI_1_Madd_R_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X14Y1"
    )
    port map (
      ADR0 => A_3_IBUF_7,
      ADR1 => S1A0_IBUF_0,
      ADR2 => B_3_IBUF_8,
      ADR3 => VCC,
      O => N8
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_1
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_3
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_5
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_7
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_2
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_4
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_6
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_8
    );
  S1A0_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0,
      O => S1A0_INBUF
    );
  S1A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0_INBUF,
      O => S1A0_IBUF_0
    );
  R_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => R_0_O,
      O => R(0)
    );
  R_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => R_1_O,
      O => R(1)
    );
  R_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => R_2_O,
      O => R(2)
    );
  R_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => R_3_O,
      O => R(3)
    );
  XLXI_1_Madd_R_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X14Y0"
    )
    port map (
      ADR0 => A_0_IBUF_1,
      ADR1 => S1A0_IBUF_0,
      ADR2 => VCC,
      ADR3 => B_0_IBUF_2,
      O => N5
    );
  XLXI_1_Madd_R_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X14Y1"
    )
    port map (
      ADR0 => A_2_IBUF_5,
      ADR1 => S1A0_IBUF_0,
      ADR2 => B_2_IBUF_6,
      ADR3 => VCC,
      O => N7
    );
  R_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_0_OBUF_XORF_9,
      O => R_0_O
    );
  R_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_0_OBUF_XORG_13,
      O => R_1_O
    );
  R_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_2_OBUF_XORF_17,
      O => R_2_O
    );
  R_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_2_OBUF_XORG_21,
      O => R_3_O
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

