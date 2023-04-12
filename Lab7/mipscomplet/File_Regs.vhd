----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:40 05/21/2022 
-- Design Name: 
-- Module Name:    File_Regs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity File_Regs is
    Port ( Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC;
           RdReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RdReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WrReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WRData : in  STD_LOGIC_VECTOR (31 downto 0);
           RdData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RdData2 : out  STD_LOGIC_VECTOR (31 downto 0));
end File_Regs;

architecture Behavioral of File_Regs is
  type tRegs is array (0 to 31) of std_logic_vector (31 downto 0);
  
  signal s32Regs32 : tRegs;
  signal RdData1_1c1, RdData2_1c1 : std_logic_vector (31 downto 0);
begin

  RdData1_1c1 <= s32Regs32(conv_integer(RdReg1));
  RdData2_1c1 <= s32Regs32(conv_integer(RdReg2));
  
  s32Regs32(conv_integer(WrReg)) <= WRdata when rising_edge(Clk) and WrEn= '1';
  
  RdData1 <= "00000000000000000000000000000000" when conv_integer(RdReg1) = 0 else RdData1_1c1;
  RdData2 <= "00000000000000000000000000000000" when conv_integer(RdReg2) = 0 else RdData2_1c1;


end Behavioral;


