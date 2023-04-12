----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:36 05/04/2023
-- Design Name: 
-- Module Name:    MUX2V5 - Behavioral 
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

entity MUX2V5 is
    Port ( I0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX2V5;

architecture Behavioral of MUX2V5 is

begin
Y <= I0 when Sel='0' else
		  I1 when Sel='1' else
		  "00000";

end Behavioral;

