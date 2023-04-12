----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:47 04/30/2022 
-- Design Name: 
-- Module Name:    ProgCnt - Behavioral 
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

entity ProgCnt is
    Port ( 
	     Clk    : in  STD_LOGIC;
        New_Pc : in  STD_LOGIC_VECTOR (31 downto 0);
        Pc     : out  STD_LOGIC_VECTOR(31 downto 0):= x"0000_0000");
end ProgCnt;

architecture Behavioral of ProgCnt is

begin


end Behavioral;

