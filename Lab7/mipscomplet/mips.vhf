--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : mips.vhf
-- /___/   /\     Timestamp : 05/26/2022 17:20:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w E:/LaboratoareSOC/Lab7/mipscomplet/mips.sch mips.vhf
--Design Name: mips
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mips is
   port ( Clk   : in    std_logic; 
          INW0  : in    std_logic_vector (31 downto 0); 
          INW1  : in    std_logic_vector (31 downto 0); 
          OUTW0 : out   std_logic_vector (31 downto 0));
end mips;

architecture BEHAVIORAL of mips is
   signal ALUOP   : std_logic_vector (1 downto 0);
   signal ALUSrc  : std_logic;
   signal ALU_Out : std_logic_vector (31 downto 0);
   signal Instr   : std_logic_vector (31 downto 0);
   signal MemOut  : std_logic_vector (31 downto 0);
   signal MemWr   : std_logic;
   signal Mem2Reg : std_logic;
   signal New_PC  : std_logic_vector (31 downto 0);
   signal PC      : std_logic_vector (31 downto 0);
   signal RdData1 : std_logic_vector (31 downto 0);
   signal RdData2 : std_logic_vector (31 downto 0);
   signal RegDest : std_logic;
   signal RegWr   : std_logic;
   signal WrData  : std_logic_vector (31 downto 0);
   signal WrReg   : std_logic_vector (4 downto 0);
   component ALU
      port ( RdData1 : in    std_logic_vector (31 downto 0); 
             RdData2 : in    std_logic_vector (31 downto 0); 
             FAddr   : in    std_logic_vector (15 downto 0); 
             ALUSrc  : in    std_logic; 
             ALUOP   : in    std_logic_vector (1 downto 0); 
             Y       : out   std_logic_vector (31 downto 0));
   end component;
   
   component ctrl
      port ( OP      : in    std_logic_vector (5 downto 0); 
             Funct   : in    std_logic_vector (5 downto 0); 
             ALUSrc  : out   std_logic; 
             MemWr   : out   std_logic; 
             Mem2Reg : out   std_logic; 
             RegWr   : out   std_logic; 
             RegDest : out   std_logic; 
             ALUOP   : out   std_logic_vector (1 downto 0));
   end component;
   
   component DataMem
      port ( Clk     : in    std_logic; 
             Addr    : in    std_logic_vector (4 downto 0); 
             DataIn  : in    std_logic_vector (31 downto 0); 
             DataOut : out   std_logic_vector (31 downto 0); 
             Wr      : in    std_logic; 
             INW1    : in    std_logic_vector (31 downto 0); 
             INW0    : in    std_logic_vector (31 downto 0); 
             OUTW0   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX2V32
      port ( Sel : in    std_logic; 
             Y   : out   std_logic_vector (31 downto 0); 
             I1  : in    std_logic_vector (31 downto 0); 
             I0  : in    std_logic_vector (31 downto 0));
   end component;
   
   component MUX2V5
      port ( Y   : out   std_logic_vector (4 downto 0); 
             I1  : in    std_logic_vector (4 downto 0); 
             I0  : in    std_logic_vector (4 downto 0); 
             Sel : in    std_logic);
   end component;
   
   component Pc_Update
      port ( New_Pc : out   std_logic_vector (31 downto 0); 
             Pc     : in    std_logic_vector (31 downto 0));
   end component;
   
   component ProgCnt
      port ( Clk    : in    std_logic; 
             New_Pc : in    std_logic_vector (31 downto 0); 
             Pc     : out   std_logic_vector (31 downto 0));
   end component;
   
   component File_Regs
      port ( WrReg   : in    std_logic_vector (4 downto 0); 
             WRData  : in    std_logic_vector (31 downto 0); 
             Clk     : in    std_logic; 
             WrEn    : in    std_logic; 
             RdData1 : out   std_logic_vector (31 downto 0); 
             RdData2 : out   std_logic_vector (31 downto 0); 
             RdReg1  : in    std_logic_vector (4 downto 0); 
             RdReg2  : in    std_logic_vector (4 downto 0));
   end component;
   
   component ROM32x32
      port ( Addr : in    std_logic_vector (4 downto 0); 
             Data : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   U_ALU : ALU
      port map (ALUOP(1 downto 0)=>ALUOP(1 downto 0),
                ALUSrc=>ALUSrc,
                FAddr(15 downto 0)=>Instr(15 downto 0),
                RdData1(31 downto 0)=>RdData1(31 downto 0),
                RdData2(31 downto 0)=>RdData2(31 downto 0),
                Y(31 downto 0)=>ALU_Out(31 downto 0));
   
   U_ctrl : ctrl
      port map (Funct(5 downto 0)=>Instr(5 downto 0),
                OP(5 downto 0)=>Instr(31 downto 26),
                ALUOP(1 downto 0)=>ALUOP(1 downto 0),
                ALUSrc=>ALUSrc,
                MemWr=>MemWr,
                Mem2Reg=>Mem2Reg,
                RegDest=>RegDest,
                RegWr=>RegWr);
   
   U_DataMem : DataMem
      port map (Addr(4 downto 0)=>ALU_Out(6 downto 2),
                Clk=>Clk,
                DataIn(31 downto 0)=>RdData2(31 downto 0),
                INW0(31 downto 0)=>INW0(31 downto 0),
                INW1(31 downto 0)=>INW1(31 downto 0),
                Wr=>MemWr,
                DataOut(31 downto 0)=>MemOut(31 downto 0),
                OUTW0(31 downto 0)=>OUTW0(31 downto 0));
   
   U_MuxData : MUX2V32
      port map (I0(31 downto 0)=>ALU_Out(31 downto 0),
                I1(31 downto 0)=>MemOut(31 downto 0),
                Sel=>Mem2Reg,
                Y(31 downto 0)=>WrData(31 downto 0));
   
   U_MUXRegD : MUX2V5
      port map (I0(4 downto 0)=>Instr(20 downto 16),
                I1(4 downto 0)=>Instr(15 downto 11),
                Sel=>RegDest,
                Y(4 downto 0)=>WrReg(4 downto 0));
   
   U_New_PC : Pc_Update
      port map (Pc(31 downto 0)=>PC(31 downto 0),
                New_Pc(31 downto 0)=>New_PC(31 downto 0));
   
   U_PC : ProgCnt
      port map (Clk=>Clk,
                New_Pc(31 downto 0)=>New_PC(31 downto 0),
                Pc(31 downto 0)=>PC(31 downto 0));
   
   U_Regs : File_Regs
      port map (Clk=>Clk,
                RdReg1(4 downto 0)=>Instr(25 downto 21),
                RdReg2(4 downto 0)=>Instr(20 downto 16),
                WRData(31 downto 0)=>WrData(31 downto 0),
                WrEn=>RegWr,
                WrReg(4 downto 0)=>WrReg(4 downto 0),
                RdData1(31 downto 0)=>RdData1(31 downto 0),
                RdData2(31 downto 0)=>RdData2(31 downto 0));
   
   U_ROM : ROM32x32
      port map (Addr(4 downto 0)=>PC(6 downto 2),
                Data(31 downto 0)=>Instr(31 downto 0));
   
end BEHAVIORAL;


