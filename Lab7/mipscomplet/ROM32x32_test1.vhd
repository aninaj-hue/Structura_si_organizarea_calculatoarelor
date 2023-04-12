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
					   x"8c020040", -- lw $2, 0x40($0)
						x"8c030044", -- lw $3, 0x44($0)
						x"00432020", -- add $4, $2, $3
						x"00432822", -- sub $5, $2, $3
						x"00433024", -- and $6, $2, $3
						x"00433825", -- or $7, $2, $3
						x"ac020048", -- sw $2, 0x48($0)
						x"ac030048", -- sw $3, 0x48($0)
						x"ac040048", -- sw $4, 0x48($0)
						x"ac050048", -- sw $5, 0x48($0)
						x"ac060048", -- sw $6, 0x48($0)
						x"ac070048", -- sw $7, 0x48($0)
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000"
					 );

begin
Data <= ROM(conv_integer(Addr));


end Behavioral;

