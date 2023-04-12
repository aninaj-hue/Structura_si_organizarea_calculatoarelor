----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:42 04/30/2022 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
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

entity ROM32x32 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM32x32;

architecture Behavioral of ROM32x32 is
 type tROM is array (0 to 31) of std_logic_vector(31 downto 0);
 constant ROM : tROM :=(
                --test
					 x"00000001", --0
					 x"00000002", --1
					 x"00000004", --2
					 x"00000008", --3
					 x"00000010", --4
					 x"00000020", --5
					 x"00000040", --6
					 x"00000080", --7
					 x"00000100", --8
					 x"00000200", --9
					 x"00000400", --10
					 ...........  --11
					 x"40000000", --30
					 x"80000000", --31
					 );

begin
Data <= ROM(conv_integer(Addr));


end Behavioral;

