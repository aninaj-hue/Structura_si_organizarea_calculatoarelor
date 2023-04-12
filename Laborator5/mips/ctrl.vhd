----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:37:42 05/04/2023
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUSrc : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin
--1 ADD
	ALUSrc <= '0' when (OP = b"00_0000" and Funct = "100000") or 
	(OP = b"00_0000" and Funct = "100010") 
	or (OP = b"00_0000" and Funct = "100100") 
	or (OP = b"00_0000" and Funct = "100101") else
	'1';
	

	ALUOP <= "00" when (OP = b"00_0000" and Funct = "100000") or (OP = b"10_0011") or (OP = b"10_1011") else
	"01" when OP = b"00_0000" and Funct = "100010" else
	"10" when OP = b"00_0000" and Funct = "100100" else
	"11" when OP = b"00_0000" and Funct = "100101";
	
	MemWr <= '0' when (OP = b"00_0000" and Funct = "100000") or 
	(OP = b"00_0000" and Funct = "100010") or
	(OP = b"00_0000" and Funct = "100100") or
	(OP = b"00_0000" and Funct = "100101") or
	(OP = b"10_0011") else
	'1';
	
	Mem2Reg <= '0' when (OP = b"00_0000" and Funct = "100000") or
	(OP = b"00_0000" and Funct = "100010") or
	(OP = b"00_0000" and Funct = "100100") or
	(OP = b"00_0000" and Funct = "100101") or
	(OP = b"10_1011") else
	'1';
	
	
	RegWr <= '1' when (OP = b"00_0000" and Funct = "100000") or
	(OP = b"00_0000" and Funct = "100010") or
	(OP = b"00_0000" and Funct = "100100") or
	(OP = b"00_0000" and Funct = "100101") or
	(OP = b"10_0011") else
	 '0';


end Behavioral;

