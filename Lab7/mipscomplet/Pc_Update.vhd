
-- The following code must appear before the "begin" keyword in the architecture
-- body.

					----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:50 04/30/2022 
-- Design Name: 
-- Module Name:    Pc_Update - Behavioral 
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

entity Pc_Update is
    Port ( Pc : in  STD_LOGIC_VECTOR (31 downto 0);
           New_Pc : out  STD_LOGIC_VECTOR (31 downto 0));
end Pc_Update;

architecture Behavioral of Pc_Update is

begin
	New_PC <= PC + 4;

end Behavioral;

